<?php
class modelApps extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
}
?>