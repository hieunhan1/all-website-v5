<div class="clear30"></div>
<?php
$type = array(
	'0' => array('id'=>0, 'name'=>'No'),
	'1' => array('id'=>1, 'name'=>'Selected'),
	'2' => array('id'=>2, 'name'=>'Associate'),
	'3' => array('id'=>3, 'name'=>'Certified'),
	'4' => array('id'=>4, 'name'=>'Senior'),
	'5' => array('id'=>5, 'name'=>'Expert'),
);

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'status';
$values = array();
$values[] = array('name'=>'Enable', 'id'=>'1');
$values[] = array('name'=>'Disable', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Status', $data);

$name = 'type';
$values = $type;
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$properties = array();
if($_SESSION['adminGroup']!=5){
	$properties[] = array('propertie'=>'disabled', 'value'=>'disabled');
	$properties[] = array('propertie'=>'style', 'value'=>'background-color:#EEE');
}
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Chức vụ', $data);

if($_SESSION['adminGroup']==5){
	$name = 'price_public';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Mức giá public', $data);
	
	$name = 'price_business';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	$value=$rowDetail[$name];
	$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
	echo $cF->displayDiv('Mức giá doanh nghiệp', $data);
}

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

$name = 'position';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Position', $data);

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
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'date_birthday';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d 00:00', time());
else $value=date('Y-m-d 00:00', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Birthday', $data);

$name = 'exp_work';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Số năm kinh nghiệm', $data);

$name = 'courses_id';
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck='';
$arr = array(
	'select' => '`id`, `name`',
	'from' => '`web_header`',
	'where' => '`type_id`=3 AND `properties`=2 AND `status`=1',
	'order' => '`name`',
 );
$values = $c->_model->_select($arr);
$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkBoxItem', 1);
$value = $rowDetail[$name];
$data .= $cF->inputHidden($name, $value, 'ad_field listValueItem');
echo $cF->displayDiv('Lĩnh vực đào tạo', '<div class="listCheckBox2">'.$data.'</div>');

$name = 'yourself';
$value=$rowDetail[$name];
$name = 'ckeditor_yourself';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Giới thiệu bản thân', $data);

$name = 'diploma';
$value=$rowDetail[$name];
$name = 'ckeditor_diploma';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Bằng cấp', $data);

$name = 'certificate';
$value=$rowDetail[$name];
$name = 'ckeditor_certificate';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Chứng nhận', $data);

$name = 'experience';
$value=$rowDetail[$name];
$name = 'ckeditor_experience';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Kinh nghiệm', $data);

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Avatar', $data);

$str=''; $i=0; $rate=0;
$arr = array(
	"select"=>"`mn_class`.`name`, `rate`",
	"from"=>"`mn_trainer_rate`, `mn_class`",
	"where"=>"`mn_trainer_rate`.`trainer_id`='{$id}' AND `class_id`=`mn_class`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++;
	$rate += $row['rate'];
	$str.='<p class="item">'.$i.'. '.$row['name'].' <b>(Mức '.$row['rate'].')</b></p>';
}
if($i!=0){
	$rate = round($rate/$i, 2);
	$rate = '<p class="item">Điểm trung bình: <b>'.$rate.'</b></p>';
}else{
	$rate = '';
}
$str = '<div id="listCustomer" class="label2">'.$str.$rate.'</div>';
$data = '<div class="seo">'.$cF->displayDiv('D.sách đánh giá', $str).'</div>';
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnAddRate';
$btnAddRate = $cF->inputButton($name, 'Đánh giá', 'adBtnLarge bgColorOranges corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnAddRate.$btnCancel);
?>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnAddRate").click(function(){
		var str = '<?php
		$name = 'class_id';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'ID lớp học');
		$data = $cF->inputText($name, '', 'adInput adTxtMedium value_id', $properties).'<div class="clear10"></div>';
		
		$name = 'class_name';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên lớp học và ấn nút TÌM KIẾM');
		$other = '<p class="adError error value_name_error"></p>';
		$data .= $cF->inputText($name, '', 'adInput adTxtMedium value_name', $properties, $other);
		
		$data .= '<div class="value_view" table="mn_class"></div> <div class="clear10"></div>';
		
		$name = 'rate';
		$values = array();
		$values[] = array('id'=>'', 'name'=>'-- chọn đánh giá --');
		$values[] = array('id'=>'1', 'name'=>'Mức 1');
		$values[] = array('id'=>'2', 'name'=>'Mức 2');
		$values[] = array('id'=>'3', 'name'=>'Mức 3');
		$values[] = array('id'=>'4', 'name'=>'Mức 4');
		$values[] = array('id'=>'5', 'name'=>'Mức 5');
		$valueCheck = '';
		$data .= $cF->select($name, $values, $valueCheck, 'adInput adTxtMedium');
		
		$data .='<div class="clear20"></div>';
		
		$name = 'btnSearchClass';
		$properties = array();
		$properties[] = array('propertie'=>'style', 'value'=>'width:auto; float:left');
		$data .= $cF->inputButton($name, 'Tìm kiếm', 'adBtnSmall bgColorBlue1 corner5 value_search');
		$name = 'btnAddClass';
		$data .= $cF->inputButton($name, 'Thêm đánh giá', 'adBtnSmall bgColorOranges corner5', $properties);
		$name = 'btnClose';
		$data .= $cF->inputButton($name, 'Close', 'adBtnSmall bgColorGray corner5 popupClose', $properties);
		echo $cF->displayDiv('', $data);
		?>';
		popupLoad(str);
	});
	
	$("#btnAddClass").live("click", function(){
		var class_id = $.trim($("#class_id").val());
		var class_name = $.trim($("#class_name").val());
		var rate = $.trim($("#rate").val());
		var trainer_id = $.trim($("#id").val());
		var trainer_name = $.trim($("#name").val());
		if(trainer_id=='0' || trainer_id==''){
			var str = '<b class="adError">Vui lòng nhập thông tin giảng viên trước.</b>';
			popupLoad(str);
			popupCloseBG();
			return false;
		}else if(class_id=='' || class_name=='' || rate==''){
			var str = '<b class="adError">Vui lòng chọn thông tin.</b>';
			popupLoad(str);
			popupCloseBG();
			return false;
		}
		
		var str = '<p>Bạn có muốn thêm đánh giá lớp học <b>"' + class_name + '"</b> vào giảng viên <b>"'+trainer_name+'"</b>?</p> <p class="clear20"></p>';
			str+= '<p> <span id="insertTrainerRate" class_id="' + class_id + '" class_name="' + class_name + '" rate="' + rate + '" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
	});
	
	$("#insertTrainerRate").live("click", function(){
		var trainer_id = $.trim($("#id").val());
		var class_id = $.trim($(this).attr("class_id"));
		var class_name = $.trim($(this).attr("class_name"));
		var rate = $.trim($(this).attr("rate"));
		if(trainer_id=='' || trainer_id=='0' || class_id=='') return false;
		$.ajax({ 	
			url: 'ajax',
			type: 'POST',
			data:{insertTrainerRate:1, trainer_id:trainer_id, class_id:class_id, rate:rate},
			cache:false,
			success: function(data) {
				console.log(data);
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var str = '';
				if(data.error==0){
					str = '<p class="adMessage">' +data.message+ '</p>';
					var number = parseInt($("#listCustomer .item").length) + 1;
					var insert = '<p class="item">' + number + '. ' + class_name + ' <b>(Mức ' + rate + ')</b></p>';
					$("#listCustomer").append(insert);
				}else{
					str = '<p class="adError">' +data.message+ '</p>';
				}
				
				str += '<p class="clear10"></p> <p class="adBtnSmall bgColorGray corner5 popupClose">Close</p> <p class="clear1"></p></p>';
				popupLoad(str);
			}
		});
	});
});
</script>