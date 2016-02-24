<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'typeform';
$values = array();
$values[] = array('name'=>'Song ngữ', 'id'=>'1');
$values[] = array('name'=>'Tiếng Anh', 'id'=>'2');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Loại form', $data);

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
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'readonly', 'value'=>'readonly');
$properties[] = array('propertie'=>'style', 'value'=>'background-color:#F1F1F1');
if($id==0){
	$action = 'ad_field';
	$arr = array(
		'select' => '`code`',
		'from' => '`mn_contract`',
		'order' => '`code` DESC',
		'limit' => '1',
	);
	$data = $c->_model->_select($arr);
	$value = explode('-', $data[0]['code']);
	$value = $value[0] + 1;
	if($value < 1000) $value = $value + 1000;
	$value = $value.'-'.date('Y');
}else{
	$action = '';
	$value = $rowDetail[$name];
}
$data = $cF->inputText($name, $value, $action.' adInput adTxtSmall', $properties);
echo $cF->displayDiv('Mã hợp đồng', $data.'&nbsp;/STEVBROS');

$name = 'datetime';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'16');
if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
else $value=date('Y-m-d H:i', $rowDetail[$name]);
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtSmall datetimepick', $properties);
echo $cF->displayDiv('Ngày lập', $data);

$name = 'name';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'placeholder', 'value'=>'English');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldEnglish', $properties);
$name = 'name_vi';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tiếng việt');
$value=$rowDetail[$name];
$data .= '<br />'.$cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldVietnamese', $properties);
echo $cF->displayDiv('Company', $data);

$name = 'address';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$properties[] = array('propertie'=>'placeholder', 'value'=>'English');
$value=$rowDetail[$name];
$data = $cF->textArea($name, $value, 'ad_field adInput adTextArea fieldEnglish', $properties);
$name = 'address_vi';
$properties = array();
$properties[] = array('propertie'=>'spellcheck', 'value'=>'false');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tiếng việt');
$value=$rowDetail[$name];
$data .= '<br />'.$cF->textArea($name, $value, 'ad_field adInput adTextArea fieldVietnamese', $properties);
echo $cF->displayDiv('Address', $data);

$name = 'email';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Email', $data);

$name = 'phone';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'15');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Điện thoại', $data);

$name = 'fax';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'15');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties);
echo $cF->displayDiv('Fax (nếu có)', $data);

$name = 'represented';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'placeholder', 'value'=>'English');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldEnglish', $properties);
$name = 'represented_vi';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tiếng việt');
$value=$rowDetail[$name];
$data .= '<br />'.$cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldVietnamese', $properties);
echo $cF->displayDiv('Người đại diện', $data);

$name = 'position';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$properties[] = array('propertie'=>'placeholder', 'value'=>'English');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldEnglish', $properties);
$name = 'position_vi';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tiếng việt');
$value=$rowDetail[$name];
$data .= '<br />'.$cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldVietnamese', $properties);
echo $cF->displayDiv('Chức vụ', $data);

$name = 'taxcode';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'check', 'value'=>'9');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập mã số thuế');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Mã số thuế', $data);

$name = 'web';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Website (nếu có)', $data);

$name = 'quantity';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'English');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldEnglish', $properties);
$name = 'quantity_vi';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tiếng việt');
$value=$rowDetail[$name];
$data .= '<br />'.$cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldVietnamese', $properties);
echo $cF->displayDiv('Số lượng đào tạo', $data);

$name = 'duration';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$properties[] = array('propertie'=>'placeholder', 'value'=>'English');
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldEnglish', $properties);
$name = 'duration_vi';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tiếng việt');
$value=$rowDetail[$name];
$data .= '<br />'.$cF->inputText($name, $value, 'ad_field adInput adTxtMedium fieldVietnamese', $properties);
echo $cF->displayDiv('Thời gian đào tạo', $data);

$name = 'trainer_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID giảng viên');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên giảng viên');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Tìm kiếm" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error" style="margin-left:100px"></p>';
$data .= '<div class="value_view" table="mn_trainer"></div>';
echo $cF->displayDiv('Giảng viên', $data);

$name = 'price';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
$properties[] = array('propertie'=>'check', 'value'=>'6');
$properties[] = array('propertie'=>'message', 'value'=>'Nhập giá trị hợp đồng');
$other='<span class="error adError"></span>';
$value=$rowDetail[$name];
$data = $cF->inputText($name, $value, 'ad_field adInput adTxtMedium', $properties, $other);
echo $cF->displayDiv('Giá trị hợp đồng', $data);

$data = '<link href="js/upload/uploadfile.css" rel="stylesheet">
<script src="js/upload/jquery.uploadfile.min.js"></script>
<div id="mulitplefileuploader">Upload</div>
<div id="status"></div>

<script>
$(document).ready(function(){
	var settings = {
		fileName: "fileUpload", 
		url: "ajax/",
		multiple : true,
		maxFileCount : 5,
		dragDrop: true,
		allowedTypes: "jpg,png,gif,doc,pdf,zip,xml",	
		returnType: "json",
		onSuccess:function(files, data, xhr){
			console.log(data);
		},
		showAbort : false,
		showDone : false,
		showDelete:true,
		deleteCallback: function(data,pd){
			for(var i=0; i<data.length; i++){
				$.post("delete.php", {op:"delete", name:data[i]}, function(resp, textStatus, jqXHR){
					//Show Message  
					$("#status").append("<div>File Deleted</div>");      
				});
			}     
			pd.statusbar.hide(); //You choice to hide/not.
		}
	}
	
	var uploadObj = $("#mulitplefileuploader").uploadFile(settings);
});
</script>';
echo $cF->displayDiv('Upload d.sách k.hàng', $data);

$str=''; $i=0;
$arr = array(
	"select"=>"`mn_contract_customer`.`id`, `name`, `phone`, `email`",
	"from"=>"`mn_contract_customer`, `mn_customer`",
	"where"=>"`contract_id`='{$id}' AND `customer_id`=`mn_customer`.`id`",
);
$data = $c->_model->_select($arr);
foreach($data as $row){
	$i++;
	$str.='<p class="item">'.$i.'. '.$row['name'].' - '.$row['email'].' - '.$row['phone'].'</p>';
}
$str = '<div id="listCustomer" class="label2">'.$str.'</div>';
$data = '<div class="seo">'.$cF->displayDiv('D.sách khách hàng', $str).'</div>';
echo $data;

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');
$name = 'btnViewAddCustomer';
$btnAddCustomer = $cF->inputButton($name, 'Đưa k.hàng vào HĐ', 'adBtnLarge bgColorOranges corner8');
$name = 'btnViewContract';
$btnViewContract = $cF->inputButton($name, 'Xem HĐ', 'adBtnLarge bgColorGreen corner8');

$name = 'btnSubmitAjax';
$btnSubmit = $cF->inputButton($name, $arrAction['lable'], 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit.$btnAddCustomer.$btnViewContract.$btnCancel);
?>

<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=typeform]").click(function(){
		var type = $("input[name=typeform]:checked").val();
		if(type==2){
			$(".fieldVietnamese").hide(200);
		}else{
			$(".fieldVietnamese").show(200);
		}
	});
	
	$("#btnViewAddCustomer").click(function(){
		var str = '<?php
		$name = 'customer_id';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'ID khách hàng');
		$data = $cF->inputText($name, '', 'adInput adTxtMedium value_id', $properties).'<div class="clear10"></div>';
		
		$name = 'customer_name';
		$properties = array();
		$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
		$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên khách hàng và ấn nút TÌM KIẾM');
		$other = '<p class="adError error value_name_error"></p>';
		$data .= $cF->inputText($name, '', 'adInput adTxtMedium value_name', $properties, $other);
		
		$data .= '<div class="value_view" table="mn_customer"></div> <div class="clear20"></div>';
		
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
		var id = $.trim($("#customer_id").val());
		var name = $.trim($("#customer_name").val());
		var code = $.trim($("#code").val());
		var contract_id = $.trim($("#id").val());
		if(contract_id=='' || contract_id=='0' || code==''){
			var str = '<b class="adError">Vui lòng nhập thông tin hợp đồng trước.</b>';
			popupLoad(str);
			popupCloseBG();
			return false;
		}else if(id=='' || name==''){
			var str = '<b class="adError">Vui lòng nhập ID khách hàng.</b>';
			popupLoad(str);
			popupCloseBG();
			return false;
		}
		
		var str = '<p>Bạn có muốn thêm khách hàng <b>"' +name+ '"</b> vào hợp đồng <b>"'+code+'"</b>?</p> <p class="clear20"></p>';
			str+= '<p> <span id="insertCustomer" customer_id="' + id + '" customer_name="' + name + '" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
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
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var str = '';
				if(data.error==0){
					str = '<p class="adMessage">' +data.message+ '</p>';
					var number = parseInt($("#listCustomer .item").length) + 1;
					var insert = '<p class="item">' + number + '. ' + customer_name + '</p>';
					$("#listCustomer").append(insert);
				}else{
					str = '<p class="adError">' +data.message+ '</p>';
				}
				
				str += '<p class="clear10"></p> <p class="adBtnSmall bgColorGray corner5 popupClose">Close</p> <p class="clear1"></p></p>';
				popupLoad(str);
			}
		});
	});
	
	$("#btnViewContract").live("click", function(){
		var id = $("#id").val();
		var data = '<div><span class="adBtnSmall bgColorGray corner8 popupCloseReload">[ x ] Close</span></div> <div class="clear10"></div>';
			data+= '<iframe src="ajax/?loadFormEvent=5&table=<?php echo $table;?>&id=' + id + '" style="width:700px; height:500px; border:none"></iframe>';
		popupLoad(data);
	});
});
</script>