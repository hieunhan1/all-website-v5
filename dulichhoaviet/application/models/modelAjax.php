<?php
class modelAjax extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _deleteOne($table, $id){
		$backup = new modelBackupRestore;
		$content = $backup->_backupData($id, $name, $table);
		$backup->_insertWebLog($name, 'delete', $table, $id, $_SESSION['adminUser'], $content, $_SESSION['adminLang']);
		
		$sql = "DELETE FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		$this->db->query($sql);
		return true;
	}
	
	public function _ajaxNumberItem($table, $where=NULL){
		$sql = "SELECT count(*) FROM `{$table}` WHERE `status`=0 ".$where;
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	
	public function _checkAliasHeader($alias, $id){
		$sql = "SELECT count(*) FROM `web_header` WHERE `name_alias`='{$alias}' AND `id`<>'{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	
	public function _checksIpAddress($ipAddress, $datetime='', $limit=10){
		if($datetime!='') $datetime="AND `datetime`>='{$datetime}'";
		$sql = "SELECT `datetime` FROM `web_ip_address` WHERE `ip_address`='{$ipAddress}' {$datetime} ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _insertIpAddress($ipAddress){
		$datetime = time();
		$sql = "INSERT INTO `web_ip_address` (`ip_address`, `datetime`) VALUES ('{$ipAddress}', '{$datetime}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
	}
	
	public function _viewDetail($table, $id, $ipAddress=NULL){
		if($ipAddress!=NULL) $ipAddress="AND `ip_address`='{$ipAddress}'";
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' {$ipAddress} LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _updateStatus($table, $id){
		$sql = "UPDATE `{$table}` SET `status`=1 WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	/*xu ly web_picture*/
	public function _checksWebPicture($img){
		$sql = "SELECT `id`, `_table`, `table_id` FROM `web_picture` WHERE `img`='{$img}' LIMIT 1 ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _updateImgTable($table, $id){
		$sql = "UPDATE `{$table}` SET `img`='' WHERE `id`='{$id}' LIMIT 1 ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _deleteImgTable($id){
		$sql = "DELETE FROM `web_picture` WHERE `id`='{$id}' LIMIT 1";
		$this->db->query($sql);
		return true;
	}
	/*end xu ly web_picture*/
	
	public function _menuTypeOne($data){
		if(is_numeric($data)) $data=" AND `id`='{$data}' "; else $data=" AND `type`='{$data}' ";
		$sql = "SELECT * FROM `web_type` WHERE `status`=1 {$data} LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _webHeaderID($id){
		$sql = "SELECT * FROM `web_header` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _webContentID($id){
		$sql = "SELECT * FROM `web_content` WHERE `header_id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _checksUsersRole($users_id, $admin_id){
		$sql = "SELECT `id` FROM `web_users_role` WHERE `users_id`='{$users_id}' AND `admin_id`='{$admin_id}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _typeEvent($type){
		$sql = "SELECT * FROM `web_event_form` WHERE `type_id`='{$type}' AND `status`=1 LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	/*entry test*/
	public function _entrytestList($menu_id){
		$sql = "SELECT * FROM `web_entrytest` WHERE `status`=1 AND `menu_id` LIKE '%,{$menu_id},%' ORDER BY `_order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _checkEntryTestUser($menu_id, $table, $table_date, $entrytest_id=NULL){
		if($entrytest_id!=NULL) $entrytest_id = "AND `entrytest_id`='{$entrytest_id}'";
		$sql = "SELECT * FROM `web_entrytest_user` WHERE `menu_id`='{$menu_id}' AND `_table`='{$table}' AND `table_date`='{$table_date}' {$entrytest_id}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[$row['entrytest_id']] = $row;
		return $data;
	}
	
	public function _insertEntryTestUser($menu_id, $table, $table_date, $entrytest_id, $answers){
		$datetime = time();
		$sql = "INSERT INTO `web_entrytest_user` (`menu_id`, `_table`, `table_date`, `entrytest_id`, `answers`, `datetime`) VALUES ('{$menu_id}', '{$table}', '{$table_date}', '{$entrytest_id}', '{$answers}', '{$datetime}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
	}
	
	public function _parent($menu_id){
		$sql = "SELECT `id`, `name` FROM `web_header` WHERE `status`=1 AND `parent`='{$menu_id}' ORDER BY `_order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end entry test*/
}
?>