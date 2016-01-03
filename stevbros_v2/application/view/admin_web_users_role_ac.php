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
echo $cF->displayDiv('Trạng thái', $data);

$name = 'users_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
$properties[] = array('propertie'=>'placeholder', 'value'=>'User ID');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:70px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field insertListRole adInput value_id', $properties, $other);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Tìm kiếm" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" />';
$data .= '<div id="value_view" table="web_users"></div>';
echo $cF->displayDiv('User ID', $data);

$name = 'admin_id';
$values = $c->_model->_listTable('web_admin', '`type`, `_order`');
array_unshift($values, array('name'=>'-- chọn mục quản trị --', 'id'=>''));
$properties = array();
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Chọn mục quản trị');
$other='<span class="error adError"></span>';
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mục quản trị', $data);

$name = 'action_view';
$values = array();
$values[] = array('name'=>'Yes', 'id'=>'1');
$values[] = array('name'=>'No', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field insertListRole adRadio');
echo $cF->displayDiv('Quyền xem', $data);

$name = 'action_create';
$values = array();
$values[] = array('name'=>'Yes', 'id'=>'1');
$values[] = array('name'=>'No', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field insertListRole adRadio');
echo $cF->displayDiv('Quyền create', $data);

$name = 'action_edit';
$values = array();
$values[] = array('name'=>'Yes', 'id'=>'1');
$values[] = array('name'=>'No', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field insertListRole adRadio');
echo $cF->displayDiv('Quyền edit', $data);

$name = 'action_delete';
$values = array();
$values[] = array('name'=>'Yes', 'id'=>'1');
$values[] = array('name'=>'No', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field insertListRole adRadio');
echo $cF->displayDiv('Quyền delete', $data);

$name = 'btnViewListRole';
$values = $c->_model->_listTable('web_admin', '`type`, `_order`');
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxRole');
$data = $cF->displayDiv('Chọn quyền', '<div class="listCheckBox2">'.$data.'</div>');
$btn = $cF->inputSubmit($name, 'Thêm nhiều quyền cùng 1 lúc, ấn vào đây', 'adBtnSmall bgColorGreen corner8');
echo $cF->displayDiv(' ', $btn);
$btn2 = $cF->inputSubmit('closeListRole', 'Đóng danh sách', 'adBtnSmall bgColorGray corner8');
$btn2 = $cF->displayDiv(' ', $btn2);
echo '<div id="listRole" style="display:none">'.$data.$btn2.'</div>';

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitAjaxRole';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
$name = 'btnSubmitAjaxRoleList';
$btnSubmit2 = $cF->inputSubmit($name, 'Thêm', 'adBtnLarge bgColorBlue1 corner8 adHidden');
echo $cF->displayDiv(' ', $btnSubmit.$btnSubmit2.$btnCancel);