<div class="clear30"></div>
<?php

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'datetime';
if($id==0){
	$value = date('Y-m-d H:i:s');
	echo $data = $cF->inputHidden($name, $value, 'ad_field');
}else{
	echo $cF->displayDiv('Date', date('Y-m-d H:i', $rowDetail[$name]) );
}

$name = 'status';
$values = array();
$values[] = array('name'=>'Enable', 'id'=>'1');
$values[] = array('name'=>'Disable', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Status', $data);

$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'readonly', 'value'=>'readonly');
if($rowDetail[$name]=='') $value = 'stevbros'.time();
else $value = $rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Order ID', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập name');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Name', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email', $data);

$name = 'price';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$value = $rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Price', $data);

$name = 'info';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Thông tin', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Back');
$name = 'btnSendMail';
$btnSendMail = $cF->inputButton($name, 'Gửi mail', 'adBtnLarge bgColorGreen corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnSendMail.$btnCancel);
?>

<div id="ajaxPayment"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnSendMail").live("click", function(){
		var code = $("#code").val();
		var name = $("#name").val();
		var email = $("#email").val();
		var price = $("#price").val();
		var info = $("#info").val();
		if(code=='' || name=='' || email=='' || price=='') return false;
		
		$("#btnSendMail").hide(100);
		$("#ajaxPayment").html('Processing...');
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: {sendMailPayment:1, name:name, email:email, price:price, code:code, info:info},
			cache:false,
			success: function(data){
				$("#ajaxPayment").html(data);
			}
		});
	});
});
</script>