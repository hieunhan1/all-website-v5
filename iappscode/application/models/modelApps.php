<?php
class modelApps extends modelDB{
	public function _checksAppsUserManager($user_id, $fb_id=NULL){
		if($fb_id!=NULL) $fb_id="AND `fb_id`='{$fb_id}'";
		$sql = "SELECT * FROM `apps_user_manager` WHERE `user_id`='{$user_id}' {$fb_id}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _insertAppsUserManager($userID, $id, $name, $email, $gender, $birthday, $type){
		$sql = "INSERT INTO `apps_user_manager` (`fb_id`, `user_id`, `type`) VALUES ('{$id}', '{$userID}', '{$type}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		$sql = "INSERT INTO `apps_fb_user` (`id`, `name`, `email`, `gender`, `date_birthday`, `datetime`) VALUES ('{$id}', '{$name}', '{$email}', '{$gender}', '{$birthday}', '".time()."')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _insertAppsUserFanpage($userID, $id, $type){
		$sql = "INSERT INTO `apps_user_manager` (`fb_id`, `user_id`, `type`) VALUES ('{$id}', '{$userID}', '{$type}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _checksAppsFeedFollow($user_id, $feed_id){
		$sql = "SELECT * FROM `apps_fb_feed` WHERE `user_id`='{$user_id}' AND `feed_id`='{$feed_id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _insertAppsFeedFollow($userID, $feed_id){
		$sql = "INSERT INTO `apps_fb_feed` (`feed_id`, `user_id`) VALUES ('{$feed_id}', '{$userID}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _viewAppsFeedFollow($user){
		$sql = "SELECT `feed_id` FROM `apps_fb_feed` WHERE `user_id`='{$user}' ORDER BY `id` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[]=$row;
		return $data;
	}
	
}
?>