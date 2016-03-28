<div id="iframe">
	<?php
	if(!isset($_GET['table']) || !isset($_GET['id'])) return false;
	$table = $c->_model->_changeDauNhay($_GET['table']);
	$id = $c->_model->_changeDauNhay($_GET['id']);
	$rowDetail = $c->_model->_viewDetail($table, $id);
	
	$rowCourse = '';
	if(isset($rowDetail['header_id'])){
		$rowCourse = $c->_model->_viewDetail('web_header', $rowDetail['header_id']);
		$rowCourse = $rowCourse['name'];
	}
	
    $cA = new modelAdmin;
    $cF = new controlAdminForm;
    
    echo $cF->displayDiv('Email nhận', '<b class="label2 adMessage" id="email">'.$rowDetail['email'].'</b>');
    
    $name = 'type_id';
    $values = $cA->_listTable('web_event_form', NULL, 'AND `type`=2 AND `type_id`=1');
    array_unshift($values, array('name'=>'-- chọn form --', 'id'=>''));
    $data = $cF->select($name, $values, '', 'adInput adTxtMedium');
    $other = '<p class="adError error" id="type_id_error"></p>';
    echo $cF->displayDiv('Chọn form mẫu', $data.$other);
    
    $name = 'price';
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'9');
    $properties[] = array('propertie'=>'placeholder', 'value'=>'Giá cá nhân khóa Public');
    $data = $cF->inputText($name, '', 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Giá', $data);
    
    $name = 'totalusd';
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'8');
    $properties[] = array('propertie'=>'placeholder', 'value'=>'Tổng cộng chi phí USD');
    $data = $cF->inputText($name, '', 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Total (USD)', $data);
    
    $name = 'exchangerate';
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'8');
    $properties[] = array('propertie'=>'placeholder', 'value'=>'Tỷ giá đổi USD sang VNĐ ngày hôm nay: '.date('d-m-Y') );
    $data = $cF->inputText($name, '', 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Tỷ giá VNĐ', $data);
    
    $name = 'subject';
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'200');
    $data = $cF->inputText($name, '', 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Subject', $data);
    
    $name = 'content';
    $others = $cF->ckeditorStandard($name);
    $data = $cF->textArea($name, '', 'textarea', NULL, $others);
    echo $cF->displayDiv('', $data);
    
    $name = 'email_bcc';
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'60');
    $data = $cF->inputText($name, '', 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Email BCC', $data);
    
    $name = 'btnSend';
    $btnSend = $cF->inputButton($name, 'Gửi báo giá', 'adBtnLarge bgColorBlue1 corner8');
    echo $cF->displayDiv(' ', $btnSend);
    ?>
    <div id="loadingIframe"><div class="loading"></div></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	function autoLoadBaoGia(){
		$("#loadingIframe").show();
		
		var fields = new Object();
		fields['loadFormTemplate'] = '1';
		fields['id'] = $("#type_id").val();
		fields['name'] = "<?php echo $rowDetail['name'];?>";
		fields['course'] = "<?php echo $rowCourse;?>";
		fields['price'] = $("#price").val();
		fields['totalusd'] = $("#totalusd").val();
		fields['exchangerate'] = $("#exchangerate").val();
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				console.log(data);
				data = $.parseJSON(data);
				$("#subject").val(data.subject);
				$("#email_bcc").val(data.email);
				CKEDITOR.instances["content"].setData(data.content);
				$("#loadingIframe").hide(300);
			}
		});
	}
	
	$("#type_id").live("change", function(){
		autoLoadBaoGia();
	});
	
	$("#price, #totalusd, #exchangerate").live("blur", function(){
		var type_id = $("#type_id").val();
		if(type_id=='') return false;
		autoLoadBaoGia();
	});
	
	$("#btnSend").live("click", function(){
		var type_id = check_number("#type_id", "#type_id_error", "Chọn form mẫu");
		if(type_id==false) return false;
		$("#loadingIframe").show();
		
		var fields = new Object();
		fields['sendMailCustomer'] = '1';
		fields['name'] = "<?php echo $rowDetail['name'];?>";
		fields['email'] = "<?php echo $rowDetail['email'];?>";
		fields['email_bcc'] = $("#email_bcc").val();
		fields['event_id'] = type_id;
		fields['table_id'] = "<?php echo $rowDetail['id'];?>";
		fields['subject'] = $("#subject").val();
		fields['content'] = CKEDITOR.instances["content"].getData();
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache: false,
			success: function(data){
				console.log(data);
				$("#iframe").html(data);
				$("#iframe").css("padding", "30px");
			}
		});
	});
});
</script>