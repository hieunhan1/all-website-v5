<?php
class modelBackupRestore extends modelDB{
	/*web_log
	Fields & values:	fields%%%values
	Giá trị field:		,
	Giá trị nội dung:	%%%
	*/
	public function _backupData($id, &$name, $table){
		if($table=='web_content') return false;
		$str_keys='';
		$str_values='';
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		if(count($row) > 0){
			if(isset($row['name'])) $name=$row['name']; else $name='';
			$row_keys = array_keys($row);
			$row_values = array_values($row);
			for($i=0; $i<count($row_keys); $i++){
				$str_keys .= "{$row_keys[$i]},";
				$str_values .= "{$row_values[$i]}%%%";
			}
			$str_keys = trim($str_keys,',');
			$str_values = trim($str_values,'%%%');
		}
		return $str_keys.'fields%%%values'.$str_values;
	}
	public function _insertWebLog($name, $action, $table, $table_id, $user, $content, $lang){
		$arr = array(
			'web_content',
			'web_picture',
			'mn_contract_customer',
		);
		if( in_array($table, $arr ) ) return false;
		
		$time = time();
		$sql = "INSERT INTO `web_logs` (`name`, `action`, `_table`, `table_id`, `datetime`, `username`, `content`, `lang`, `status`) VALUES ('{$name}', '{$action}', '{$table}', '{$table_id}', '{$time}', '{$user}', '{$content}', '{$lang}', '0')";
		$this->db->query($sql);
		return true;
	}
	
	public function _restoreData($id){
		$sql = "SELECT `action`, `_table`, `content` FROM `web_logs` WHERE `id`='{$id}' LIMIT 1";
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
			$str_sql = "INSERT INTO `{$row['_table']}` ({$str_keys}) VALUES ({$str_values})";
		}elseif($row['action']=='update'){
			$str_set='';
			for($i=0; $i<count($data_keys); $i++){
				if($data_keys[$i]!='id') $str_set .= "`{$data_keys[$i]}`='{$data_values[$i]}',";
				else $id_restore = $data_values[$i];
			}
			$str_set = trim($str_set, ',');
			$str_sql = "UPDATE `{$row['_table']}` SET {$str_set} WHERE `id`='{$id_restore}'";
		}else return false;
		
		if(!$this->db->query($str_sql)) die($this->db->error);
		else{
			$sql = "UPDATE `web_logs` SET `status`=1, `date_restore`='".time()."', `user_restore`='".$_SESSION['adminUser']."' WHERE id='{$id}' ";
			$this->db->query($sql);
			return true;
		}
	}
	
	public function _clearLogs($numberDate=90){
		include_once('config/configUpload.php');
		
		$dateCurrent = time();
		$dateClear = $numberDate*24*60*60;
		$datetime = $dateCurrent-$dateClear;
		
		$sql = "SELECT * FROM `web_logs` WHERE `datetime`<'{$datetime}' ";
		$dataLogs = $this->db->query($sql);
		while($row = $dataLogs->fetch_assoc()){
			$sql = "DELETE FROM `web_logs` WHERE `id`='{$row['id']}'";
			$this->db->query($sql);
			
			if($row['action']=='delete' && $row['status']==0){
				$table = $row['_table'];
				$table_id = $row['table_id'];
				
				//delete web_picture
				$sql = "SELECT * FROM `web_picture` WHERE `_table`='{$table}' AND `table_id`='{$table_id}' LIMIT 1";
				$result = $this->db->query($sql);
				$data = $result->fetch_assoc();
				if(count($data) > 0){
					$sql = "DELETE FROM `web_picture` WHERE `id`='{$data['id']}' LIMIT 1";
					$this->db->query($sql);
					
					$urlImage = IMAGE_UPLOAD_URL.$data['img'];
					$urlImageThumb = IMAGE_UPLOAD_URL_THUMB.$data['img'];
					if(file_exists($urlImageThumb)) unlink($urlImageThumb);
					if(file_exists($urlImage)) unlink($urlImage);
				}
				
				//delete web_content
				if($row['_table']=='web_header'){
					$sql = "SELECT * FROM `web_content` WHERE `header_id`='{$table_id}' LIMIT 1";

					$result = $this->db->query($sql);
					$data = $result->fetch_assoc();
					if(count($data) > 0){
						$sql = "DELETE FROM `web_content` WHERE `id`='{$data['id']}' LIMIT 1";
						$this->db->query($sql);
					}
				}
			}
		}
		
		return true;
	}
}