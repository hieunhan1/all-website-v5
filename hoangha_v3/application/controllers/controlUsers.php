<?php
class controlUsers{
	public $_model;
	public $_ip;
	public function __construct(){
		include_once('config/configUser.php');
		$this->_model = new modelUsers;
		$this->_ip = $this->_model->_changeDauNhay($_SERVER['REMOTE_ADDR']);
	}
	
	public function user_account($user, $pass){
		$data = $this->_model->_check_user_login($user, $pass);
		if(count($data)==1){
			$row = $data[0];
			$_SESSION['userID'] = $row['id'];
			$_SESSION['userName'] = $row['name'];
			$_SESSION['userAccount'] = $row['username'];
			$_SESSION['userEmail'] = $row['email'];
			$_SESSION['userExpiration'] = $row['date_expiration'];
			return true;
		}else return false;
	}
	
	public function admin_user($user, $pass){
		$data = $this->_model->_check_admin_login($user, $pass);
		if(count($data)==1){
			$row = $data[0];
			$_SESSION['adminID'] = $row['id'];
			$_SESSION['adminName'] = $row['name'];
			$_SESSION['adminUser'] = $row['username'];
			$_SESSION['adminType'] = $row['page'];
			$_SESSION['adminGroup'] = $row['group_id'];
			return true;
		}else return false;
	}
	
	public function login($user, $pass){
		$currentDatetime = time();
		$user = $this->_model->_changeDauNhay(strtolower($user));
		$pass = $this->_model->_changeDauNhay($pass);
		if($user!='' && $pass!=''){
			$check_ip = $this->_model->_check_lock_ip($this->_ip);
			if(count($check_ip)==0){
				$login_number=0; $disable_date=0;
			}else{
				$login_number = $check_ip[0]['login_number'];
				$disable_date = $check_ip[0]['disable_date'];
			}
			settype($login_number, 'int');
			if($disable_date<$currentDatetime){
				$data = $this->admin_user($user, $pass); //quan tri
				
				if($data==true){
					if($login_number!=0){
						$login_number=1;
						$this->_model->_lock_ip($this->_ip, $login_number, $currentDatetime);
					}
					return true;
				}else{
					if($login_number>=CONS_NUMBER_LOGIN) $login_number=5;
					$this->_model->_lock_ip($this->_ip, $login_number, $currentDatetime);
					return CONS_MESSAGE_USER_PASS_ERROR;
				}
			}else{
				return CONS_MESSAGE_LOCK_IP;
			}
		}else{
			return 'Error';
		}
	}
	
	public function logout_admin(){
		session_unset('adminID');
		session_unset('adminName');
		session_unset('adminUser');
		session_unset('adminRuleView');
		session_unset('adminRuleAction');
		header("location: ".CONS_BASE_URL.'/'.CONS_LINK_ADMIN.'/');
		return true;
	}
	
	public function logout_user($link){
		session_unset('userID');
		session_unset('userName');
		session_unset('userAccount');
		session_unset('userEmail');
		session_unset('userExpiration');
		header("location: ".$link);
		return true;
	}
	
	public function changePassword(){
		$error='';
		$password = $this->_model->_changeDauNhay($_POST['password']);
		$password_new = $this->_model->_changeDauNhay($_POST['password_new']);
		$password_repeat = $this->_model->_changeDauNhay($_POST['password_repeat']);
		if($password=='' || $password_new=='' || $password_repeat=='') return false;
		if($password_new!=$password_repeat) $error.=CONS_MESSAGE_CHANGE_PASS_1;
		if( strlen($password_new) > 32 ) $error.=CONS_MESSAGE_CHANGE_PASS_2;
		if( strlen($password_new) < 6 ) $error.=CONS_MESSAGE_CHANGE_PASS_3;   
		
		//Mat khau kho
		//if( !preg_match("#[0-9]+#", $password_new) ) $error.=CONS_MESSAGE_CHANGE_PASS_4;  
		//if( !preg_match("#[a-z]+#", $password_new) ) $error.=CONS_MESSAGE_CHANGE_PASS_5;   
		//if( !preg_match("#[A-Z]+#", $password_new) ) $error.=CONS_MESSAGE_CHANGE_PASS_6;
		
		if($error!=''){
			return '<p class="adError">'.CONS_MESSAGE_CHANGE_PASS_7.'</p> <p class="adError">'.$error.'</p>';
		}else{
			$user=$_SESSION['adminUser'];
			$result = $this->_model->_check_admin_login($user, $password);
			if(count($result)!=1){
				return '<p class="adError">'.CONS_MESSAGE_CHANGE_PASS_8.'</p>';
			}else{
				$this->_model->_changePassword($user, $password_new);
				return '<p class="adMessage">'.CONS_MESSAGE_CHANGE_PASS_9.'</p>';
			}
		}
	}
	
	public function resetPassword(){
		$id_user_reset = $_GET['id_u'];
		settype($id_user_reset,"int");
		$pass_default = CONS_ADMIN_PASSWORD_DEFAULT;
		if($this->_user=='admin') $this->_model->_reset_password($id_user_reset, $pass_default);
		else return FALSE;
	}
	
	public function userChangeInfomation(){
		$id = $_SESSION['userID'];
		$email = $_SESSION['userEmail'];
		$name = $this->_model->_changeDauNhay($_POST['name']);
		$phone = $this->_model->_checksPhone($_POST['phone']);
		if($phone==false) $phone='';
		
		if($_POST['month']!='' && $_POST['day']!='' && $_POST['year']!=''){
			if($_POST['month']>0 && $_POST['month']<=12) $month=$_POST['month']; else return false;
			if($_POST['day']>0 && $_POST['day']<=31) $day=$_POST['day']; else return false;
			if($_POST['year']>1900 && $_POST['year']<date('Y')) $year=$_POST['year']; else return false;
			$birthday = $year.'-'.$month.'-'.$day;//"{$year}-{$month}-{$day}";
			$birthday = strtotime($birthday);
		}else $birthday=0;
		
		if($_POST['gender']==0 || $_POST['gender']==1) $gender=$_POST['gender']; else $gender=2;
		$address = $this->_model->_changeDauNhay($_POST['address']);
		
		$this->_model->_updateUserInfomation($id, $email, $name, $phone, $birthday, $gender, $address);
		return true;
	}
	public function userChangePassowrd(){
		$id = $_SESSION['userID'];
		$email = $_SESSION['userEmail'];
		$oldPass = $this->_model->_changeDauNhay($_POST['oldPass']);
		$newPass = $this->_model->_changeDauNhay($_POST['newPass']);
		if($oldPass!='' && $newPass!=''){
			$data = $this->_model->_check_user_login($email, $oldPass);
			if(count($data)==1){
				$this->_model->_updateUserPassword($id, $email, $newPass);
				return true;
			}else return 'Incorrect password';
		}else return 'Error';
	}
	
	public function register($name, $phone, $address, $email, $pass){
		$name = $this->_model->_changeDauNhay($name);
		$phone = $this->_model->_changeDauNhay($phone);
		$address = $this->_model->_changeDauNhay($address);
		$email = $this->_model->_changeDauNhay($email);
		$pass = $this->_model->_changeDauNhay($pass);
		$pass = md5($pass);
		$expiration = time() + 30*24*60*60;
		$status = 1;
		$group = 2;
		$this->_model->_insertUserRegister($name, $phone, $address, $email, $pass, $expiration, $status, $group);
		return true;
	}
}