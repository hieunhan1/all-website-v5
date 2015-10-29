<?php
class modelAdmin extends modelDB{
	/*navigator menuAdmin languages*/
	public function _listLanguages(){
		$sql = "SELECT `id`, `name`, `code` FROM `web_language` WHERE `status`=1 ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _listAdmin(){
		$sql = "SELECT * FROM `web_admin` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _navigator($url){
		$sql = "SELECT * FROM `web_admin` WHERE `status`=1 AND `url`='{$url}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	/*end navigator menuAdmin languages*/
	
	/*view detail, list table*/
	public function _listTable($table, $order=NULL){
		if($order==NULL) $order="ORDER BY `name`"; else $order="ORDER BY {$order}";
		$sql = "SELECT `id`, `name` FROM `{$table}` WHERE `status`=1 {$order}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[$row['id']] = $row;
		return $data;
	}
	public function _viewEditDetail($table, $id){
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _viewWebContent($id){
		$sql = "SELECT * FROM `web_content` WHERE `header_id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _selectFieldTable($table, $where, $order, &$totalRows, $startRow, $perPage){	
		$sql = "SELECT * FROM `{$table}` WHERE {$where} ORDER BY {$order} LIMIT {$startRow}, {$perPage}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(`id`) FROM {$table} WHERE {$where}";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalRows = $row[0];
		return $data;
	}
	/*end view detail, list table*/
	
	/*thuc thi sql*/
	public function _create($table, $fields, $values){
		$str_field='';
		$str_value='';
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			if(!preg_match("/date/", $fields[$i])){
				$str_field .= "`{$fields[$i]}`,";
				$type=1;
				if($fields[$i]=='content') $type=0;
				if($fields[$i]=='more') $type=0;
				$str_value .= "'".$this->_changeDauNhay($values[$i], $type)."',";
			}else{
				$str_field .= "`{$fields[$i]}`,";
				$str_value .= "'".strtotime($values[$i])."',";
			}
		}
		$str_field = trim($str_field,',');
		$str_value = trim($str_value,',');
		$str = "INSERT INTO `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		return $str;
	}
	public function _update($table, $fields, $values, $id){
		$str='';
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			if(!preg_match("/date/", $fields[$i])){
				$type=1;
				if($fields[$i]=='content') $type=0;
				if($fields[$i]=='more') $type=0;
				$str .= "`{$fields[$i]}`='".$this->_changeDauNhay($values[$i], $type)."',";
			}else $str .= "`{$fields[$i]}`='".strtotime($values[$i])."',";
		}
		$str = trim($str,',');
		$str = "UPDATE `{$table}` SET {$str} WHERE `id`='{$id}' ";
		return $str;
	}
	public function _getSql($type, $table, $fields, $values, $id=NULL){
		$backup = new modelBackupRestore;
		if($type==1){
			$content='';
			$action = 'create';
			$sql = $this->_create($table, $fields, $values);
		}elseif($type==2){
			$content = $backup->_backupData($id, $name, $table);
			$action = 'update';
			$sql = $this->_update($table, $fields, $values, $id);
		}else return FALSE;
		
		if(!$this->db->query($sql)){
			die($this->db->error);
			return FALSE;
		}else{
			if($type==1){
				$id = $this->db->insert_id;
				$backup->_backupData($id, $name, $table);
			}
			$backup->_insertWebLog($name, $action, $table, $_SESSION['adminUser'], $content, $_SESSION['adminLang']);
			return $id;
		}
	}
	/*end thuc thi sql*/
	
	/*web_menu*/
	public function _menuList($parent, $style, $arr, $where=''){
		if(!$arr) $arr = array();
		$sql = "SELECT `id`, `name`, `name_alias`, `url`, `order`, `status` FROM `web_header`
		WHERE `properties`=1 AND `parent`='{$parent}' {$where} ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		while($row = $result->fetch_assoc()){
			$arr[] = array(
				'id'=>$row['id'],
				'name'=>$style.$row['name'],
				'name_alias'=>$row['name_alias'],
				'url'=>$row['url'],
				'order'=>$style.$row['order'],
				'status'=>$row['status'],
			);
			$arr = $this->_menuList($row['id'], $style.'-- ', $arr, $where);
		}
		return $arr;
	}
	
	public function _webPositionList($type){
		$sql = "SELECT * FROM `web_position` WHERE `status`=1 AND `type`='{$type}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _webTypeList($other=''){
		if($other!='') $other="AND `other`='{$other}'"; else $other='';
		$sql = "SELECT `id`, `name`, `type`, `url_img`, `url_img_thumb` FROM `web_type` WHERE `status`=1 {$other} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[$row['id']] = $row;
		return $data;
	}
	/*end web_menu*/
	
	/*function*/
	/*end function*/
}