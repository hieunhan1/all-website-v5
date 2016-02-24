<?php
class modelUsers extends modelDB{
	public function _check_lock_ip($ip_address){
		$sql = "SELECT `id`, `login_number`, `disable_date` FROM `web_users_lock_ip` WHERE `ip_address`='{$ip_address}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _check_admin_login($user, $pass){
		$pass = md5($pass);
		$sql = "SELECT `id`,`name`,`username`,`page`,`group_id` FROM `web_users` WHERE `username`='{$user}' AND `password`='{$pass}' AND `status`=1 LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _check_user_login($user, $pass){
		$pass = md5($pass);
		$user = $this->_checkEmail($user);
		if($user==false) $user="AND `username`='{$user}'";
		else $user="AND `email`='{$user}'";
		$sql = "SELECT `id`, `name`, `email`, `username`, `date_expiration` FROM `web_users` WHERE `status`=1 AND `password`='{$pass}' {$user}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _lock_ip($ip_address, $login_number, $datetime){
		if($login_number==0){
			$sql = "INSERT INTO `web_users_lock_ip` (`ip_address`,`login_number`,`disable_date`,`datetime`) VALUES ('{$ip_address}', '1', '0', '{$datetime}')";
		}else{
			$login_number += 1;
			if($login_number<CONS_NUMBER_LOGIN){
				$disable_date = 0;
			}else{
				$disable_date = $datetime + CONS_DISABLE_DATE;
			}
			$sql = "UPDATE `web_users_lock_ip` SET `login_number`='{$login_number}', `disable_date`='{$disable_date}', `datetime`='{$datetime}' WHERE `ip_address`='{$ip_address}'";
		}
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _updateUserInfomation($id, $email, $name, $phone, $birthday, $gender, $address){
		$sql = "UPDATE `web_users` SET `name`='{$name}', `phone`='{$phone}', `birthday`='{$birthday}', `gender`='{$gender}', `address`='{$address}' WHERE `status`=1 AND `id`='{$id}' AND `email`='{$email}'";
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _updateUserPassword($id, $email, $pass){
		$pass=md5($pass);
		$sql = "UPDATE `web_users` SET `password`='{$pass}' WHERE `status`=1 AND `id`='{$id}' AND `email`='{$email}'";
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _changePassword($u, $p){
		$p = md5($p);
		$sql = "UPDATE `web_users` SET `password`='{$p}' WHERE `username`='{$u}' ";
		$this->db->query($sql);
		return TRUE;
	}
	
	/*reset pass*/
	public function _checksUserEmail($email){
		$sql = "SELECT `id`, `name`, `email` FROM `web_users` WHERE `status`=1 AND `email`='{$email}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _checksResetEmail($email){
		$sql = "SELECT * FROM `web_users_reset` WHERE `status`=0 AND `email`='{$email}' ORDER BY `id` DESC LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _insertResetEmail($name, $email, $ip_address, $key, $datetime){
		$sql = "INSERT INTO `web_users_reset` (`name`, `email`, `ip_address`, `_key`, `datetime`, `status`) VALUES ('{$name}', '{$email}', '{$ip_address}', '{$key}', '{$datetime}', '0')";
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _keyResetPass($key, $email){
		$sql = "SELECT * FROM `web_users_reset` WHERE `email`='{$email}' AND `_key`='{$key}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _updateResetPassword($email, $key){
		$sql = "UPDATE `web_users_reset` SET `status`=1 WHERE `email`='{$email}' AND `_key`='{$key}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	public function _resetPassword($email, $pass){
		$pass = md5($pass);
		$sql = "UPDATE `web_users` SET `password`='{$pass}' WHERE `email`='{$email}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	/*end reset pass*/
	
	/*list Role*/
	public function _listRole($user_id){
		$sql = "SELECT `action_view`, `action_create`, `action_edit`, `action_delete`, `admin_id` FROM `web_users_role` WHERE `status`=1 AND `users_id`='{$user_id}' ORDER BY `admin_id`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['admin_id']] = array(
				'view'=>$row['action_view'],
				'create'=>$row['action_create'],
				'edit'=>$row['action_edit'],
				'delete'=>$row['action_delete'],
			);
		}
		return $data;
	}
	/*end list Role*/
	
	/*register*/
	public function _checkUserEmail($data){
		$email = $this->_checkEmail($data);
		if($email!=false) $data = "`email`='{$email}'";
		else{
			$data = strtolower(trim($data));
			$data = "`username`='{$data}'";
		}
		$sql = "SELECT count(`id`) FROM `web_users` WHERE {$data} LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	
	public function _insertUserRegister($name, $phone, $address, $email, $pass, $expiration, $status, $group){
		$datetime = time();
		$sql = "INSERT INTO `web_users` (`name`, `address`, `phone`, `email`, `password`, `date_expiration`, `datetime`, `status`, `group_id`) VALUES ( '{$name}', '{$address}', '{$phone}', '{$email}', '{$pass}', '{$expiration}', '{$datetime}', '{$status}', '{$group}' )";
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	/*end register*/
}
?>