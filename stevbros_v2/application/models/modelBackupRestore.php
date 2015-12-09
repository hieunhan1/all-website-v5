<?php
class modelBackupRestore extends modelDB{
	/*web_log
	Fields & values:	fields%%%values
	Giá trị field:		,
	Giá trị nội dung:	%%%
	*/
	public function _backupData($id, &$name, $table){
		if($table=='web_content') return false;
		
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		if(isset($row['name'])) $name=$row['name']; else $name='';
		$str_keys=''; $str_values='';
		$row_keys = array_keys($row);
		$row_values = array_values($row);
		for($i=0; $i<count($row_keys); $i++){
			$str_keys .= "{$row_keys[$i]},";
			$str_values .= "{$row_values[$i]}%%%";
		}
		$str_keys = trim($str_keys,',');
		$str_values = trim($str_values,'%%%');
		return $str_keys.'fields%%%values'.$str_values;
	}
	public function _insertWebLog($name, $action, $table, $user, $content, $lang){
		if($table=='web_content') return false;
		
		$time = time();
		$sql = "INSERT INTO `web_logs` (`name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`) VALUES ('{$name}', '{$action}', '{$table}', '{$time}', '{$user}', '{$content}', '{$lang}', '0')";
		$this->db->query($sql);
		return true;
	}
	public function _restoreData($id){
		$sql = "SELECT `action`, `table`, `content` FROM `web_logs` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		$data = explode('fields%%%values', $row['content']);
		$data_keys = explode(',', $data[0]);
		$data_values = explode('%%%', $data[1]);
		if($row['action']=='delete'){
			$str_keys=''; $str_values='';
			for($i=0; $i<count($data_keys); $i++){
				$str_keys .= "`{$data_keys[$i]}`,";
				$str_values .= "'{$data_values[$i]}',";
			}
			$str_keys = trim($str_keys, ','); $str_values = trim($str_values, ',');
			$str_sql = "INSERT INTO `{$row['table']}` ({$str_keys}) VALUES ({$str_values})";
		}elseif($row['action']=='update'){
			$str_set='';
			for($i=0; $i<count($data_keys); $i++){
				if($data_keys[$i]!='`id`') $str_set .= "{$data_keys[$i]}='{$data_values[$i]}',";
				else $id_restore = $data_values[$i];
			}
			$str_set = trim($str_set, ',');
			$str_sql = "UPDATE `{$row['table']}` SET {$str_set} WHERE `id`='{$id_restore}'";
		}else return false;
		
		if(!$this->db->query($str_sql)) die($this->db->error);
		else{
			$sql = "UPDATE `web_logs` SET `status`=1, `date_restore`='".time()."', `user_restore`='".$_SESSION['adminUser']."' WHERE id='{$id}' ";
			$this->db->query($sql);
			return true;
		}
	}
	
	public function _webHeader(){
		$arr = array(
			'table'=>'web_header',
			'noSelect'=>" NOT (`table`='web_header' AND `action`='delete' AND `status`=0) ",
			'select'=>" `table`='web_header' AND `action`='delete' AND `status`=0 ",
		);
		return $arr;
	}
	public function _clearHeaderContentImages($data){
		if($data['properties']==1) $type=CONS_TYPE_ID_MENU; else $type=$data['type_id'];
		$sql = "SELECT * FROM `web_type` WHERE `status`=1 AND `id`='{$type}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$urlImg = $result->fetch_assoc();
		$image = '../'.$urlImg['url_img'];
		$imageThumb = '../'.$urlImg['url_img_thumb'];
		if($data['img']!=''){
			if(file_exists($imageThumb.$data['img'])) unlink($imageThumb.$data['img']);
			if(file_exists($image.$data['img'])) unlink($image.$data['img']);
		}
		
		$ajax = new modelAjax;
		$data = $ajax->_webContentID($data['id']);
		$arrImg = explode(',', $data['arr_img']);
		for($i=0; $i<count($arrImg)-1; $i++){
			if(file_exists($imageThumb.$arrImg[$i])) unlink($imageThumb.$arrImg[$i]);
			if(file_exists($image.$arrImg[$i])) unlink($image.$arrImg[$i]);
		}
		$ajax->_deleteOne('web_content', $data['id']);
		return true;
	}
	
	public function _clearLogs($numberDate=90){
		$dateCurrent = time();
		$dateClear = $numberDate*24*60*60;
		$datetime = $dateCurrent-$dateClear;
		
		$webHeader = $this->_webHeader();
		
		$where=" `datetime`<'{$datetime}' AND ";
		$where.=$webHeader['noSelect'];
		$where=trim($where, ' AND');
		$sql = "DELETE FROM `web_logs` WHERE {$where}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		//end clearLogs
		
		$where=" `datetime`<'{$datetime}' AND ";
		$where.=$webHeader['select'];
		$where=trim($where, ' AND');
		$sql = "SELECT * FROM `web_logs` WHERE ".$where;
		if(!$result = $this->db->query($sql)) die($this->db->error);
		while($row = $result->fetch_assoc()){
			$data = explode('fields%%%values', $row['content']);
			$data_keys = explode(',', $data[0]);
			$data_values = explode('%%%', $data[1]);
			
			$arrData = array();
			for($i=0; $i<count($data_keys); $i++)
				$arrData[$data_keys[$i]] = $data_values[$i];
			$this->_clearHeaderContentImages($arrData);
			$sql = "DELETE FROM `web_logs` WHERE `id`='{$row['id']}'";
			if(!$this->db->query($sql)) die($this->db->error);
		}
		return true;
	}
}