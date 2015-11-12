<?php
include_once('config/configAdmin.php');

if(isset($_POST['status_one'])){
	$status = $c->_model->_changeDauNhay($_POST['status_one']); settype($status, "int");
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, "int");
	if($table!='' && $id!=''){
		$c->_model->_statusOne($table, $id, $status);
	}else return false;
}

if(isset($_POST['delete_one'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	$id = $c->_model->_changeDauNhay($_POST['delete_one']); settype($id, "int");
	if($table=='' || $id=='') return false;
	$c->_model->_deleteOne($table, $id);
	return true;
}

if(isset($_POST['ajaxRestore'])){
	$id=$_POST['ajaxRestore']; settype($id, "int");
	$backup = new modelBackupRestore;
	echo $backup->_restoreData($id);
	return true;
}
if(isset($_POST['clearLogs'])){
	$soNgayLuuLai = $_POST['clearLogs']; settype($soNgayLuuLai, "int");
	if($soNgayLuuLai < 30) return false;
	$logs = new modelBackupRestore;
	$data = $logs->_clearLogs($soNgayLuuLai);
	echo 1;
	return true;
}

if(isset($_POST['checkAlias'])){
	$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, 'int');
	$alias = $c->_model->_changeDauNhay($_POST['checkAlias']);
	echo $c->_model->_checkAliasHeader($alias, $id);
	return true;
}

if(isset($_POST['ajaxNumberItem'])){
	$table = $c->_model->_changeDauNhay($_POST['table']);
	if($table=='') return false;
	echo $c->_model->_ajaxNumberItem($table);
	return true;
}

/*upload images*/
function getExtension($str){
	$i = strrpos($str, ".");
	if(!$i) return "";
	$l = strlen($str) - $i;
	$ext = substr($str, $i+1, $l);
	return $ext;
}
function xulyImage($img, $urlImgTemp, $urlImg, $urlImgThumb, $original=1){
	$file = $urlImgTemp.$img;
	$sizeInfo = getimagesize($file);
	if(is_array($sizeInfo)){
		include_once('libraries/SimpleImage.php');
		$image = new SimpleImage();
		
		$image->load($file);
		$width = $sizeInfo[0];
		$height = $sizeInfo[1];
		
		if($width<=IMAGE_THUMB_WIDTH && $height<=IMAGE_THUMB_HEIGHT) copy($file, $urlImgThumb.$img);
		elseif($width>=$height){
			$image->resizeToWidth(IMAGE_THUMB_WIDTH);
			$image->save($urlImgThumb.$img);
		}elseif($width<$height){
			$image->resizeToHeight(IMAGE_THUMB_HEIGHT);
			$image->save($urlImgThumb.$img);
		}
		
		if($original==1){
			$image->load($file);
			if($width>=$height && $width>IMAGE_MAX_WIDTH){
				$image->resizeToWidth(IMAGE_MAX_WIDTH);
				$image->save($urlImg.$img);
			}elseif($width<=$height && $height>IMAGE_MAX_HEIGHT){
				$image->resizeToHeight(IMAGE_MAX_HEIGHT);
				$image->save($urlImg.$img);
			}else{
				copy($file, $urlImg.$img);
			}
			if(file_exists($file)) unlink($file);
		}else{
			if(copy($file, $urlImg.$img)){
				if(file_exists($file)) unlink($file);
			}
		}
		
		return true;
	}else return false;
}
function viewImage($image, $urlImgThumb, $checkArray){
	$str = '<div class="item" name="'.$image.'">
		<div class="imageSelect">Chọn làm đại diện</div>
		<div class="img"><img src="'.$urlImgThumb.$image.'" /></div>
		<div class="copylink">Copy link</div>
		<div class="imageDelete"><img src="'.CONS_ADMIN_CSS_IMG.'delete.gif" /></div>
	</div>';
	if($checkArray==1) $str .='<script type="text/javascript">
		$(document).ready(function(){
			var arr_img = $("#arr_img").val();
			$("#arr_img").val(arr_img + "'.$image.',");
			return true;
		});
	</script>';
	return $str;
}
if(isset($_POST['imageUpload'])){
	include_once('config/configUpload.php');
	$id = $c->_model->_changeDauNhay($_POST['id']);
	$table = $c->_model->_changeDauNhay($_POST['imageUpload']);
	$original = $c->_model->_changeDauNhay($_POST['original']); // =0 khong xu ly img, =1 xu ly img
	$checkArray = $c->_model->_changeDauNhay($_POST['checkArray']); // =0 ko run script, #0 run script
	$validFormats = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
	
	$urlImg = $c->_model->_menuTypeOne($table);
	$urlImgView = $urlImg['url_img_thumb'];
	$urlImgThumb = '../'.$urlImg['url_img_thumb'];
	$urlImg = '../'.$urlImg['url_img'];
	$urlImgTemp = '../public/tempUpload/';//link ảnh tạm thời chờ xử lý
	$i = 0;
	foreach($_FILES['photos']['name'] as $name => $value){
		$filename = stripslashes($_FILES['photos']['name'][$name]);
		$size = filesize($_FILES['photos']['tmp_name'][$name]);
		$ext = getExtension($filename);
		$ext = strtolower($ext);
		if(in_array($ext, $validFormats)){
			if ($size < (MAX_SIZE*1024)){
				$i++;
				$imageName = time()+$i;
				$imageName = $imageName.'.'.$ext;
				$imgTemp = $urlImgTemp.$imageName;
				if(move_uploaded_file($_FILES['photos']['tmp_name'][$name], $imgTemp)){
					$result = xulyImage($imageName, $urlImgTemp, $urlImg, $urlImgThumb, $original);
					if($result) echo viewImage($imageName, $urlImgView, $checkArray);
				}else
					echo '<span class="error">'.ERROR_MOVING.'</span>';
			}else
				echo '<span class="error">'.LIMIT_SIZE.'</span>';
		}else
			echo '<span class="error">Unknown extension!</span>';
	}//end foreach
	
	if($checkArray==0){
		$data = $c->_model->_webHeaderID($id);
		if($data['img']!=''){
			if(file_exists($urlImg.$data['img'])) unlink($urlImg.$data['img']);
			if(file_exists($urlImgThumb.$data['img'])) unlink($urlImgThumb.$data['img']);
		}
	}
	return true;
}
if(isset($_POST['imageDelete'])){
	$type = $c->_model->_changeDauNhay($_POST['imageDelete']);
	$urlImg = $c->_model->_menuTypeOne($type);
	$name = $c->_model->_changeDauNhay($_POST['name']);
	$image = '../'.$urlImg['url_img'].$name;
	$imageThumb = '../'.$urlImg['url_img_thumb'].$name;
	if(file_exists($imageThumb)) unlink($imageThumb);
	if(file_exists($image)) unlink($image);
	return true;
}
/*end upload images*/

/*header insert data*/
if(isset($_POST['autoHeaderInsert'])){
	if(trim($_POST['name'])!=''){
		$ad = new modelAdmin;
		if(isset($_POST['id'])) $id=$_POST['id']; else $id=0;
		settype($id,'int');
		if($id==0) $type = 1; else $type = 2;
		$table = 'web_header';
		$fields = array_keys($_POST); array_shift($fields); array_push($fields, 'btn');
		$values = array_values($_POST); array_shift($values); array_push($values, 'btn');
		$id = $ad->_getSql($type, $table, $fields, $values, $id);
		if($id==true) echo $id; else echo 0;
	}
	return true;
}
/*end header insert data*/

/*content insert data*/
if(isset($_POST['autoContentInsert'])){
	$ad = new modelAdmin;
	if(isset($_POST['id'])) $id=$_POST['id']; else $id=0;
	settype($id,'int');
	if($id==0) $type = 1; else $type = 2;
	$table = 'web_content';
	$fields = array_keys($_POST); array_shift($fields); array_push($fields, 'btn');
	$values = array_values($_POST); array_shift($values); array_push($values, 'btn');
	$id = $ad->_getSql($type, $table, $fields, $values, $id);
	echo $id;
	return true;
}
/*end content insert data*/

if(isset($_POST['viewFrmContent'])){
	$id = $c->_model->_changeDauNhay($_POST['viewFrmContent']);
	if(!is_numeric($id)) return false;
	
	$cF = new controlAdminForm;
	$dataContent = $c->_model->_webContentID($id);
	
	$name = 'content';
	$value=$dataContent[$name];
	$others = $cF->ckeditorFull($name);
	$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $data;
	
	$name = 'idContent';
	$value = $dataContent['id'];
	$data = $cF->inputHidden($name, $value);
	echo $data;
	
	return true;
}
?>