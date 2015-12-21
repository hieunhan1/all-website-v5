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
	
	public function _ajaxNumberItem($table){
		$sql = "SELECT count(*) FROM `{$table}` WHERE `status`=0";
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
	
	public function _checksIpAddress($table, $ipAddress){
		$sql = "SELECT `datetime` FROM `{$table}` WHERE `ip_address`='{$ipAddress}' ORDER BY `datetime` DESC LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
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
	
	/*new*/
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
}
?>