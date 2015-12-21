<?php 
class modelDB{
	public $db;
	public function __construct(){
		$this->db = new mysqli(CONS_HOST, CONS_USER_DB, CONS_PASS_DB, CONS_NAME_DB);
		if($this->db->connect_errno) die($this->db->connect_error ); 	
		$this->db->set_charset("utf8");
	}
	
	public function _checkEmail($str){
		$str = trim($str);
		$str = strtolower($str);
		$pattern = '/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$/';
		if(preg_match($pattern, $str)) return $str;
		else return false;
	}
	
	public function _checksText($str,$lengh=0){
		$str = trim($str);
		if($str!='' && strlen($str)>=$lengh) return $str;
		else return false;
	}
	
	public function _checksNumber($str){
		$str = trim($str);
		if(is_numeric($str)) return $str;
		else return false;
	}
	
	public function _checksPhone($str){
		$str = trim($str);
		$pattern = '/^[{0,(,+}][0-9-+()\.\s]{9,18}$/';
		if(preg_match($pattern, $str)) return $str;
		else return false;
	}
	
	public function _removeTag($str){
		$str = strip_tags($str,"");
		$str = trim($str);
		return $str;
	}
	
	public function _changeDauNhay($str, $type=1){
		$str = str_replace("'", '&#39;', $str);
		$str = str_replace('\\', '&#92;', $str);
		if($type==1){
			$str = str_replace('"', '&quot;', $str);
			$str = str_replace('<', '&lt;', $str);
			$str = str_replace('>', '&gt;', $str);
		}
		$str = trim($str);
		return $str;
	}
	
	public function _removeDauNhay($str){
		$str = str_replace("'", '', $str);
		$str = str_replace('"', '', $str);
		$str = str_replace('&', '', $str);
		$str = str_replace('<', '', $str);
		$str = str_replace('>', '', $str);
		$str = str_replace('\\', '', $str);
		$str = trim($str);
		return $str;
	}
	
	public function _randString($length){
		$str = '';
		$chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'; 
		$size = strlen($chars); 
		for($i=0; $i<$length; $i++) { 
			$str .= $chars[rand(0, $size - 1)]; 
		} 
		return $str; 
	} 
	
	public function _viewDateTime($time){
        return date("m-d-Y H:i", $time); 
	}
	
	public function _viewDate($time){
        return date("m-d-Y", $time); 
	}
	
	public function _print($data){
		echo '<pre>';
		print_r($data);
		echo '</pre>';
        return true; 
	}
	
	public function _changeAlias($alias){
		if(!$alias) return false;
		$str = $alias;
		$unicode = array(
			'a'=>'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
			'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
			'd'=>'đ',
			'D'=>'Đ',
			'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
			'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
			'i'=>'í|ì|ỉ|ĩ|ị',	  
			'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
			'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
			'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
			'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
			'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
			'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
			'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
			'' =>"`|~|!|@|#|$|%|^|&|*|(|)|-|_|+|=|\|[|]|{|}|:|;|\"|'|,|.|/|<|>|?|“|”|  ",
			'-'=>"| "
		);
		foreach($unicode as $khongdau=>$codau) {
			$arr=explode("|",$codau);
			$str = str_replace($arr,$khongdau,$str);
			$str = str_replace('|','',$str);
			$str = trim($str,'-');
		}
		return strtolower($str);
	}
	
	/*thuc thi sql*/
	public function _select($arr){
		if(!isset($arr['select']) || !isset($arr['from'])) return false;
		
		if(!is_array($arr['select'])) $select="{$arr['select']}";
		else{
			$select='';
			$arrSelect = $arr['select'];
			for($i=0; $i<count($arrSelect); $i++) $select .= "{$arrSelect[$i]}, ";
			$select = trim($select, ', ');
		}
		
		if(!is_array($arr['from'])) $from="{$arr['from']}";
		else{
			$from='';
			$arrFrom = $arr['from'];
			for($i=0; $i<count($arrFrom); $i++) $from .= "{$arrFrom[$i]}, ";
			$from = trim($from, ', ');
		}
		
		if(isset($arr['where']) && !is_array($arr['where'])){
			$where = trim($arr['where'], 'AND');
			$where="WHERE {$where}";
		}else if(isset($arr['where']) && is_array($arr['where'])){
			$where=''; $arrWhere = $arr['where'];
			foreach($arrWhere as $key => $value){
				$logic='AND';
				$compare='=';
				if(preg_match("/^OR_/", $key)){
					$logic='OR';
					$key=str_replace('OR_', '', $key);
				}
				if(preg_match("/LIKE_/", $key)){
					$compare=' LIKE ';
					$key=str_replace('LIKE_', '', $key);
					$value="%{$value}%";
				}
				$where .= "{$logic} {$key}{$compare}'{$value}' ";
			}
			$where = trim($where, 'AND');
			$where = trim($where, 'OR');
			$where = "WHERE {$where}";
		}else $where='';
		if(trim($where)=='WHERE') $where='';
		
		if(isset($arr['order'])){
			if(!is_array($arr['order'])) $order="ORDER BY {$arr['order']}";
			else{
				$order='';
				$arrOrder = $arr['order'];
				for($i=0; $i<count($arrOrder); $i++) $order .= "{$arrSelect[$i]}, ";
				$order = 'ORDER BY '.trim($order, ', ');
			}
		}else $order='';
		
		if(isset($arr['limit'])){
			if(!is_array($arr['limit'])) $limit="LIMIT {$arr['limit']}";
			else if(count($arr['limit'])==1) $limit="LIMIT {$arr['limit'][0]}";
			else $limit="LIMIT {$arr['limit'][0]}, {$arr['limit'][1]}";
		}else $limit='';
		
		$sql = "SELECT {$select} FROM {$from} {$where} {$order} {$limit}";
		//echo "<p>SQL: {$sql}</p>";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _select2($arr){
		if(!isset($arr['select']) || !isset($arr['from'])) return false;
		
		if(!is_array($arr['select'])) $select="{$arr['select']}";
		else{
			$select='';
			$arrSelect = $arr['select'];
			for($i=0; $i<count($arrSelect); $i++) $select .= "{$arrSelect[$i]}, ";
			$select = trim($select, ', ');
		}
		
		if(!is_array($arr['from'])) $from="{$arr['from']}";
		else{
			$from='';
			$arrFrom = $arr['from'];
			for($i=0; $i<count($arrFrom); $i++) $from .= "{$arrFrom[$i]}, ";
			$from = trim($from, ', ');
		}
		
		if(isset($arr['where']) && !is_array($arr['where'])){
			$where = trim($arr['where'], 'AND');
			$where="WHERE {$where}";
		}else if(isset($arr['where']) && is_array($arr['where'])){
			$where=''; $arrWhere = $arr['where'];
			foreach($arrWhere as $key => $value){
				$logic='AND';
				$compare='=';
				if(preg_match("/^OR_/", $key)){
					$logic='OR';
					$key=str_replace('OR_', '', $key);
				}
				if(preg_match("/LIKE_/", $key)){
					$compare=' LIKE ';
					$key=str_replace('LIKE_', '', $key);
					$value="%{$value}%";
				}
				$where .= "{$logic} {$key}{$compare}'{$value}' ";
			}
			$where = trim($where, 'AND');
			$where = trim($where, 'OR');
			$where = "WHERE {$where}";
		}else $where='';
		if(trim($where)=='WHERE') $where='';
		
		if(isset($arr['order'])){
			if(!is_array($arr['order'])) $order="ORDER BY {$arr['order']}";
			else{
				$order='';
				$arrOrder = $arr['order'];
				for($i=0; $i<count($arrOrder); $i++) $order .= "{$arrSelect[$i]}, ";
				$order = 'ORDER BY '.trim($order, ', ');
			}
		}else $order='';
		
		if(isset($arr['limit'])){
			if(!is_array($arr['limit'])) $limit="LIMIT {$arr['limit']}";
			else if(count($arr['limit'])==1) $limit="LIMIT {$arr['limit'][0]}";
			else $limit="LIMIT {$arr['limit'][0]}, {$arr['limit'][1]}";
		}else $limit='';
		
		$sql = "SELECT {$select} FROM {$from} {$where} {$order} {$limit}";
		return $sql;
	}
	public function _create($table, $fields, $values){
		$str_field='';
		$str_value='';
		$total=count($fields);
		for($i=0; $i<$total; $i++){
			if(!preg_match("/date/", $fields[$i]) && !preg_match("/^reject/", $fields[$i])){
				if(!preg_match("/^ckeditor_/", $fields[$i])){
					$type=1;
					$str_field .= "`{$fields[$i]}`,";
				}else{
					$type=0;
					$str_field .= '`'.str_replace('ckeditor_', '', $fields[$i]).'`,';
				}
				$str_value .= "'".$this->_changeDauNhay($values[$i], $type)."',";
			}else if(preg_match("/date/", $fields[$i])){
				$str_field .= "`{$fields[$i]}`,";
				$str_value .= "'".strtotime($values[$i])."',";
			}
		}
		$str_field = trim($str_field, ',');
		$str_value = trim($str_value, ',');
		$str = "INSERT INTO `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		return $str;
	}
	public function _update($table, $fields, $values, $id){
		$str='';
		$total = count($fields);
		for($i=0; $i<$total; $i++){
			if(!preg_match("/date/", $fields[$i]) && !preg_match("/^reject/", $fields[$i])){
				if(!preg_match("/^ckeditor_/", $fields[$i])){
					$type=1;
					$str .= "`{$fields[$i]}`='".$this->_changeDauNhay($values[$i], $type)."',";
				}else{
					$type=0;
					$str .= "`".str_replace('ckeditor_', '', $fields[$i])."`='".$this->_changeDauNhay($values[$i], $type)."',";
				}
			}else if(preg_match("/date/", $fields[$i])){
				$str .= "`{$fields[$i]}`='".strtotime($values[$i])."',";
			}
		}
		$str = trim($str,',');
		$str = "UPDATE `{$table}` SET {$str} WHERE `id`='{$id}' LIMIT 1";
		return $str;
	}
	public function _getSql($type, $table, $fields, $values, $id=NULL){
		$backup = new modelBackupRestore;
		if($type=='create'){
			$content='';
			$sql = $this->_create($table, $fields, $values);
		}elseif($type=='update'){
			$content = $backup->_backupData($id, $name, $table);
			$sql = $this->_update($table, $fields, $values, $id);
		}else return FALSE;
		
		if(!$this->db->query($sql)){
			die($this->db->error);
			return FALSE;
		}else{
			if($type=='create'){
				$id = $this->db->insert_id;
				$backup->_backupData($id, $name, $table);
			}
			$backup->_insertWebLog($name, $type, $table, $id, $_SESSION['adminUser'], $content, $_SESSION['adminLang']);
			return $id;
		}
	}
	/*end thuc thi sql*/
}