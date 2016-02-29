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

$name = 'date_start';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Ngày khai giảng', $data);

$name = 'date_end';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Ngày kết thúc', $data);

$name = 'header_id';
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck='';
$arr = array(
	'select' => '`id`, `name`',
	'from' => '`web_header`',
	'where' => '`type_id`=3 AND `properties`=2 AND `status`=1',
	'order' => '`name`',
);
$data = $c->_model->_select($arr);
$values = array();
$values[] = array('id'=>'', 'name'=>'-- chọn khóa học --');
foreach($data as $row){
	$values[] = array('id'=>$row['id'], 'name'=>$row['name']);
}
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$properties = array();
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Chọn khóa học');
$other = '<p class="adError error"></p>';
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Khóa học', $data);

$name = 'codeAuto';
$properties = array();
$properties[] = array('propertie'=>'style', 'value'=>'float:none; margin-left:5px');
$btnCodeAuto = $cF->inputButton($name, 'Lấy mã khóa học', 'adBtnSmall bgColorOranges', $properties);
$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập mã lớp');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập mã cty OR public');
$value = $rowDetail[$name];
$other = $btnCodeAuto.'<span class="adNotes">Khóa học - Năm - Cty or public - Thứ tự</span> <p class="adError error"></p>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mã lớp', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập tên lớp');
$value=$rowDetail[$name];
$other = '<p class="adError error"></p>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Tên lớp', $data);

$name = 'trainer_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'8');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID giảng viên');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên giảng viên');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Tìm kiếm" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_trainer"></div>';
echo $cF->displayDiv('ID giảng viên', $data);

$name = 'notes';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Ghi chú', $data);

if($id==0){
	$data = $cF->inputHidden('datetime', date('Y-m-d H:i:s'), 'ad_field');
	echo $data;
}

$str=''; $i=0; $total=0;
$arr = array(
	"select"=>"`mn_class_info`.`id`, `name`, `phone`, `email`, `mn_contract`.`id` as `contract_id`",
	"from"=>"`mn_class_info`, `mn_contract`",
	"where"=>"`class_id`='{$id}' AND `_table`='mn_contract' AND `table_id`=`mn_contract`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++;
	$str.='<p class="item">'.$i.'. '.$row['name'].' - '.$row['email'].' - '.$row['phone'].'</p>';
	
	$j=0;
	$arr = array(
		'select' => '`mn_customer`.`name`, `mn_customer`.`phone`, `mn_customer`.`email`',
		'from' => '`mn_customer`, `mn_contract_customer`',
		'where' => "`contract_id`='{$row['contract_id']}' AND `customer_id`=`mn_customer`.`id`",
	);
	$dataCustomer = $c->_model->_select($arr);
	foreach($dataCustomer as $rowCustomer){
		$j++; $total++;
		$str.='<p class="item" style="margin-left:35px">'.$j.'. '.$rowCustomer['name'].' - '.$rowCustomer['email'].' - '.$rowCustomer['phone'].'</p>';
	}

}

$arr = array(
	"select"=>"`mn_class_info`.`id`, `name`, `phone`, `email`",
	"from"=>"`mn_class_info`, `mn_customer`",
	"where"=>"`class_id`='{$id}' AND `_table`='mn_customer' AND `table_id`=`mn_customer`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++; $total++;
	$str.='<p class="item">'.$i.'. '.$row['name'].' - '.$row['email'].' - '.$row['phone'].'</p>';
}
$str = '<div id="listCustomer" class="label2">'.$str.'</div> <div class="clear10"></div> <div><b>TOTAL: '.$total.' poeple/class</b></div>';
$data = '<div class="seo">'.$cF->displayDiv('D.sách khách hàng', $str).'</div>';
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnViewAddCustomer';
$btnViewAddCustomer = $cF->inputButton($name, 'Đưa k.hàng vào lớp', 'adBtnLarge bgColorOranges corner8');
$name = 'btnSendMail';
$btnSendMail = $cF->inputButton($name, 'Gửi mail thông báo', 'adBtnLarge bgColorGreen corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnViewAddCustomer.$btnSendMail.$btnCancel.'<span id="ajaxFee"></span>');

/*$arr = array(
	"select" => "*",
	"from" => "`web_sendmail`",
	"where" => "`_table`='{$rowDetail['_table']}' AND `table_id`='{$rowDetail['table_id']}' ",
	"order" => "`web_sendmail`.`id` DESC"
);

$data = $c->_model->_select($arr);
if(count($data) > 0){
	foreach($data as $row){
		$str = '<p class="label2"><b>Date: '.date('H:i d F Y', $row['datetime']).'</b></p>
		<div style="height:150px; overflow:auto; padding:10px; border:solid 1px #CCC">'.$row['content'].'</div>';
		echo $cF->displayDiv('Thông tin gửi mail', $str);
	}
}*/
?>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#codeAuto").live("click", function(){
		var course = $("#header_id").val();
		var code = $("#code").val();
		if(code==''){
			alert('Nhập mã cty hoặc public');
			$("#code").focus();
			return false;
		}
		$.ajax({
			url: 'ajax',
			type: 'POST',
			data: {classCode:1, course:course, code:code},
			cache: false,
			success: function(data){
				$("#code").val(data);
			}
		});
	});
	
	function changeTable(){
		var table = $("#_table").val();
		$("#table_id").parent().children(".value_id").val('');
		$("#table_id").parent().children(".value_name").val('');
		$("#table_id").parent().children(".value_view").attr("table", table);
	}
	$("#_table").live("change", function(){
		changeTable();
	});
	
	$("#btnViewAddCustomer").click(function(){
		var str = '<?php
		$name = '_table';
		$values = array();
		$values[] = array('id'=>'mn_contract', 'name'=>'Hợp đồng doanh nghiệp');
		$values[] = array('id'=>'mn_customer', 'name'=>'Khách hàng (khóa học public)');
		$valueCheck='mn_contract';
		$data = $cF->select($name, $values, $valueCheck, 'adInput adTxtMedium').'<div class="clear10"></div>';
		
		$name = 'table_id';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'ID');
		$data .= $cF->inputText($name, '', 'adInput adTxtMedium value_id', $properties).'<div class="clear10"></div>';
		
		$name = 'table_name';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'Name');
		$other = '<p class="adError error value_name_error"></p>';
		$data .= $cF->inputText($name, '', 'adInput adTxtMedium value_name', $properties, $other);
		
		$data .= '<div class="value_view" table="mn_contract"></div> <div class="clear20"></div>';
		
		$name = 'btnSearchCustomer';
		$properties = array();
		$properties[] = array('propertie'=>'style', 'value'=>'width:auto; float:left');
		$data .= $cF->inputButton($name, 'Tìm kiếm', 'adBtnSmall bgColorBlue1 corner5 value_search');
		$name = 'btnAddCustomer';
		$data .= $cF->inputButton($name, 'Thêm vào hợp đồng', 'adBtnSmall bgColorOranges corner5', $properties);
		$name = 'btnClose';
		$data .= $cF->inputButton($name, 'Close', 'adBtnSmall bgColorGray corner5 popupClose', $properties);
		echo $cF->displayDiv('', $data);
		?>';
		popupLoad(str);
	});
	
	$("#btnAddCustomer").live("click", function(){
		var table = $.trim($("#_table").val());
		var table_id = $.trim($("#table_id").val());
		var class_id = $.trim($("#id").val());
		
		var table_name = $.trim($("#table_name").val());
		var class_name = $.trim($("#name").val());
		if(class_id=='0' || class_id=='' || class_name==''){
			var str = '<p class="adError">Vui lòng nhập thông tin lớp học trước.</p><p class="clear10"></p>';
				str+= '<span class="adBtnSmall bgColorGray corner5 popupClose">Close</span> <p class="clear1"></p>';
			popupLoad(str);
			return false;
		}else if(table=='' || table_id=='' || class_id=='0'){
			var str = '<p class="adError">Vui lòng chọn khách hàng.</p><p class="clear10"></p>';
				str+= '<span class="adBtnSmall bgColorGray corner5 popupClose">Close</span> <p class="clear1"></p>';
			popupLoad(str);
			return false;
		}
		
		var str = '<p>Bạn có muốn thêm <b>"' + table_name + '"</b> vào lớp <b>"' + class_name + '"</b>?</p> <p class="clear20"></p>';
			str+= '<p> <span id="insertCustomer" table="' + table + '" table_id="' + table_id + '" class_id="' + class_id + '" table_name="' + table_name + '" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
	});
	
	$("#insertCustomer").live("click", function(){
		var table = $.trim($(this).attr("table"));
		var table_id = $.trim($(this).attr("table_id"));
		var class_id = $.trim($(this).attr("class_id"));
		var table_name = $.trim($(this).attr("table_name"));
		if(table=='' || table_id=='' || class_id=='') return false;
		$.ajax({ 	
			url: 'ajax',
			type: 'POST',
			data:{insertCustomerClass:1, class_id:class_id, table:table, table_id:table_id},
			cache:false,
			success: function(data) {
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var str = '';
				if(data.error==0){
					str = '<p class="adMessage">' +data.message+ '</p>';
					var number = parseInt($("#listCustomer .item").length) + 1;
					var insert = '<p class="item">' + number + '. ' + table_name + '</p>';
					$("#listCustomer").append(insert);
				}else{
					str = '<p class="adError">' +data.message+ '</p>';
				}
				
				str += '<p class="clear10"></p> <p class="adBtnSmall bgColorGray corner5 popupClose">Close</p> <p class="clear1"></p></p>';
				popupLoad(str);
			}
		});
	});
	
	$("#btnSendMail").live("click", function(){
		var id = $("#id").val();
		var table_id = $("#table_id").val();
		if(id=='' || id=='0') return false;
		
		var str = '<p><b>Đang gửi mail..</b></p><p class="clear10"></p> <p class="adMessage"><i>Vui lòng không tắt trang hay tải lại trang khi đang gửi mail.</i></p>';
		popupLoad(str);
		
		var fields = new Object();
		fields['sendMailClass'] = 1;
		fields['class_id'] = id;
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				console.log(data);
				data = $.parseJSON(data);
				console.log(data);
				var str = '';
				if(data.error==0){
					str = '<div style="line-height:160%"><p class="adMessage">' + data.message + '</p> <p class="clear10"></p>' + data.data + '</div>';
				}else{
					str = '<p class="adError">' +data.message+ '</p>';
				}
				str += '<p class="clear10"></p><span class="adBtnSmall bgColorGray corner5 popupClose">Close</span> <p class="clear1"></p>';
				popupLoad(str);
				return true;
			}
		});
	});
});
</script>