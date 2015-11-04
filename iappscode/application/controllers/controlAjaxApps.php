<?php
if(isset($_POST['appsLogin'])){
	$email = $_POST['username'];
	$pass = $_POST['password'];
	if(strlen($email)<10 || strlen($pass)<6){
		echo 'Lỗi: Vui lòng thử lại.';
		return false;
	}
	
	$group = 2;
	$cU = new controlUsers;
	$data = $cU->login($email, $pass, $group);
	echo $data;
	return true;
}

if(isset($_POST['appsRegister'])){
	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$pass = $_POST['pass'];
	if(strlen($name)<2 || strlen($phone)<9 || strlen($address)<5 || strlen($email)<6 || strlen($pass)<6){
		echo 'Lỗi: Vui lòng thử lại.';
		return false;
	}
	
	$cU = new controlUsers;
	$check = $cU->_model->_checkUserEmail($email);
	if($check==0)
		$cU->register($name, $phone, $address, $email, $pass);
	else
		echo 'Email này đã tồn tại';
	return true;
}

/*phan ajax user*/
if(isset($_SESSION['userID']) && isset($_SESSION['userExpiration'])){
	$userID = $_SESSION['userID'];
	$userName = $_SESSION['userName'];
	$userEmail = $_SESSION['userEmail'];
	$userExpiration = $_SESSION['userExpiration'];
	
	$mApps = new modelApps;
	
	if(isset($_POST['appsUser'])){
		$type = $c->_model->_removeDauNhay($_POST['appsUser']);
		$id = $c->_model->_removeDauNhay($_POST['id']);
		$name = $c->_model->_removeDauNhay($_POST['name']);
		$email = $c->_model->_removeDauNhay($_POST['email']);
		$gender = $c->_model->_removeDauNhay($_POST['gender']);
		$birthday = $c->_model->_removeDauNhay($_POST['birthday']);
		$birthday = explode('/', $birthday);
		$birthday = "{$birthday[2]}-{$birthday[0]}-{$birthday[1]}";
		$birthday = strtotime($birthday);
		
		if($id=='' || $name=='' || $email=='' || $birthday=='' || $type!=1){ echo 'Error data'; return false; }
		
		$check = $mApps->_checksAppsUserManager($userID, $id);
		if(count($check)==0){
			$data = $mApps->_insertAppsUserManager($userID, $id, $name, $email, $gender, $birthday, $type);
		}
		return true;
	}
	
	if(isset($_POST['appsUserFanpage'])){
		$type = $c->_model->_removeDauNhay($_POST['appsUserFanpage']);
		$id = $c->_model->_removeDauNhay($_POST['id']);
		if($id=='' || $type!=2){ echo 'Error data'; return false; }
		
		$check = $mApps->_checksAppsUserManager($userID, $id);
		if(count($check)==0){
			$data = $mApps->_insertAppsUserFanpage($userID, $id, $type);
		}else{
			echo 'Error permission';
		}
		return true;
	}
	
	if(isset($_POST['appsFeedFollow'])){
		$id = $c->_model->_removeDauNhay($_POST['appsFeedFollow']);
		if(strlen($id) < 15) { echo 'Error data'; return false; }
		$check = $mApps->_checksAppsFeedFollow($userID, $id);
		if(count($check)==0){
			$mApps->_insertAppsFeedFollow($userID, $id);
			echo 'Đã thêm vào thành công';
		}else{
			echo 'Bạn đã theo dõi bài viết này.';
		}
		return true;
	}
}
/*end phan ajax user*/
?>