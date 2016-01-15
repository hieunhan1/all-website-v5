<div id="iframe">
	<?php
	if(!isset($_GET['table']) || !isset($_GET['id'])) return false;
	$table = $c->_model->_changeDauNhay($_GET['table']);
	$id = $c->_model->_changeDauNhay($_GET['id']);
	$rowContract = $c->_model->_viewDetail($table, $id);
	if(count($rowContract)==0){
		echo '<p class="adError">Error 01: Không tìm thấy Hợp Đồng này trong database.</p>';
		return false;
	}
	
	$rowEventForm = $c->_model->_viewDetail('web_event_form', 12);
	if(count($rowEventForm)==0){
		echo '<p class="adError">Error 02: Không tìm thấy Form Hợp Đồng này trong database.</p>';
		return false;
	}
	
	$rowTrainer = $c->_model->_viewDetail('mn_trainer', $rowContract['trainer_id']);
	//$rowCourses = $c->_model->_viewDetail('web_header', $rowContract['course_id']);
	
    $cF = new controlAdminForm;
	
	$name = 'subject';
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$values = $rowEventForm[$name];
    $data = $cF->inputText($name, $values, 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Subject', $data);
    
	$arr = array(
		'{_code}' => $rowContract['code'],
		'{_datecreate}' => date('F d, Y', $rowContract['datetime']),
		'{_datecreate_vi}' => 'ngày '.date('d', $rowContract['datetime']).' tháng '.date('m', $rowContract['datetime']).' năm '.date('Y', $rowContract['datetime']).'',
		'{_company}' => $rowContract['name'],
		'{_company_vi}' => $rowContract['name_vi'],
		'{_address}' => $rowContract['address'],
		'{_address_vi}' => $rowContract['address_vi'],
		'{_tel}' => $rowContract['tel'],
		'{_fax}' => $rowContract['fax'],
		'{_represented}' => $rowContract['represented'],
		'{_represented_vi}' => $rowContract['represented_vi'],
		'{_position}' => $rowContract['position'],
		'{_position_vi}' => $rowContract['position_vi'],
		'{_taxcode}' => $rowContract['taxcode'],
		'{_course}' => '',
		'{_course_vi}' => '',
		'{_quantity}' => $rowContract['quantity'],
		'{_quantity_vi}' => $rowContract['quantity_vi'],
		'{_duration}' => $rowContract['duration'],
		'{_duration_vi}' => $rowContract['duration_vi'],
		'{_trainer}' => ucwords( $c->_model->_changeAlias($rowTrainer['name'], ' ') ),
		'{_trainer_vi}' => $rowTrainer['name'],
		'{_daterequest_vi}' => '',
		'{_daterequest}' => '',
		'{_price}' => number_format($rowContract['price'], 0, ',', '.').' VNĐ',
		'{_price_vi}' => number_format($rowContract['price'], 0).' đồng',
	);
	$values = $c->contentReplace($rowEventForm['content'], $arr);
	$name = 'content';
    $others = $cF->ckeditorStandard($name);
    $data = $cF->textArea($name, $values, 'textarea', NULL, $others);
    echo $cF->displayDiv('', $data);
	
	return true;
	
    $cA = new modelAdmin;
    $cF = new controlAdminForm;
    
    echo $cF->displayDiv('Email nhận', '<b class="label2 adMessage" id="email">'.$rowDetail['email'].'</b>');
    
    $name = 'course';
	$arr = array(
		"select" => "`id`, `name`",
		"from" => "`web_header`",
		"where" => "`status`=1 AND `properties`=1 AND `type_id`=6 AND `parent`=0",
		"order" => "`_order`",
	);
    $values = $cA->_select($arr);
    array_unshift($values, array('name'=>'-- chọn entry test --', 'id'=>''));
    $data = $cF->select($name, $values, '', 'adInput adTxtMedium');
    $other = '<p class="adError error" id="course_error"></p>';
    echo $cF->displayDiv('Entry test', $data.$other);
    
    $name = 'type_id';
    $values = $cA->_listTable('web_event_form', NULL, 'AND `type`=2 AND `type_id`=3');
    array_unshift($values, array('name'=>'-- chọn form --', 'id'=>''));
    $data = $cF->select($name, $values, '', 'adInput adTxtMedium');
    $other = '<p class="adError error" id="type_id_error"></p>';
    echo $cF->displayDiv('Chọn form mẫu', $data.$other);
    
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