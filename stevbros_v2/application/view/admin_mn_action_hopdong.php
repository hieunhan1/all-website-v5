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
		'{_tel}' => $rowContract['phone'],
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
	
    $cA = new modelAdmin;
    $cF = new controlAdminForm;
    
    echo $cF->displayDiv('Email nhận', '<b class="label2 adMessage" id="email">'.$rowContract['email'].'</b>');
    
    $name = 'email_bcc';
	$values = $rowEventForm['email'];
    $properties = array();
    $properties[] = array('propertie'=>'maxlength', 'value'=>'60');
    $data = $cF->inputText($name, $values, 'adInput adTxtMedium', $properties);
    echo $cF->displayDiv('Email BCC', $data);
    
    $name = 'btnSend';
    $btnSend = $cF->inputButton($name, 'Gửi hợp đồng', 'adBtnLarge bgColorBlue1 corner8');
    echo $cF->displayDiv(' ', $btnSend);
    ?>
    <div id="loadingIframe"><div class="loading"></div></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnSend").live("click", function(){
		$("#loadingIframe").show();
		
		var fields = new Object();
		fields['sendMailContract'] = '1';
		fields['name'] = "<?php echo $rowContract['name'];?>";
		fields['email'] = "<?php echo $rowContract['email'];?>";
		fields['email_bcc'] = $("#email_bcc").val();
		fields['table'] = "<?php echo $table;?>";
		fields['table_id'] = "<?php echo $rowContract['id'];?>";
		fields['subject'] = $("#subject").val();
		fields['content'] = CKEDITOR.instances["content"].getData();
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache: false,
			success: function(data){
				$("#iframe").html(data);
			}
		});
	});
});
</script>