<?php
class controlUsers{
	public $_model;
	private $_ip;
	private $_admin;
	private $_user;
	public function __construct(){
		include_once('config/configUser.php');
		$this->_model = new modelUsers;
		$this->_ip = $this->_model->_changeDauNhay($_SERVER['REMOTE_ADDR']);
		
		if(isset($_SESSION['user'.CONS_KEY])) $this->_user = $_SESSION['user'.CONS_KEY];
		if(isset($_SESSION['admin'.CONS_KEY])) $this->_admin = $_SESSION['admin'.CONS_KEY];
	}
	
	public function user_account($user, $pass, $group){
		$data = $this->_model->_check_user_login($user, $pass, $group);
		if(count($data)==1){
			$row = $data[0];
			$arr = array(
				'id' => $row['id'],
				'name' => $row['name'],
				'username' => $row['username'],
				'email' => $row['email'],
				'expiration' => $row['date_expiration'],
			);
			$_SESSION['user'.CONS_KEY] = $arr;
			$this->_user = $_SESSION['user'.CONS_KEY];
			return true;
		}else return false;
	}
	
	public function admin_user($user, $pass, $group){
		$data = $this->_model->_check_admin_login($user, $pass, $group);
		if(count($data)==1){
			$row = $data[0];
			$arr = array(
				'id' => $row['id'],
				'name' => $row['name'],
				'username' => $row['username'],
			);
			$_SESSION['admin'.CONS_KEY] = $arr;
			$this->_admin = $_SESSION['admin'.CONS_KEY];
			return true;
		}else return false;
	}
	
	public function login($user, $pass, $group){
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
				if($group==3){//quan tri
					$data = $this->admin_user($user, $pass, $group);
				}else{
					$data = $this->user_account($user, $pass, $group);
				}
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
		session_unset('admin'.CONS_KEY);
		session_unset('adminRuleView');
		session_unset('adminRuleAction');
		header("location: ".CONS_BASE_URL.'/'.CONS_LINK_ADMIN.'/');
		return true;
	}
	
	public function logout_user($link){
		session_unset('user'.CONS_KEY);
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
			$user = $this->_admin['user'];
			$group = 3;
			$result = $this->_model->_check_admin_login($user, $password, $group);
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
		$id = $this->_user['id'];
		$email = $this->_user['email'];
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
		$id = $this->_user['id'];
		$email = $this->_user['email'];
		$oldPass = $this->_model->_changeDauNhay($_POST['oldPass']);
		$newPass = $this->_model->_changeDauNhay($_POST['newPass']);
		$group=1;
		if($oldPass!='' && $newPass!=''){
			$data = $this->_model->_check_user_login($email, $oldPass, $group);
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