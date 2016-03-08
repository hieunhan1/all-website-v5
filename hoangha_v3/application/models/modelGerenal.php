<?php
class modelGerenal extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE `status`=1 AND `lang`='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _language($lang){
		$sql = "SELECT * FROM `web_language` WHERE `status`=1 AND `code`='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _language_var($lang){
		$sql = "SELECT * FROM `web_language_var` WHERE `status`=1 AND `lang`='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name']] = $row['value'];
		}
		return $data;
	}
	
	public function _listTagsKeyword($lang){
		$sql = "SELECT * FROM `web_tags` WHERE `status`=1 AND `lang`='{$lang}' ORDER BY `_order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _web_picture($table, $table_id=NULL, $order=NULL, $limit=NULL){
		if($table_id!=NULL) $table_id="AND `table_id`='{$table_id}'";
		if($order==NULL) $order="`_order`, `datetime` DESC";
		if($limit!=NULL) $limit="LIMIT {$limit}";
		$sql = "SELECT * FROM `web_picture` WHERE `_table`='{$table}' {$table_id} ORDER BY {$order} {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _content($header_id){
		$sql = "SELECT * FROM `web_content` WHERE `header_id`='{$header_id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	/*web_header*/
	public function _listWebType(){
		$sql = "SELECT * FROM `web_type` WHERE `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['id']] = $row;
		}
		return $data;
	}
	public function _headerData($arr){
		$str = '';
		if(isset($arr['lang'])) $str.=" AND `lang`='{$arr['lang']}'";
		if(isset($arr['parent'])) $str.=" AND `parent`='{$arr['parent']}'";
		if(isset($arr['properties'])) $str.=" AND `properties`='{$arr['properties']}'";
		if(isset($arr['type_id'])) $str.=" AND `type_id`='{$arr['type_id']}'";
		if(isset($arr['position_id'])) $str.=" AND `position_id` LIKE '%,{$arr['position_id']},%'";
		if(isset($arr['menu_id'])) $str.=" AND `menu_id` LIKE '%,{$arr['menu_id']},%'";
		if(isset($arr['where'])) $str.=$arr['where'];
		if(isset($arr['order'])) $str.=" ORDER BY {$arr['order']}";
		if(isset($arr['limit'])){
			if(count($arr['limit'])==1) $str.=" LIMIT {$arr['limit']}";
			else $str.=" LIMIT {$arr['limit'][0]}, {$arr['limit'][1]}";
		}
		if(!isset($arr['select'])) $select='*'; else $select=$arr['select'];
		
		$sql = "SELECT {$select} FROM `web_header` WHERE `status`=1 {$str}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _headerIDAlias($data){
		if(!is_numeric($data)) $data="`name_alias`='{$data}'"; else $data="`id`='{$data}'";
		$sql = "SELECT * FROM `web_header` WHERE `status`=1 AND {$data} LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _headerRoot($parent, $arr=NULL){
		if($arr==NULL) $arr=array();
		$row = $this->_headerIDAlias($parent);
		$arr[] = array(
			'id'=>$row['id'],
			'name'=>$row['name'],
			'name_alias'=>$row['name_alias'],
			'url'=>$row['url'],
			'title'=>$row['title'],
		);
		if($row['parent']==0) return array_reverse($arr);
		return $this->_headerRoot($row['parent'], $arr);
	}
	/*end web_header*/
	
	/*other*/
	public function _listOpening($menu_id=NULL, $header_id=NULL){
		$where='';
		if($menu_id!=NULL) $where.=" AND `menu_id` LIKE '%,{$menu_id},%' ";
		if($header_id!=NULL) $where.=" AND `header_id`='{$header_id}' ";
		$datetime = time();
		$where.=" AND `date_opening`>'{$datetime}' ";
		$sql = "SELECT * FROM `web_opening` WHERE `status`=1 {$where} ORDER BY `_order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end other*/
}
?>