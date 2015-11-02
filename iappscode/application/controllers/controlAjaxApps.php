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
?>