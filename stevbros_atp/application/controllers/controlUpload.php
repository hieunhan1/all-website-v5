<?php
include_once('config/configUpload.php');

function getExtension($str){
	$i = strrpos($str, ".");
	if(!$i) return "";
	$l = strlen($str) - $i;
	$ext = substr($str, $i+1, $l);
	return $ext;
}
function imageProcess($img_info){
	$file = $img_info['img_upload_url_temp'].$img_info['img'];
	$sizeInfo = getimagesize($file);
	if(is_array($sizeInfo)){
		include_once('libraries/SimpleImage.php');
		$image = new SimpleImage();
		
		$image->load($file);
		$width = $sizeInfo[0];
		$height = $sizeInfo[1];
		
		//img thumb
		$img_thumb = $img_info['img_upload_url_thumb'].$img_info['img'];
		if($width<=IMAGE_THUMB_WIDTH && $height<=IMAGE_THUMB_HEIGHT) copy($file, $img_thumb);
		elseif($width>=$height){
			$image->resizeToWidth(IMAGE_THUMB_WIDTH);
			$image->save($img_thumb);
		}elseif($width<$height){
			$image->resizeToHeight(IMAGE_THUMB_HEIGHT);
			$image->save($img_thumb);
		}
		
		//img
		$img = $img_info['img_upload_url'].$img_info['img'];
		if($img_info['original']==1){
			$image->load($file);
			if($width>=$height && $width>IMAGE_MAX_WIDTH){
				$image->resizeToWidth(IMAGE_MAX_WIDTH);
				$image->save($img);
			}elseif($width<=$height && $height>IMAGE_MAX_HEIGHT){
				$image->resizeToHeight(IMAGE_MAX_HEIGHT);
				$image->save($img);
			}else{
				copy($file, $img);
			}
			if(file_exists($file)) unlink($file);
		}else{
			if(copy($file, $img)){
				if(file_exists($file)) unlink($file);
			}
		}
		return true;
	}else return false;
}

function readXML($file, $table, $table_id){
	if( !file_exists($file) ){
		$arr = array('result'=>false, 'message'=>'File does not exist');
		echo json_encode($arr);
		return false;
	}
	
	$model = new modelManager();
	$i=0; $j=0; $str='';
	$xml = simplexml_load_file($file);
	foreach($xml->Worksheet->Table->Row as $row){
		$name = $model->_changeDauNhay( $row->Cell[0]->Data );
		$email = $model->_checkEmail( $row->Cell[1]->Data );
		$phone = '';
		if(isset($row->Cell[2]->Data)){
			$phone = $model->_changeDauNhay( $row->Cell[2]->Data );
		}
		$address = '';
		if(isset($row->Cell[3]->Data)){
			$address = $model->_changeDauNhay( $row->Cell[3]->Data );
		}
		$city = '';
		if(isset($row->Cell[4]->Data)){
			$city = $model->_changeDauNhay( $row->Cell[4]->Data );
		}
		$country = '';
		if(isset($row->Cell[5]->Data)){
			$country = $model->_changeDauNhay( $row->Cell[5]->Data );
		}
		$birthday = '';
		if(isset($row->Cell[6]->Data)){
			$birthday = $model->_changeDauNhay( $row->Cell[6]->Data );
		}
		$company = '';
		if(isset($row->Cell[7]->Data)){
			$company = $model->_changeDauNhay( $row->Cell[7]->Data );
		}
		if($birthday!='') $birthday = strtotime($birthday);
		
		$arr = array(
			'select'=>'`id`',
			'from' => '`mn_customer`',
			'where' => "`email`='{$email}'",
			'limit' => 1,
		);
		$data = $model->_select($arr);
		$total = count($data);
		
		if($name!='' && $email!=false && $total==0){
			$i++;
			$customer_id = $model->_insertCustomer($name, $phone, $email, $address, $city, $country, $birthday, $company);
			if($table=='mn_contract'){
				$model->_insertContractCustomer($table_id, $customer_id);
			}else if($table=='mn_class'){
				$model->_insertClassCustomer($table_id, $customer_id);
			}
		}else if($name!='' && $email!=false && $total==1){
			$row = $data[0];
			$customer_id = $row['id'];
			
			if($table=='mn_contract'){
				$arr = array(
					'select'=>'`id`',
					'from' => '`mn_contract_customer`',
					'where' => "`contract_id`='{$table_id}' AND `customer_id`='{$customer_id}'",
					'limit' => 1,
				);
				$data = $model->_select($arr);
				if(count($data)==0){
					$i++;
					$model->_insertContractCustomer($table_id, $customer_id);
				}
			}else if($table=='mn_class'){
				$arr = array(
					'select'=>'`id`',
					'from' => '`mn_class_info`',
					'where' => "`class_id`='{$table_id}' AND `_table`='mn_customer' AND `table_id`='{$customer_id}'",
					'limit' => 1,
				);
				$data = $model->_select($arr);
				if(count($data)==0){
					$i++;
					$model->_insertClassCustomer($table_id, $customer_id);
				}
			}
		}else if($name=='' || $email==false){
			$j++;
			$str .= "{$j}.{$name} - {$email} - {$phone} <span class='error'>kiểm tra data</span><br />";
		}
	}//end for
}

if(isset($_POST['imageUpload'])){
	if(!isset($_POST['img_id']) || $_POST['img_id']==0 || $_POST['img_id']==''){
		$id=0;
		$type='create';
	}else{
		$id=$_POST['img_id']; settype($id, 'int');
		if($id==0) return false;
		$type='update';
	}
	$img_name = $c->_model->_changeDauNhay($_POST['img_name']);
	$img = $c->_model->_changeDauNhay($_POST['img']);
	$original = $c->_model->_changeDauNhay($_POST['original']); // =0 xu ly img, =1 giu nguyen img
	$table = $c->_model->_changeDauNhay($_POST['_table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	
	$i=0; $arr=array();
	
	if($table=='' || $table_id=='' || $table_id==0){
		$arr[] = array('error'=>1, 'message'=>'Vui lòng thử lại.');
		echo json_encode($arr);
		return false;
	}
	
	foreach($_FILES['photos']['name'] as $name=>$value){
		$filename = stripslashes($_FILES['photos']['name'][$name]);
		$size=filesize($_FILES['photos']['tmp_name'][$name]);
		$ext = getExtension($filename);
		$ext = strtolower($ext);
		
		if(in_array($ext, $imageFormats)){
			if($size < (IMAGE_MAX_SIZE*1024*1024)){
				$i++;
				$newName = time()+$i;
				$newName = $newName.'.'.$ext;
				if (move_uploaded_file($_FILES['photos']['tmp_name'][$name], IMAGE_UPLOAD_URL_TEMP.$newName)){
					$img = array(
						'img'=>$newName,
						'img_upload_url_temp'=>IMAGE_UPLOAD_URL_TEMP,
						'img_upload_url'=>IMAGE_UPLOAD_URL,
						'img_upload_url_thumb'=>IMAGE_UPLOAD_URL_THUMB,
						'img_url'=>CONS_BASE_URL.'/'.IMAGE_URL,
						'img_url_thumb'=>IMAGE_URL_THUMB,
						'original'=>$original,
						'checkArray'=>1,
						'name'=>$img_name,
						'error'=>0,
						'message'=>'',
					);
					$result = imageProcess($img);
					
					//insert database
					$type='create'; $id=0;
					$table_insert = 'web_picture';
					$fields = array('name', 'img', 'datetime', '_table', 'table_id');
					$values = array($img['name'], $img['img'], date('Y-m-d H:i:s'), $table, $table_id);
					$data = $c->_model->_getSql($type, $table_insert, $fields, $values, $id);
					//end insert database
					
					$img['id'] = $data;
					$arr[] = $img;
				}else{
					$arr[] = array('error'=>1, 'message'=>IMAGE_ERROR_MOVING);
				}
			}else{
				$arr[] = array('error'=>1, 'message'=>IMAGE_LIMIT_SIZE);
			}
		}else if($ext=='xml'){
			$i++;
			$newName = time()+$i;
			$newName = $newName.'.'.$ext;
			$file = IMAGE_UPLOAD_URL_TEMP.$newName;
			if (move_uploaded_file($_FILES['photos']['tmp_name'][$name], $file)){
				$data = readXML($file, $table, $table_id);
				$arr[] = array('error'=>0, 'message'=>'Upload thành công', 'img'=>'xml.png', 'img_url_thumb'=>'themes/website/img/', 'img_url'=>CONS_BASE_URL.'/themes/website/img/');
				unlink($file);
			}else{
				$arr[] = array('error'=>1, 'message'=>IMAGE_ERROR_MOVING);
			}
		}else{
			$arr[] = array('error'=>1, 'message'=>'Unknown extension!');
		}
	}//end foreach
	
	echo json_encode($arr);
	return true;
}

if(isset($_POST['uploadWebPicture'])){
	if(!isset($_POST['id']) || $_POST['id']==0 || $_POST['id']==''){
		$id=0;
		$type='create';
	}else{
		$id=$_POST['id']; settype($id, 'int');
		if($id==0) return false;
		$type='update';
	}
	$img_name = $c->_model->_changeDauNhay($_POST['name']);
	$img = $c->_model->_changeDauNhay($_POST['img']);
	$table = $c->_model->_changeDauNhay($_POST['_table']);
	$table_id = $c->_model->_changeDauNhay($_POST['table_id']);
	$original = $c->_model->_changeDauNhay($_POST['original']); // =0 xu ly img, =1 giu nguyen img
	
	$i=0; $arr=array();
	foreach($_FILES['photos']['name'] as $name=>$value){
		$filename = stripslashes($_FILES['photos']['name'][$name]);
		$size=filesize($_FILES['photos']['tmp_name'][$name]);
		$ext = getExtension($filename);
		$ext = strtolower($ext);
		
		if(in_array($ext, $imageFormats)){
			if($size < (IMAGE_MAX_SIZE*1024*1024)){
				$i++;
				$newName = time()+$i;
				$newName = $newName.'.'.$ext;
				if (move_uploaded_file($_FILES['photos']['tmp_name'][$name], IMAGE_UPLOAD_URL_TEMP.$newName)){
					$img = array(
						'img'=>$newName,
						'img_upload_url_temp'=>IMAGE_UPLOAD_URL_TEMP,
						'img_upload_url'=>IMAGE_UPLOAD_URL,
						'img_upload_url_thumb'=>IMAGE_UPLOAD_URL_THUMB,
						'img_url'=>CONS_BASE_URL.'/'.IMAGE_URL,
						'img_url_thumb'=>IMAGE_URL_THUMB,
						'original'=>$original,
						'name'=>$img_name,
						'error'=>0,
						'message'=>'',
						'from'=>'web_picture',
					);
					$result = imageProcess($img);
					
					//insert database
					$type='create'; $id=0;
					$table_insert = 'web_picture';
					$fields = array('name', 'img', 'datetime', '_table', 'table_id');
					$values = array($img['name'], $img['img'], date('Y-m-d H:i:s'), $table, $table_id);
					$data = $c->_model->_getSql($type, $table_insert, $fields, $values, $id);
					//end insert database
					
					$img['id'] = $data;
					$arr[] = $img;
				}else{
					$arr[] = array('error'=>1, 'message'=>IMAGE_ERROR_MOVING);
				}
			}else{
				$arr[] = array('error'=>1, 'message'=>IMAGE_LIMIT_SIZE);
			}
		}else{
			$arr[] = array('error'=>1, 'message'=>'Unknown extension!');
		}
	}//end foreach
	
	echo json_encode($arr);
	return true;
}

if(isset($_POST['imageDelete'])){
	$img = $c->_model->_changeDauNhay($_POST['img']);
	$check = $c->_model->_changeDauNhay($_POST['check']);
	if(strlen($img) < 14){
		$arr = array('error'=>1, 'message'=>'Error');
		echo json_encode($arr);
		return false;
	}
	$urlImage = IMAGE_UPLOAD_URL.$img;
	$urlImageThumb = IMAGE_UPLOAD_URL_THUMB.$img;
	
	$data = $c->_model->_checksWebPicture($img);
	if(count($data) > 0){
		$table = $data['_table'];
		$table_id = $data['table_id'];
		if($check==1){
			$c->_model->_updateImgTable($table, $table_id);
		}
		
		$c->_model->_deleteImgTable($data['id']);
		
		if(file_exists($urlImageThumb)) unlink($urlImageThumb);
		if(file_exists($urlImage)) unlink($urlImage);
		
		$arr = array('error'=>0, 'message'=>'Xóa thành công', 'table'=>$table, 'table_id'=>$table_id);
		echo json_encode($arr);
		
		return true;
	}else{
		$arr = array('error'=>1, 'message'=>'Không tìm thấy hình này');
		echo json_encode($arr);
		return false;
	}
}