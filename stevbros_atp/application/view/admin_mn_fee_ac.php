<div class="clear30"></div>
<?php

$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Date đóng', $data);

$name = 'class_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'8');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập ID lớp học');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên lớp học');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_class"></div>';
echo $cF->displayDiv('ID lớp học', $data);

$name = '_table';
$values = array();
$values[] = array('id'=>'mn_contract', 'name'=>'Hợp đồng doanh nghiệp');
$values[] = array('id'=>'mn_customer', 'name'=>'Khách hàng (khóa học public)');
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck='mn_contract';
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium');
echo $cF->displayDiv('Loại', $data);

$name = 'table_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'8');
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập ID');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_contract"></div>';
echo $cF->displayDiv('ID', $data);

$name = 'price';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập số');
$properties[] = array('propertie'=>'check', 'value'=>'3');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập số tiền');
$other = '<p class="adError error"></p>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Số tiền', $data);

$name = 'notes';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Ghi chú', $data);

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Back');
$name = 'btnSubmitReceipt';
$btnSubmitReceipt = $cF->inputButton($name, 'In biên nhận', 'adBtnLarge bgColorGreen corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv('<span class="adNotes" style="font-weight:100">Khi ấn thêm mới là sẽ tự động gửi mail thông báo cho khách hàng</span>', $btnSubmit.$btnSubmitReceipt.$btnCancel.'<p id="ajaxFee" style="clear:both; padding-top:10px"></p> <p class="adMessage" style="clear:both; padding-top:10px">"Add" rồi mới "In biên nhận"</p>');

//sendmail
$arr = array(
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
}
?>

<script type="text/javascript">
$(document).ready(function(e) {
    function changeTable(){
		var table = $("#_table").val();
		$("#table_id").parent().children(".value_name").val('');
		$("#table_id").parent().children(".value_view").attr("table", table);
	}
	changeTable();
	
	$("#_table").live("change", function(){
		changeTable();
	});
	
	$("#btnSubmitAjax").live("click", function(){
		var table = $("#_table").val();
		var table_id = $("#table_id").val();
		if(table=='' || table_id=='') return false;
		
		setTimeout(function(){
			var fields = new Object();
			fields['sendMailFee'] = 1;
			fields['table'] = table;
			fields['table_id'] = table_id;
			
			$.ajax({ 	
				url: 'ajax',
				type: 'post',
				data: fields,
				cache:false,
				success: function(data){
					$("#ajaxFee").html(data);
				}
			});
		},300);
	});
	
	$("#btnSubmitReceipt").live("click", function(){
		var id = $("#id").val();
		var data = '<div><span class="adBtnSmall bgColorGray corner8 popupCloseReload">[ x ] Close</span></div> <div class="clear10"></div>';
			data+= '<iframe src="ajax/?loadFormEvent=6&table=<?php echo $table;?>&id=' + id + '" style="width:700px; height:500px; border:none"></iframe>';
		popupLoad(data);
	});
});
</script>