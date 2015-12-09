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
	public function _listAdmin($type=1){
		$sql = "SELECT * FROM `web_admin` WHERE `status`=1 AND `type`='{$type}' ORDER BY `order`";
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
	public function _listTable($table, $order=NULL, $where=NULL){
		if($order==NULL) $order="ORDER BY `name`"; else $order="ORDER BY {$order}";
		$sql = "SELECT `id`, `name` FROM `{$table}` WHERE `status`=1 {$where} {$order}";
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
	/*end view detail, list table*/
	
	/*web_menu*/
	public function _menuList($parent, $style, $arr, $where=''){	
		if(!$arr) $arr = array();
		$sql = "SELECT * FROM `web_header` WHERE `parent`='{$parent}' {$where} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		while($row = $result->fetch_assoc()){
			$arr[] = array(
				'id'=>$row['id'],
				'name'=>$style.$row['name'],
				'name_alias'=>$row['name_alias'],
				'url'=>$row['url'],
				'img'=>$row['img'],
				'tags'=>$row['tags'],
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