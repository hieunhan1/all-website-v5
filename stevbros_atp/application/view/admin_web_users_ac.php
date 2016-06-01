<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'status';
$values = array();
$values[] = array('name'=>'Hiện', 'id'=>'1');
$values[] = array('name'=>'Ẩn', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Status', $data);

$name = 'page';
$values = array();
$values[] = array('name'=>'Web', 'id'=>'1');
$values[] = array('name'=>'Admin', 'id'=>'2');
$values[] = array('name'=>'Manager', 'id'=>'3');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Trang mặc định', $data);

$name = 'group_id';
$values = $c->_model->_listTable('web_users_group', '`_order`');
array_unshift($values, array('name'=>'-- chọn nhóm --', 'id'=>'0'));
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium');
echo $cF->displayDiv('Group', $data);

$name = 'username';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'32');
if($arrAction['disabled']!='' && $_SESSION['adminID']!=25) $properties[] = $arrAction['disabled'];
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Username', $data);

if($id==0){
	echo $cF->displayDiv(' ', '<em class="label2 adMessage">Lưu ý: Khi tạo tài khoản password mặc định là "<b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b>"</em>');
	$name = 'password';
	$value = md5(CONS_ADMIN_PASSWORD_DEFAULT);
	$data = $cF->inputHidden($name, $value, 'ad_field');
	echo $data;
}else{
	$name = 'password';
	$value = md5(CONS_ADMIN_PASSWORD_DEFAULT);
	$data = $cF->inputHidden($name, $value);
	
	$name = 'resetPassword';
	$values = array();
	$values[] = array('name'=>'No', 'id'=>'0');
	$values[] = array('name'=>'Reset', 'id'=>'1');
	$valueCheck=0;
	$other = '<span class="adNotes">Mật khẩu reset là: <b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b></span>';
	$data .= $cF->inputRadio($name, $values, $valueCheck, 'adRadio resetPassword');
	echo $cF->displayDiv('Reset password', $data.$other);
}

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Họ tên', $data);

$name = 'title';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Title', $data);

$name = 'phone';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Phone', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email', $data);

$name = 'address';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'country';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Country', $data);

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Signature', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Back');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnCancel);
?>
<script type="text/javascript">
$(document).ready(function(e) {
    $(".resetPassword").click(function(){
		var data = $(".resetPassword:checked").val();
		if(data=='1') $("#password").addClass("ad_field");
		else $("#password").removeClass("ad_field");
	});
});
</script>