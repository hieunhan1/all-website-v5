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

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Ngày', $data);

$name = 'code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'check', 'value'=>'10');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập mã hợp đồng');
if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
$other='<span class="error adError"></span>';
if($id=='0') $value=CONS_CODE_CONTRACT;
else $value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mã hợp đồng', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'check', 'value'=>'10');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập tên công ty');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Company', $data);

$name = 'tax_code';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'check', 'value'=>'9');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập mã số thuế');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mã số thuế', $data);

$name = 'surrogate';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'check', 'value'=>'5');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập người đại diện');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Người đại diện', $data);

$name = 'regency';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$properties[] = array('propertie'=>'check', 'value'=>'3');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập chức vụ');
$other='<span class="error adError" style="display:block"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Chức vụ', $data);

$name = 'address';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$properties[] = array('propertie'=>'check', 'value'=>'10');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập địa chỉ');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'tel';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'15');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Điện thoại', $data);

$name = 'fax';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'15');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Fax (nếu có)', $data);

$name = 'web';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Website (nếu có)', $data);

$name = 'contract_value';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'check', 'value'=>'6');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập giá trị hợp đồng');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Giá trị hợp đồng', $data);

$str=''; $i=0;
$arr = array(
	"select"=>"`mn_contract_customer`.`id`, `name`",
	"from"=>"`mn_contract_customer`, `mn_customer`",
	"where"=>"`contract_id`='{$id}' AND `customer_id`=`mn_customer`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++;
	$str.='<p class="item">'.$i.'. '.$row['name'].'</p>';
}
$str = '<div id="listCustomer" class="label2">'.$str.'</div>';
$data = '<div class="seo">'.$cF->displayDiv('D.sách khách hàng', $str).'</div>';
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');

$name = 'btnViewAddCustomer';
$btnAddCustomer = $cF->inputButton($name, 'Đưa k.hàng vào HĐ', 'adBtnLarge bgColorGreen corner8');

$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnAddCustomer.$btnCancel);
?>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnViewAddCustomer").click(function(){
		var str = '<?php
		$name = 'customer_id';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'ID khách hàng');
		$data = $cF->inputText($name, '', 'adInput adTxtMedium value_id', $properties);
		echo $cF->displayDiv('', $data);
		
		$name = 'customer_name';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên khách hàng và ấn nút TÌM KIẾM');
		$data = $cF->inputText($name, '', 'adInput adTxtMedium value_name', $properties);
		echo $cF->displayDiv('', $data);
		
		$data = '<div id="value_view" table="mn_customer"></div>';
		echo $cF->displayDiv('', $data);
		
		$name = 'btnSearchCustomer';
		$properties = array();
		$properties[] = array('propertie'=>'style', 'value'=>'width:auto; float:left');
		$data = $cF->inputButton($name, 'Tìm kiếm', 'adBtnSmall bgColorBlue1 corner5 value_search');
		$name = 'btnAddCustomer';
		$data .= $cF->inputButton($name, 'Thêm vào hợp đồng', 'adBtnSmall bgColorOranges corner5', $properties);
		echo $cF->displayDiv('', $data);
		?>';
		viewDataAction(str);
	});
	
	$("#btnAddCustomer").live("click", function(){
		var id = $.trim($("#customer_id").val());
		var name = $.trim($("#customer_name").val());
		var code = $.trim($("#code").val());
		var contract_id = $.trim($("#id").val());
		if(contract_id=='' || contract_id=='0' || code==''){
			var str = '<b class="adError">Vui lòng nhập thông tin hợp đồng trước.</b>';
			viewDataAction(str);
			return false;
		}else if(id=='' || name==''){
			var str = '<b class="adError">Vui lòng nhập ID khách hàng.</b>';
			viewDataAction(str);
			return false;
		}
		
		var str = '<p>Bạn có muốn thêm khách hàng <b>"' +name+ '"</b> vào hợp đồng <b>"'+code+'"</b>?</p> <p class="clear20"></p>';
			str+= '<p> <span id="insertCustomer" customer_id="' + id + '" customer_name="' + name + '" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 closeDataAction">No</span> </p>';
			str+= '<p class="clear1"></p>';
		viewDataAction(str);
	});
	
	$("#insertCustomer").live("click", function(){
		var contract_id = $.trim($("#id").val());
		var customer_id = $.trim($(this).attr("customer_id"));
		var customer_name = $.trim($(this).attr("customer_name"));
		if(contract_id=='' || contract_id=='0' || customer_id=='') return false;
		$.ajax({ 	
			url: 'ajax',
			type: 'POST',
			data:{insertCustomerContract:1, contract_id:contract_id, customer_id:customer_id},
			cache:false,
			success: function(data) {
				//console.log(data);
				data = $.parseJSON(data);
				var str = '';
				if(data.error==0){
					str = '<b class="adMessage">' +data.message+ '</b>';
					var number = parseInt($("#listCustomer .item").length) + 1;
					var insert = '<p class="item">' + number + '. ' + customer_name + '</p>';
					$("#listCustomer").append(insert);
				}else{
					str = '<b class="adError">' +data.message+ '</b>';
				}
				viewDataAction(str);
			}
		});
	});
});
</script>