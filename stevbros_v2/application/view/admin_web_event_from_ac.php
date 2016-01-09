<div class="clear30"></div>
<?php
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

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$other='<span class="error adError"></span><span class="adNotes">Tên gợi nhớ</span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

$name = 'type';
$values = $c->_model->_webTypeList(1);
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=20;
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', 1);
echo $cF->displayDiv('Type', '<div class="listCheckBox2">'.$data.'</div>');

$name = 'subject';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$other='<span class="adNotes">Tiêu đề dùng gửi mail</span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Subject', $data);

$name = 'content';
$value=$rowDetail[$name];
$name = 'ckeditor_content';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorStandard($name);
$others .= '<div class="adNotes" style="line-height:180%; opacity:1">
	<p class="adError" style="font-weight:bold; margin-top:5px">**Lưu ý</p>
	<p>Phần nội dung để tự động thay đổi thông tin bạn làm như sau:</p>
	<p style="margin-left:35px">
		Kính gởi bạn Trần Văn A, => Kính gởi bạn {_name},<br />
	</p>
	<p>Dưới đây là các trường hợp bạn có thể dùng để thay thế:</p>
	<p style="margin-left:35px">
		Liên hệ: {_name}, {_message} <br />
		Khóa học: {_name}, {_course}, {_date} : date là ngày khai giảng hoặc triển khai khóa học<br />
	</p>
</div>';
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Nội dung gửi mail', $data);

$name = 'notification';
$value=$rowDetail[$name];
$name = 'ckeditor_notification';
$properties = array();
$properties[] = array('propertie'=>'type', 'value'=>'ckeditor');
$others = $cF->ckeditorBasic($name);
$data = $cF->textArea($name, $value, 'ad_field', $properties, $others);
echo $cF->displayDiv('Thông báo trên web', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email thông báo', $data);

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Images', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnSubmitTestMail';
$btnSubmitTestMail = $cF->inputButton($name, 'Test nội dung mail', 'adBtnLarge bgColorGreen corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnSubmitTestMail.$btnCancel);
?>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#btnSubmitTestMail").click(function(){
		var str = '<p style="font-weight:bold"><input type="text" name="emailTest" class="adInput" placeholder="Nhập email" /></p> <p id="errorEmail" class="adError"></p> <p class="clear20"></p>';
			str+= '<p> <span id="idSubmit" class="adBtnSmall bgColorRed corner5">Send</span> <span class="adBtnSmall bgColorGray corner5 closeDataAction">No</span> </p>';
			str+= '<p class="clear1"></p>';
		viewDataAction(str);
	});
	
	$("#viewError").live("click", function(){
		$("#dataError").toggle(200);
	});
	
	$("#idSubmit").live("click", function(){
		var email = check_email( "input[name=emailTest]", "#errorEmail", "Email chưa đúng" );
		if(email==false) return false;
		
		viewDataAction('<p class="adMessage">Đang gửi...</p>');
		
		var subject = $("#subject").val();
		var content = CKEDITOR.instances["ckeditor_content"].getData();
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: {testSendEmail:1, email:email, subject:subject, content:content},
			cache:false,
			success: function(data){
				if(data==1){
					viewDataAction('<p class="adMessage">Gửi thành công, vui lòng check mail: <b>' +email+ '</b></p>');
				}else{
					viewDataAction('<p class="adError"><b>Gửi thất bại</b>, <a href="javascript:;" id="viewError">View error</a></p> <div id="dataError" class="adHidden" style="height:200px; overflow:auto">' +data+ '</div>');
				}
				return true;
			}
		});
	});
});
</script>