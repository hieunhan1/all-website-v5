<?php
class pageAjax{
	public $_lang;
	public $_model;
	public function __construct(){
		$this->_model = new modelAjax;
		$this->_lang = $this->language();
	}
	public function language(){
		if(!isset($_REQUEST['lang']))
			return CONS_DEFAULT_LANG;
		else
			return $_REQUEST['lang'];
	}
	
	public function checkRole($role){
		$adminRole = $_SESSION['adminRole'];
		$pageAdmin = $_SESSION['currentPageAdmin'];
		$check = $adminRole[$pageAdmin][$role];
		if($check==1) return true;
		else return false;
	}
	
	public function exportError($arr){
		$str='';
		if(!isset($arr[0])){
			$fields = array_keys($arr);
			$values = array_values($arr);
			for($i=0; $i<count($fields); $i++){
				$str.='"'.$fields[$i].'":"'.$values[$i].'", ';
			}
			$str = rtrim($str, ', ');
			$str = '{'.$str.'}';
		}else{
			foreach($arr as $row){
				$str2='';
				$fields = array_keys($row);
				$values = array_values($row);
				for($i=0; $i<count($fields); $i++){
					$str2.='"'.$fields[$i].'":"'.$values[$i].'", ';
				}
				$str2=rtrim($str2, ', ');
				$str.='{'.$str2.'}, ';
			}
			$str = rtrim($str, ', ');
			$str = '['.$str.']';
		}
		return $str;
	}
	
	public function createEditData($table, $method='POST'){
		if(!isset($_REQUEST['id']) || $_REQUEST['id']==0 || $_REQUEST['id']==''){
			if($this->checkRole('create')==false) return false;
			$id=0;
			$type = 'create';
		}else{
			if($this->checkRole('edit')==false) return false;
			$id=$_REQUEST['id']; settype($id, 'int');
			if($id==0) return false;
			$type = 'update';
		}
		
		if($method=='POST'){
			$fields = array_keys($_POST);
			$values = array_values($_POST);
		}else if($method=='GET'){
			$fields = array_keys($_GET);
			$values = array_values($_GET);
		}
		$result = $this->_model->_getSql($type, $table, $fields, $values, $id);
		
		if($result==false) echo $result;
		return $result;
	}
	
	public function createEditDataUser($table, $method='POST'){
		$id=0;
		$type = 'create';
		
		if($method=='POST'){
			$fields = array_keys($_POST);
			$values = array_values($_POST);
		}else if($method=='GET'){
			$fields = array_keys($_GET);
			$values = array_values($_GET);
		}
		$result = $this->_model->_getSql($type, $table, $fields, $values, $id);
		
		if($result==false) echo $result;
		return $result;
	}
	
	public function remove_dir($dir = null) {
		if (is_dir($dir)) {
			$objects = scandir($dir);
			foreach ($objects as $object) {
				if ($object != "." && $object != ".." && $object != ".htaccess") {
					if (filetype($dir."/".$object) == "dir") remove_dir($dir."/".$object);
					else unlink($dir."/".$object);
				}
			}
			reset($objects);
			//rmdir($dir);
		}
	}
	
	public function checksIpAddress($time=1, $limit=10){
		$ipAddress = $_SERVER['REMOTE_ADDR'];
		$datetime = time() - $time*3600;
		$data = $this->_model->_checksIpAddress($ipAddress, $datetime, $limit);
		if(count($data) > 0){
			$total = count($data);
			$check = $data[0];
			
			$check = time() - $check['datetime'];
			if($check<30){
				$arr = array('error'=>1, 'message'=>'You manipulate too fast, please try again after 30 seconds.');
				echo $this->exportError($arr);
				return false;
			}else if($total >= $limit){
				$arr = array('error'=>1, 'message'=>'Trong '.$time.' tiếng bạn chỉ gửi liên hệ được '.$limit.' lần, tránh spam.');
				echo $this->exportError($arr);
				return false;
			}
		}
		$this->_model->_insertIpAddress($ipAddress);
		return $ipAddress;
	}
	
	public function sendMail($arr, $type=0){
		if(!is_array($arr)) return false;
		/*$arr = array(
			'AddAddress' => '',
			'AddCC' => '',
			'AddBCC' => '',
			'AddAttachment' => array('../public/files/brochure.pdf'),
			'AddEmbeddedImage' => '',
			'Subject' => 'Subject Thử gửi mail support UTF-8',
			'Body' => '<h1>Test mail</h1> <p>This is a test picture: <img src="cid:insertImage" /></p>',
		);*/
		include_once('libraries/phpmailer/PHPMailerAutoload.php');
		$mailer = new PHPMailer();
		$mailer->IsSMTP();
		$mailer->Host = CONS_HOST_SMTP_SERVER;
		if($type==1){
			$mailer->SMTPSecure = 'ssl';
			$mailer->Port = 465;
		}else if($type==2){
			$mailer->SMTPSecure = 'tsl';
			$mailer->Port = 587;
		}else{
			$mailer->Port = 25;
		}
		$mailer->SMTPAuth = true;
		$mailer->Username = CONS_SEND_MAIL_ACCOUNT;
		$mailer->Password = CONS_SEND_MAIL_PASSWORD;
		$mailer->From = CONS_SEND_MAIL_FROM;
		$mailer->FromName = CONS_SEND_MAIL_FROM_NAME;
		$mailer->SetFrom(CONS_SEND_MAIL_FROM, CONS_SEND_MAIL_FROM_NAME);
		$mailer->SMTPDebug = 1;
		$mailer->WordWrap = 50;
		$mailer->CharSet="utf-8";
		$mailer->IsHTML(true);
		$mailer->Debugoutput = 'html';
		
		$arrField = array_keys($arr);
		if($arrField==0) return false;
		
		for($i=0; $i<count($arrField); $i++){
			$field = $arrField[$i];
			$data = $arr[$field];
			if(is_array($data)){//checks array
				if(isset($data['field'])){
					$row = $data;
					$mailer->$field($row['field'], $row['name']);
					//echo "{$field} -> {$row['field']} - {$row['name']} <br>";
				}else{
					foreach($data as $row){
						$mailer->$field($row['field'], $row['name']);
						//echo "{$field} -> {$row['field']} - {$row['name']} <br>";
					}
				}
			}else{//khong pha array
				$mailer->$field = $data;
				//echo "{$field} -> {$data}<br>";
			}
		}//end for
		
		$str = ob_start();
		if(!$mailer->Send()){
			echo $mailer->ErrorInfo;
		}
		$str = ob_get_clean();
		return $str;
	}
	
	public function contentReplace($content, $arr=''){
		if(is_array($arr)){
			$field = array_keys($arr);
			$value = array_values($arr);
			for($i=0; $i<count($arr); $i++){
				$content = str_replace($field[$i], $value[$i], $content);
			}
		}
		return '<div style="line-height:150%">'.$content.'</div>';
	}
}

$c = new pageAjax;
$lang = $c->_lang;
$config = $c->_model->_config($lang);
//$lang_var = $c->_model->_language_var($lang);

/*admin*/
if(isset($_SESSION['adminID'])){
	include_once('controlAjaxAdmin.php');
}
/*end admin*/

/*web*/
include_once('controlAjaxWeb.php');
/*end web*/

/*update database*/
if(isset($_GET['updatedatabese'])){
	$i=0; $j=0;
	//$model = new modelDB_BK;
	$modelNew = new modelDB;
	
	//cap nhat lop hoc theo khoa: code, name
	/*$sql = "SELECT * FROM `mn_courses` WHERE `type`=1 ";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$idCourse = $row['id'];
		$codeCourse = $row['code'];
		
		$sql = "SELECT * FROM `mn_class` WHERE `course_id`='{$idCourse}' ";
		$result2 = $modelNew->db->query($sql);
		while($row2 = $result2->fetch_assoc()){
			$j++;
			$m = explode('-', $row2['code']);
			$number = end($m); settype($number, 'int');
			$number = str_pad( (int)$number, 3, "0", STR_PAD_LEFT );
			$name = $row['name']." - Khóa ".$number;
			$code = $codeCourse.'-'.date('Y', $row2['datetime']).'-'.$number;
			
			$sql = "UPDATE `mn_class` SET `code`='{$code}', `name`='{$name}' WHERE `id`='{$row2['id']}' ";
			$modelNew->db->query($sql);
			echo "<p>{$i}.{$j} {$row['name']} | {$name} - {$code}</p>";
		}
	}*/
	
	//cap nhat lop hoc theo thang: code, name
	/*$sql = "SELECT * FROM `mn_courses` WHERE `type`=0 ";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$idCourse = $row['id'];
		$codeCourse = $row['code'];
		
		$sql = "SELECT * FROM `mn_class` WHERE `course_id`='{$idCourse}' ";
		$result2 = $modelNew->db->query($sql);
		while($row2 = $result2->fetch_assoc()){
			$j++;
			$m = explode('-', $row2['code']);
			$number = end($m); settype($number, 'int');
			$number = str_pad( (int)$number, 3, "0", STR_PAD_LEFT );
			$name = $row['name']." - ".date('Y/m', $row2['datetime']);
			$code = $codeCourse.'-'.date('Y', $row2['datetime']).'-'.date('m', $row2['datetime']);
			
			$sql = "UPDATE `mn_class` SET `code`='{$code}', `name`='{$name}' WHERE `id`='{$row2['id']}' ";
			$modelNew->db->query($sql);
			echo "<p>{$i}.{$j} {$row['name']} | {$name} - {$code}</p>";
		}
	}*/
	
	//return true;
	
	/*$sql = "SELECT * FROM `mn_class`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$id = $row['id'];
		$codeClass = $row['code'];
		
		$total = 0;
		$sql = "SELECT * FROM `mn_student` WHERE `class_id`='{$id}'";
		$result2 = $modelNew->db->query($sql);
		while($row2 = $result2->fetch_assoc()){
			$j++; $total++;
			$codeNew = $codeClass.'-'.$total;
			$sql = "UPDATE `mn_student` SET `code`='{$codeNew}' WHERE `id`='{$row2['id']}' ";
			$modelNew->db->query($sql);
			echo "<p>{$i}.{$j} {$row['name']} | {$total} {$row2['name']} - {$codeNew}</p>";
		}
	}*/
	return true;
	
	$sql = "SELECT * FROM `mn_class`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$id = $row['id'];
		
		$sql = "SELECT * FROM `mn_courses`";
		$result2 = $modelNew->db->query($sql);
		
		$error = '';
		while($row2 = $result2->fetch_assoc()){
			$course = $row2['code'];
			$code = $row['code'];
			$code = str_replace('-', '', $code);
			$code = str_replace('_', '', $code);
			$m = explode($course, $code);
			if(count($m) > 1){
				$i++;
				$date = date('y', $row['datetime']);
				$code2 = $course.'-'.$date.'-'.end($m);
				$code2 = trim($code2, '-');
				$sql = "UPDATE `mn_class` SET `code2`='{$code2}' WHERE `id`='{$id}' ";
				//$modelNew->db->query($sql);
				echo "<p>{$i}. {$row['name']} - {$row['code']} | {$code2}</p>";
			}else{
				$j++;
				$error .= "<p>{$j}. {$row['name']} - {$row['code']} | {$code2} --- {$date}</p>";
			}
		}
	}
	echo '<h1>Error</h1>'.$error;
	
	return true;

	$sql = "SELECT * FROM `hocvien`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$name = "{$row['ho']} {$row['ten']}";
		$code = $row['id'];
		$phone = $row['dienthoai'];
		$email = $row['email'];
		$address = $row['diachi'];
		$gender = $row['gioitinh'];
		$date_birthday = strtotime($row['date_1']);
		$notes = $row['notes'];
		$datetime = strtotime($row['date_create']);

		$lophoc_id = $row['lophoc_id'];
		$sql = "SELECT * FROM `mn_class` WHERE `code`='{$lophoc_id}' ";
		$data2 = $modelNew->db->query($sql);
		$row2 = $data2->fetch_assoc();

		$class_id = $row2['id'];
		$sql = "INSERT INTO `mn_student` (`name`, `code`, `phone`, `email`, `address`, `gender`, `date_birthday`, `notes`, `datetime`, `class_id`) VALUES ('{$name}', '{$code}', '{$phone}', '{$email}', '{$address}', '{$gender}', '{$date_birthday}', '{$notes}', '{$datetime}', '{$class_id}')";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['ho']} {$row['ten']} - {$row['id']} - {$row['lophoc_id']} | {$row2['name']} - {$row2['id']} - {$row2['code']}</p>";
	}
	return true;

	$sql = "SELECT * FROM `lophoc`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$name = $row['ten'];
		$code = $row['id'];
		$date_opening = strtotime($row['date_1']);
		$notes = $row['notes'];
		$datetime = strtotime($row['date_create']);

		$khoahoc_id = $row['khoahoc_id'];
		$sql = "SELECT * FROM `mn_courses` WHERE `code`='{$khoahoc_id}' ";
		$data2 = $modelNew->db->query($sql);
		$row2 = $data2->fetch_assoc();

		$course_id = $row2['id'];
		$sql = "INSERT INTO `mn_class` (`name`, `code`, `date_opening`, `notes`, `datetime`, `course_id`) VALUES ('{$name}', '{$code}', '{$date_opening}', '{$notes}', '{$datetime}', '{$course_id}')";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['ten']} - {$row['id']} - {$row['khoahoc_id']} | {$row2['name']} - {$row2['id']} - {$row2['code']}</p>";
	}
	return true;
	
	$sql = "SELECT * FROM `khoahoc`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$name = $row['ten'];
		$code = $row['id'];
		$notes = $row['notes'];
		$datetime = strtotime($row['date_create']);
		$sql = "INSERT INTO `mn_courses` (`name`, `code`, `notes`, `datetime`) VALUES ('{$name}', '{$code}', '{$notes}', '{$datetime}')";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['ten']} | {$row['id']}</p>";
	}
	return true;
	
	$sql = "SELECT * FROM `web_header` WHERE `properties`=2 AND `menu_id` LIKE '%,43,%' ORDER BY `id`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$menu_id = ',388'.$row['menu_id'];
		//$sql = "UPDATE `web_header` SET `menu_id`='{$menu_id}' WHERE `id`='{$row['id']}' ";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['name']} | {$menu_id}</p>";
	}
	return true;
	
	//copy images
	$dirPublic = '../public/images/';	
	$urlImages = '../upload/images/';
	$urlArticles = '../upload/images/articles/';
	$urlDanhMuc = '../upload/images/danhmuc/';
	$urlPhoto = '../upload/images/photogallery/';
	$urlSlider = '../upload/images/slider_banner/';
	$urlVideo = '../upload/images/video/';
	
	$sql = "SELECT * FROM `web_header` ORDER BY `id`";
	$result = $modelNew->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++; $file='';
		$img = $row['img'];
		$name = $row['name'];
		
		$sql = "SELECT * FROM `web_article` WHERE `name`='{$name}' ";
		if( !$data=$model->db->query($sql) ) die($model->db->error);
		if(count($data) > 0){
			$row2 = $data->fetch_assoc();
			$img2 = '';
			/*if($row2['img']!=''){
				$img2 = $row2['img'];
					
				$file=$urlImages.$img2;
				if(file_exists($file)) copy($file, $dirPublic.$img);
					
				$file=$urlArticles.$img2;
				if(file_exists($file)) copy($file, $dirPublic.$img);
					
				$file=$urlDanhMuc.$img2;
				if(file_exists($file)) copy($file, $dirPublic.$img);
					
				$file=$urlPhoto.$img2;
				if(file_exists($file)) copy($file, $dirPublic.$img);
					
				$file=$urlSlider.$img2;
				if(file_exists($file)) copy($file, $dirPublic.$img);
					
				$file=$urlVideo.$img2;
				if(file_exists($file)) copy($file, $dirPublic.$img);
			}*/
		}
		echo "<p>{$i}. {$row['id']} {$row['name']} | {$file}</p>";
	}
	return true;
	
	//web_tuyendung
	$i=0; $idInsert='';
	$sql = "SELECT * FROM `web_tuyendung`";
	$result = $model->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$id = $row['id'];
		$name = $row['name'];
		$name_alias = $row['name_alias'];
		$img = $row['img'];
		$title = $row['name'];
		$description = $row['description'];
		$tags = $row['tags'];
		$parent = 0;
		$order = 0;
		$other = $row['other'];
		$datetime = $row['datetime'];
		$lang = $row['lang'];
		$status = $row['status'];
		$properties = 2;
		
		$menu_id = $row['menu_id'];
		$type_id = 7;
		
		$workplaces = $row['noilamviec'];
		$wage = $row['mucluong'];
		$number = $row['soluongtuyen'];
		$date_duration = $row['datetime_hannop'];
		$company_id = $row['tuyendung_cty_id'];
		
		$content = $row['content'];
		$more1 = $row['quyenloi'];
		$more2 = $row['yeucau'];
		
		$sql = "INSERT INTO `web_header` (`name`, `name_alias`, `img`, `title`, `description`, `tags`, `parent`, `_order`, `other`, `datetime`, `lang`, `status`, `properties`, `menu_id`, `type_id`, `workplaces`, `wage`, `number`, `date_duration`, `company_id`) 
		VALUES ('{$name}', '{$name_alias}', '{$img}', '{$title}', '{$description}', '{$tags}', '{$parent}', '{$order}', '{$other}', '{$datetime}', '{$lang}', '{$status}', '{$properties}', '{$menu_id}', '{$type_id}', '{$workplaces}', '{$wage}', '{$number}', '{$date_duration}', '{$company_id}')";
		//$modelNew->db->query($sql);
		//$idInsert = $modelNew->db->insert_id;
		
		$sql = "INSERT INTO `web_content` (`content`, `more1`, `more2`, `header_id`) VALUES ('{$content}', '{$more1}', '{$more2}', '{$idInsert}') ";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['name']} | {$menu_id} | {$idInsert}</p>";
	}
	return true;
	
	//web_dangky_tructuyen
	$i=0; $idInsert='';
	$sql = "SELECT * FROM `web_dangky_tructuyen`";
	$result = $model->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$id = $row['id'];
		$name = $row['name'];
		$email = $row['email'];
		$phone = $row['phone'];
		$address = $row['address'];
		$message = $row['message'];
		$datetime = $row['datetime'];
		$lang = $row['lang'];
		$status = $row['status'];
		$type = 2;
		$staff_id = $row['nhanvien_lienhe'];
		
		$date_birthday = $row['ngaysinh'];
		$branch = $row['noihoc'];
		$literacy = $row['totnghiep'];
		$course_name = $row['khoahoc'];
		
		$sql = "SELECT `id`, `name` FROM `web_header` WHERE `name` LIKE '%{$course_name}%' ";
		$data = $modelNew->db->query($sql);
		$rowData = $data->fetch_assoc();
		if(count($rowData) > 0) $header_id = $rowData['id']; else $header_id = NULL;
		
		
		$sql = "INSERT INTO `web_contact` (`name`, `email`, `phone`, `address`, `message`, `datetime`, `lang`, `status`, `type`, `staff_id`, `date_birthday`, `branch`, `literacy`, `course_name`, `header_id`) 
		VALUES ('{$name}', '{$email}', '{$phone}', '{$address}', '{$message}', '{$datetime}', '{$lang}', '{$status}', '{$type}', '{$staff_id}', '{$date_birthday}', '{$branch}', '{$literacy}', '{$course_name}', '{$header_id}')";
		//$modelNew->db->query($sql);
		//$idInsert = $modelNew->db->insert_id;
		echo "<p>{$i}. {$row['name']} | {$rowData['name']}</p>";
	}
	return true;
	
	//web_contact
	$i=0; $idInsert='';
	$sql = "SELECT * FROM `web_contact`";
	$result = $model->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$id = $row['id'];
		$name = $row['name'];
		$email = $row['email'];
		$phone = $row['phone'];
		$address = $row['address'];
		$message = $row['message'];
		$datetime = $row['datetime'];
		$lang = $row['lang'];
		$status = $row['status'];
		$type = 1;
		$staff_id = $row['nhanvien_lienhe'];
		
		$sql = "INSERT INTO `web_contact` (`name`, `email`, `phone`, `address`, `message`, `datetime`, `lang`, `status`, `type`, `staff_id`) 
		VALUES ('{$name}', '{$email}', '{$phone}', '{$address}', '{$message}', '{$datetime}', '{$lang}', '{$status}', '{$type}', '{$staff_id}')";
		//$modelNew->db->query($sql);
		//$idInsert = $modelNew->db->insert_id;
		echo "<p>{$i}. {$row['name']} | {$staff_id} | </p>";
	}
	return true;
	
	//web_video
	$i=0; $idInsert='';
	$sql = "SELECT * FROM `web_video`";
	$result = $model->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$id = $row['id'];
		$name = $row['name'];
		$name_alias = $row['name_alias'];
		$img = $row['img'];
		$title = $row['name'];
		$description = $row['description'];
		$tags = $row['tags'];
		$code = $row['url_code'];
		$parent = 0;
		$order = 0;
		$datetime = $row['datetime'];
		$lang = $row['lang'];
		$status = $row['status'];
		$properties = 2;
		
		$menu_id = $row['menu_id'];
		$m = explode(',', $menu_id);
		$m = $m[count($m) - 2];
		$sql = "SELECT * FROM `web_header` WHERE `id`='{$m}' ";
		$data = $modelNew->db->query($sql);
		$mName = $data->fetch_assoc();
		
		$type_id = 9;
		
		$content = $row['content'];
		
		$sql = "INSERT INTO `web_header` (`name`, `name_alias`, `img`, `title`, `description`, `tags`, `code`, `parent`, `_order`, `datetime`, `lang`, `status`, `properties`, `menu_id`, `type_id`) 
		VALUES ('{$name}', '{$name_alias}', '{$img}', '{$title}', '{$description}', '{$tags}', '{$code}', '{$parent}', '{$order}', '{$datetime}', '{$lang}', '{$status}', '{$properties}', '{$menu_id}', '{$type_id}')";
		//$modelNew->db->query($sql);
		//$idInsert = $modelNew->db->insert_id;
		
		$sql = "INSERT INTO `web_content` (`content`, `header_id`) VALUES ('{$content}', '{$idInsert}') ";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['name']} | {$menu_id} | {$m} | {$mName['name']} | {$mName['type_id']} | {$idInsert}</p>";
	}
	return true;
	
	//web_article
	$i=0; $idInsert='';
	$sql = "SELECT * FROM `web_article` WHERE `lang`='vi'";
	$result = $model->db->query($sql);
	while($row = $result->fetch_assoc()){
		$i++;
		$id = $row['id'];
		$name = $row['name'];
		$name_alias = $row['name_alias'];
		$img = $row['img'];
		$title = $row['name'];
		$description = $row['description'];
		$tags = $row['tags'];
		$parent = 0;
		$order = 0;
		$datetime = $row['datetime'];
		$lang = $row['lang'];
		$status = $row['status'];
		$properties = 2;
		
		$menu_id = $row['menu_id'];
		$m = explode(',', $menu_id);
		$m = $m[count($m) - 2];
		$sql = "SELECT * FROM `web_header` WHERE `id`='{$m}' ";
		$data = $modelNew->db->query($sql);
		$mName = $data->fetch_assoc();
		
		$type_id = $mName['type_id'];
		if($type_id==0 || $type_id=='') $type_id=20;
		
		$content = $row['content'];
		
		$sql = "INSERT INTO `web_header` (`name`, `name_alias`, `img`, `title`, `description`, `tags`, `parent`, `_order`, `datetime`, `lang`, `status`, `properties`, `menu_id`, `type_id`) 
		VALUES ('{$name}', '{$name_alias}', '{$img}', '{$title}', '{$description}', '{$tags}', '{$parent}', '{$order}', '{$datetime}', '{$lang}', '{$status}', '{$properties}', '{$menu_id}', '{$type_id}')";
		//$modelNew->db->query($sql);
		//$idInsert = $modelNew->db->insert_id;
		
		$sql = "INSERT INTO `web_content` (`content`, `header_id`) VALUES ('{$content}', '{$idInsert}') ";
		//$modelNew->db->query($sql);
		echo "<p>{$i}. {$row['name']} | {$menu_id} | {$m} | {$mName['name']} | {$mName['type_id']} | {$idInsert}</p>";
	}
	return true;
	
	//web_menu
	$sql = "SELECT * FROM `web_menu`";
	$result = $model->db->query($sql);
	while($row = $result->fetch_assoc()){
		$id = $row['id'];
		$name = $row['name'];
		$name_alias = $row['name_alias'];
		$img = $row['img'];
		$title = $row['title'];
		$description = $row['description'];
		$tags = $row['tags'];
		$parent = $row['parent'];
		$order = $row['order'];
		$datetime = time();
		$lang = $row['lang'];
		$status = $row['status'];
		$properties = 1;
		$sql = "INSERT INTO `web_header` (`id`, `name`, `name_alias`, `img`, `title`, `description`, `tags`, `parent`, `_order`, `datetime`, `lang`, `status`, `properties`) 
		VALUES ('{$id}', '{$name}', '{$name_alias}', '{$img}', '{$title}', '{$description}', '{$tags}', '{$parent}', '{$order}', '{$datetime}', '{$lang}', '{$status}', '{$properties}')";
		//$modelNew->db->query($sql);
		echo "<p>{$row['name']}</p>";
	}
}