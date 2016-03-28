<style>
.rightHeader, #fastAction{display:none !important}
</style>

<p class="clear30"></p>

<?php
$cF = new controlAdminForm;

$name = 'customer_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'8');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID k.hàng');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
$value = '';
$data = $cF->inputText($name, $value, 'adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên khách hàng');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_customer"></div>';
echo $cF->displayDiv('ID khách hàng', $data);

echo $cF->displayDiv('OR', '<span class="adNotes label2">chọn 1 trong 2 khách hàng hoặc lớp học</span>');

$name = 'class_id';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'8');
$properties[] = array('propertie'=>'placeholder', 'value'=>'ID lớp học');
$properties[] = array('propertie'=>'style', 'value'=>'width:80px');
$value = '';
$data = $cF->inputText($name, $value, 'adInput value_id', $properties);
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
$properties[] = array('propertie'=>'placeholder', 'value'=>'Tên lớp học');
$properties[] = array('propertie'=>'style', 'value'=>'width:260px; margin-left:5px');
$data .= $cF->inputText('', '', 'adInput value_name', $properties);
$data .= '<input type="button" value="Search" class="adBtnSmall bgColorBlue1 corner5 value_search" style="float:none; margin-left:5px" /> <p class="adError error value_name_error"></p>';
$data .= '<div class="value_view" table="mn_class"></div>';
echo $cF->displayDiv('ID lớp học', $data);

echo $cF->displayDiv(' ', '<div id="listCustomer"></div>');

$name = 'institution';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'40');
$value = '';
$data = $cF->inputText($name, $value, 'adInput adTxtMedium', $properties);
echo $cF->displayDiv('Institution', $data);

$name = 'course_id';
$values = array();
$values[] = array('id'=>'', 'name'=>'Đang tải khóa học từ Module..');
$valueCheck = '';
$data = $cF->select($name, $values, $valueCheck, 'adInput adTxtMedium');
echo $cF->displayDiv('ID k.học trên Module', $data);

$name = 'numberdate';
$properties = array();
$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
$value = '';
$data = $cF->inputText($name, $value, 'adInput adTxtMedium', $properties);
echo $cF->displayDiv('Số ngày', $data);

$name = 'btnSubmitAllocation';
$btnSubmit = $cF->inputButton($name, 'Cấp tài khoản', 'adBtnLarge bgColorBlue1 corner8');
echo $cF->displayDiv(' ', $btnSubmit);

?>

<script type="text/javascript">
$(document).ready(function(e) {
	function autoLoadCourseModule(){
		$.ajax({
			url: 'ajax',
			type: 'POST',
			data: {autoLoadCourseModule:1},
			cache: false,
			success: function(data){
				data = $.parseJSON(data);
				
				var str = '<option value="">-- chọn khóa học --</option>';
				for(var i in data){
					var row = data[i];
					str+= '<option value="' + row.id + '">' + row.fullname + '</option>';
				}
				
				$("#course_id").html(str);
				
			}
		});
	}
	autoLoadCourseModule();
	
	function autoCapTaiKhoanModule(customerid, courseid, coursename, numberdate){
		var institution = $("#institution").val();
		if(institution==''){
			alert('Vui lòng nhập institution');
			return false;
		}
		
		var str = '<div id="messageModule">Processing...<p class="clear10"></p></div>';
		popupLoad(str);
		
		$.ajax({
			url: 'ajax',
			type: 'POST',
			data: {accountAllocation:1, customerid:customerid, courseid:courseid, coursename:coursename, numberdate:numberdate, institution:institution},
			cache: false,
			success: function(data){
				console.log(data);
				data = $.parseJSON(data);
				var sendmail = '';
				if(data.sendmail==true) sendmail = ' -&gt; <span class="adMessage">Gửi mail thành công</span>';
				if(data.sendmail==false) sendmail = ' -&gt; <span class="adError">Gửi mail chưa được</span>';
				str = '<p><b>' + data.name + ':</b> ' + data.message + sendmail +'</p><p class="clear10"></p>';
				$("#messageModule").append(str);
			}
		});
	}
	
	function getTable(){
		var table = $(".activeSearch .value_view").attr("table");
		
		if(table=='mn_class'){
			var id = $(".activeSearch .value_id").val();
			$.ajax({
				url: 'ajax',
				type: 'POST',
				data: {customerClass:1, id:id},
				cache: false,
				success: function(data){
					data = $.parseJSON(data);
					$("#listCustomer").html(data.data);
					$("#institution").val(data.code);
				}
			});
		}
	}
	
	$(".value_data").live("click", function(){
		getTable();
	});
	
	$(".value_id").live("blur", function(){
		getTable();
	});
	
	$("#btnSubmitAllocation").live("click", function(){
		var id = $(".activeSearch .value_id").val();
		var table = $(".activeSearch .value_view").attr("table");
		var courseid = $("#course_id").val();
		var coursename = $("#course_id option:selected").text();
		var numberdate = $("#numberdate").val();
		
		if(table=='' || id=='' || courseid=='' || coursename=='' || numberdate==''){
			alert('Vui lòng chọn thông tin cấp tài khoản trên Module');
			return false;
		}
		
		if(table=='mn_customer'){
			autoCapTaiKhoanModule(id, courseid, coursename, numberdate);
		}else if(table=='mn_class'){
			$("input[name=customers]:checked").each(function(index, element) {
                var id = $(element).val();
				autoCapTaiKhoanModule(id, courseid, coursename, numberdate);
            });
		}
	});
});
</script>