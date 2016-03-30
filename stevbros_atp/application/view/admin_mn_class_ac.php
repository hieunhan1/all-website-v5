<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'status';
$values = array();
$values[] = array('name'=>'enable', 'id'=>'1');
$values[] = array('name'=>'disable', 'id'=>'0');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Status', $data);

$name = 'date_start';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Opening date', $data);

$name = 'date_end';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Finish date', $data);

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
$values[] = array('id'=>'', 'name'=>'-- choose course --');
foreach($data as $row){
	$values[] = array('id'=>$row['id'], 'name'=>$row['name']);
}
if($rowDetail[$name]!=''){
	$valueCheck=$rowDetail[$name];
}else $valueCheck=0;
$properties = array();
$properties[] = array('propertie'=>'check', 'value'=>'1');
$properties[] = array('propertie'=>'message', 'value'=>'Choose course');
$other = '<p class="adError error"></p>';
$data = $cF->select($name, $values, $valueCheck, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Course', $data);

$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$properties[] = array('propertie'=>'readonly', 'value'=>'readonly');
$properties[] = array('propertie'=>'check', 'value'=>'10');
$properties[] = array('propertie'=>'style', 'value'=>'background-color:#F1F1F1');
$value = $_SESSION['adminUser'];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Class ID', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$properties[] = array('propertie'=>'check', 'value'=>'2');
$properties[] = array('propertie'=>'message', 'value'=>'Input class name');
$value=$rowDetail[$name];
$other = '<p class="adError error"></p>';
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Class name', $data);

if($id==0){
	$name = 'trainer_id';
	$value = $_SESSION['adminID'];
	echo $cF->inputHidden($name, $value, 'ad_field');
}

$name = 'notes';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Notes', $data);

if($id==0){
	$data = $cF->inputHidden('datetime', date('Y-m-d H:i:s'), 'ad_field');
	echo $data;
}

//upload images
$data = ob_start();
include_once('admin_upload.php');
$data = ob_get_clean();
echo $cF->displayDiv('Upload student list', $data.'<p class="adNotes">Follow strictly 3 steps: Step 1 - <a href="'.CONS_BASE_URL.'/public/files/student-template.xml" target="_blank">download</a> student list template. Step 2 - fill student list out. Step 3 - upload student list</p>');

$str=''; $i=0; $total=0;
/*$arr = array(
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

}*/

$arr = array(
	"select"=>"`mn_customer`.`id`, `name`, `phone`, `email`",
	"from"=>"`mn_class_info`, `mn_customer`",
	"where"=>"`class_id`='{$id}' AND `_table`='mn_customer' AND `table_id`=`mn_customer`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++; $total++; $code='';
	$arr = array(
		"select"=>"`result`",
		"from"=>"`web_entrytest_user`",
		"where"=>"`_table`='mn_customer' AND `table_id`='{$row['id']}'",
		"order" => "`id` DESC",
		"limit" => 1,
	);
	$data = $c->_model->_select($arr);

	if(count($data)>0){
		$rowEntry = $data[0];
		if($rowEntry['result']>=50){
			$code = '<span class="adMessage">PASS</span> ';
			$arr = array(
				"select"=>"`code`",
				"from"=>"`mn_license`",
				"where"=>"`status`=1 AND `class_id`='{$id}' AND `customer_id`='{$row['id']}'",
				"limit" => 1,
			);
			$data = $c->_model->_select($arr);
			if(count($data)>0){
				$rowLicense = $data[0];
				$code .= '<a href="'.CONS_BASE_URL.'/ajax/?certificate='.$rowLicense['code'].'" target="_blank">Download cert</a>';
			}
		}else{
			$code = '<span class="adError">FAIL</span>';
		}
	}else{
		$code = 'NOT STARTED YET';
	}
	
	$str.='<p class="item">'.$i.'. '.$row['name'].' - '.$row['email'].' - '.$row['phone'].' - '.$code.'</p>';
}
$str = '<div id="listCustomer" class="label2">'.$str.'</div> <div class="clear10"></div> <div><b>TOTAL: '.$total.' poeple/class</b></div>';
$data = '<div class="seo">'.$cF->displayDiv(' ', $str).'</div>';
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Back');
$name = 'viewFinalTest';
$viewFinalTest = $cF->inputButton($name, 'Final test', 'adBtnLarge bgColorPurple corner8');
$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$viewFinalTest.$btnCancel.'<span id="ajaxFee"></span>');
?>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#header_id").live("change", function(){
		var course = $("#header_id").val();
		var code = $("#code").val();
		if(code==''){
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
	
	$("#viewFinalTest").live("click", function(){
		var str = '<p style="line-height:180%"><b>Request students take final test</b><br />Note: After press "YES", each of your students will immediately receive an email to take FINAL TEST.</p> <p class="clear1"></p>';
			str+= '<?php
			$name = 'finaltest_id';
			$value = '1';
			$data = $cF->inputHidden($name, $value, 'ad_field');
			
			$name = 'event_id';
			$value = '20';
			$data .= $cF->inputHidden($name, $value, 'ad_field');
			
			echo $cF->displayDiv('', $data);
			?>';
			str+= '<p> <span id="btnFinalTest" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
	});
	
	$("#btnFinalTest").live("click", function(){
		var id = $("#id").val();
		var table = $("#tableName").html();
		if(id=='' || id=='0' || table=='table') return false;
		
		var header_id = check_text_length("#finaltest_id", "#finaltest_id_error", "Select final test", 1);
		var event_id = check_text_length("#event_id", "#event_id_error", "Select form sendmail", 1);
		if(header_id==false || event_id==false) return false;
		
		var str = '<p><b>Sending email is in progress.</b></p> <p class="clear10"></p> <p class="adMessage"><i>DO NOT close or refresh this page.</i></p>';
		popupLoad(str);
		
		var fields = new Object();
		fields['sendMailFinalTest'] = 1;
		fields['table'] = table;
		fields['table_id'] = id;
		fields['header_id'] = header_id;
		fields['event_id'] = event_id;
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				console.log(data);
				data = $.parseJSON(data);
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