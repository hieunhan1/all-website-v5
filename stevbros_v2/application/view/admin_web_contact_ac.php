<div class="clear30"></div>
<?php
$arrType = array(
	0 => array('id'=>'', 'name'=>'-- chọn loại --'),
	1 => array('id'=>'1', 'name'=>'Liên hệ'),
	2 => array('id'=>'2', 'name'=>'Đăng ký cá nhân'),
	3 => array('id'=>'3', 'name'=>'Đăng ký doanh nghiệp'),
	4 => array('id'=>'4', 'name'=>'Hợp tác'),
	5 => array('id'=>'5', 'name'=>'Di dân'),
);
$number = array(
	'0' => array('id'=>0, 'name'=>'No'),
	'1' => array('id'=>1, 'name'=>'1 người'),
	'2' => array('id'=>2, 'name'=>'2 người'),
	'3' => array('id'=>3, 'name'=>'3 người'),
	'4' => array('id'=>4, 'name'=>'4 người'),
	'5' => array('id'=>5, 'name'=>'5 người'),
	'6' => array('id'=>6, 'name'=>'6 người'),
	'7' => array('id'=>7, 'name'=>'7 người'),
	'8' => array('id'=>8, 'name'=>'8 người'),
	'9' => array('id'=>9, 'name'=>'9 người'),
	'10' => array('id'=>10, 'name'=>'&gt;=10 người'),
	'11' => array('id'=>11, 'name'=>'Dưới 10 người'),
	'12' => array('id'=>12, 'name'=>'Từ 10 đến 19 người'),
	'13' => array('id'=>13, 'name'=>'Từ 20 đến 25 người'),
	'14' => array('id'=>14, 'name'=>'Từ 26 đến 30 người'),
	'15' => array('id'=>15, 'name'=>'Hơn 30 người'),
);
$arrStatus = array(
	1 => array('id'=>'0', 'name'=>'Chưa xem'),
	2 => array('id'=>'2', 'name'=>'Đã hành động'),
	3 => array('id'=>'3', 'name'=>'Đã phản hồi'),
	4 => array('id'=>'1', 'name'=>'Hoàn thành'),
	5 => array('id'=>'4', 'name'=>'Error'),
);

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

if(isset($rowDetail['type'])) echo $cF->displayDiv('Type', '<p class="adMessage label2">'.$arrType[$rowDetail['type']]['name'].'</p>' );
if($rowDetail['header_id']!=''){
	$data = $c->_model->_viewEditDetail('web_header', $rowDetail['header_id']);
	echo $cF->displayDiv('Khóa học', '<p class="adMessage label2 header_id">'.$data['name'].'</p>' );
}
echo $cF->displayDiv('Ngày', '<b class="label2">'.$c->viewDateTime($rowDetail['datetime']).'</b>' );

$name = 'status';
$values = $arrStatus;
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Trạng thái', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$value=$rowDetail[$name];
$other='<span class="error adError"></span>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Họ tên', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email', $data);

$name = 'phone';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Phone', $data);

$name = 'address';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
	$value=$rowDetail[$name];
	$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
	echo $cF->displayDiv('Address', $data);
}

$name = 'payment_option';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Hình thức đóng học phí', $data);
}

$name = 'red_invoice';
if($rowDetail[$name]!=''){
	$values = array();
	$values[] = array('name'=>'Không', 'id'=>'0');
	$values[] = array('name'=>'Có', 'id'=>'1');
	if($rowDetail[$name]=='') $valueCheck=1;
	else $valueCheck=$rowDetail[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
	echo $cF->displayDiv('Yêu cầu xuất hoá đơn', $data);
}

$name = 'company';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Company', $data);
}

$name = 'taxcode';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Mã số thuế', $data);
}

$name = 'website';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Website', $data);
}

$name = 'parts';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Bộ phận làm việc', $data);
}

$name = 'position';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Chức vụ', $data);
}

$name = 'courses_id';
if($rowDetail[$name]!=''){
	$value = $rowDetail[$name];
	$value = explode(',', $value);
	$data = '';
	for($i=1; $i<=count($value)-2; $i++){
		$row = $c->_model->_viewEditDetail('web_header', $value[$i]);
		$data .= '<p class="adMessage label2 courses_id">'.$row['name'].'</p>';
	}
	echo $cF->displayDiv('Hợp tác khoá học', $data);
}

$name = 'address2';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
	$value=$rowDetail[$name];
	$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
	echo $cF->displayDiv('Địa điểm khoá học sẽ triển khai', $data);
}

$name = 'number';
if($rowDetail[$name]!=0){
	$values = $number;
	if($rowDetail[$name]!=''){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=0;
	$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium');
	echo $cF->displayDiv('Số học viên tham dự', $data);
}

$name = 'date_khaosat';
if($rowDetail[$name]!=0){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowDetail[$name]);
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
	echo $cF->displayDiv('Ngày khảo sát', $data);
}

$name = 'date_trienkhai';
if($rowDetail[$name]!=0){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
	if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
	else $value=date('Y-m-d H:i', $rowDetail[$name]);
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
	echo $cF->displayDiv('Ngày triển khai', $data);
}

$name = 'name2';
if($rowDetail[$name]!=''){
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Tên khách hàng', $data);
}

//di dan
$name = 'dien_di_dan';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Diện di dân', $data);
	}
}

$name = 'quoc_tich';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Quốc tịch', $data);
	}
}

$name = 'age';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Tuổi', $data);
	}
}

$name = 'tinh_trang';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Tình trạng', $data);
	}
}

$name = 'trinh_do';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Trình độ', $data);
	}
}

$name = 'lich_su_di_lam1';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Làm việc trong 1 ngành diện tay nghề ở Canada?', $data);
	}
}

$name = 'lich_su_di_lam2';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Bạn đã làm việc nước nào trong 10 năm qua không?', $data);
	}
}

$name = 'lich_su_di_lam3';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Bạn có thư mời làm việc ở Canada không?', $data);
	}
}

$name = 'lich_su_di_lam4';
if($rowDetail[$name]!=''){
	if($rowDetail[$name]!=''){
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
		$value=$rowDetail[$name];
		$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
		echo $cF->displayDiv('Bạn có bất kỳ thành viên nào trong gia đình đang sống ở Canada không?', $data);
	}
}
//end di dan

$name = 'message';
if($rowDetail[$name]!=''){
	if(isset($rowDetail[$name])) $value=$rowDetail[$name]; else $value='';
	$name = 'ckeditor_message';
	$others = $cF->ckeditorBasic($name);
	$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayDiv('Lời nhắn', $data);
}

$name = 'lang';
$data = $cF->inputHidden($name, $lang, 'ad_field');
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnActionAjax';
$btnActionAjax = $cF->inputButton($name, 'Tương tác với khách hàng', 'adBtnLarge bgColorGreen corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnActionAjax.$btnCancel);

include_once('admin_mn_action.php');