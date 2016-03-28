<div class="clear30"></div>
<form id="imageForm" method="post" enctype="multipart/form-data" action="<?php echo CONS_BASE_URL;?>/ajax/" >
	<input type="hidden" name="uploadWebPicture" value="1" />
    <?php
	$cF = new controlAdminForm;
	
	$name = 'id';
    $id = $c->createEditData($table, $arrAction, $rowDetail);
	$data = $cF->inputHidden($name, $id, 'ad_field');
	echo $data;
	
	$name = '_table';
	$value = 'web_header';
	$data = $cF->inputHidden($name, $value, 'ad_field');
	echo $data;
	
	$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowDetail[$name]);
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
	echo $cF->displayDiv('Ngày', $data);
	
	$name = 'table_id';
	$properties = array();
	$properties[] = array('propertie'=>'check', 'value'=>'1');
	$properties[] = array('propertie'=>'message', 'value'=>'Chọn danh mục');
	$other='<span class="error adError"></span>';
	$where = "(type_id=7)";
	$values = $c->menuList($lang, $where);
	$valueCheck=$rowDetail[$name];
	array_unshift($values, array('name'=>'-- danh mục --', 'id'=>''));
	if($rowDetail[$name]!=''){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=0;
	$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', $properties, $other);
	echo $cF->displayDiv('Chọn danh mục', $data);
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$properties[] = array('propertie'=>'check', 'value'=>'2');
	$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
	$other='<span class="error adError"></span>';
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
	echo $cF->displayDiv('Name', $data);
	
	$name = '_order';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
	echo $cF->displayDiv('Thứ tự', $data);
	
	$name = 'img';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'15');
	$properties[] = array('propertie'=>'check', 'value'=>'14');
	$properties[] = array('propertie'=>'message', 'value'=>'**Upload hình ảnh');
	$other='<span class="error adError"></span>';
	$value=$rowDetail[$name];
	$data = $cF->inputHidden($name, $value, 'ad_field', $properties, $other);
	$viewImg=''; $optionImg='';
	if($rowDetail[$name]!=''){
    	$viewImg = '<div class="item"><div class="img"><img src="'.IMAGE_URL_THUMB.$rowDetail['img'].'"/></div></div>';
	}else{
		$name = 'original';
		$values = array();
		$values[] = array('name'=>'Yes', 'id'=>'1');
		$values[] = array('name'=>'No', 'id'=>'0');
		$valueCheck=1;
		$optionImg .= '<div class="checkbox"><span class="b">Tự xử lý hình ảnh: </span>';
		$optionImg .= $cF->inputRadio($name, $values, $valueCheck, 'adRadio');
		$optionImg .= '</div> <div class="clear1"></div>
		<div id="imageloadstatus"><img src="themes/admin2/img/loader.gif" alt="Uploading..." /></div>
		<div id="imageloadbutton"><input type="file" name="photos[]" id="uploadWebPicture" /></div>';
	}
	$data = '<div id="optionImg">'.$optionImg.'</div>' . $data . '<div id="imageUpload">'.$viewImg.'</div>';
	echo $cF->displayDiv('Upload ảnh', $data);
	
	$name = 'btnCancel';
	$btnCancel = $cF->btnCancel($name, 'Quay lại');
	$name = 'btnSubmitAjax';
	$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
	echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);
	?>
</form>