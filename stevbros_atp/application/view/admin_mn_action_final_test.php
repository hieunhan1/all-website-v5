<div id="iframe">
	<?php
	
    
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
    $btnSend = $cF->inputButton($name, 'Gửi', 'adBtnLarge bgColorBlue1 corner8');
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
		fields['price'] = $("#price").val();
		fields['course'] = $("#course option:selected").text();
		fields['link_entry'] = $("#course").val();
		fields['table'] = "<?php echo $table;?>";
		fields['table_id'] = "<?php echo $id;?>";
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
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
	
	$("#course").live("change", function(){
		var type_id = $("#type_id").val();
		if(type_id=='') return false;
		autoLoadBaoGia();
	});
	
	$("#btnSend").live("click", function(){
		var type_id = check_number("#type_id", "#type_id_error", "Chọn form mẫu");
		var course = check_number("#course", "#course_error", "Chọn entry test");
		if(type_id==false || course==false) return false;
		$("#loadingIframe").show();
		
		var fields = new Object();
		fields['sendMailCustomer'] = '1';
		fields['name'] = "<?php echo $rowDetail['name'];?>";
		fields['email'] = "<?php echo $rowDetail['email'];?>";
		fields['email_bcc'] = $("#email_bcc").val();
		fields['event_id'] = type_id;
		fields['table'] = "<?php echo $table;?>";
		fields['table_id'] = "<?php echo $rowDetail['id'];?>";
		fields['subject'] = $("#subject").val();
		fields['content'] = CKEDITOR.instances["content"].getData();
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache: false,
			success: function(data){
				$("#iframe").html(data);
				$("#iframe").css("padding", "30px");
			}
		});
	});
});
</script>