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
		$pattern = '/^[{0,(,+}][0-9-+()\.\s]{8,18}$/';
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
}