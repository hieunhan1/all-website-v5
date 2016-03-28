<div id="iframe">
<script type="text/javascript">
	function ExecuteCommand( commandName ) {
		// Get the editor instance that we want to interact with.
		var editor = CKEDITOR.instances.content;
	
		// Check the active editing mode.
		if ( editor.mode == 'wysiwyg' )
		{
			// Execute the command.
			// http://docs.ckeditor.com/#!/api/CKEDITOR.editor-method-execCommand
			editor.execCommand( commandName );
		}
		else
			alert( 'You must be in WYSIWYG mode!' );
	}
</script>
	<?php
	if(!isset($_GET['table']) || !isset($_GET['id'])) return false;
	$table = $c->_model->_changeDauNhay($_GET['table']);
	$id = $c->_model->_changeDauNhay($_GET['id']);
	
	//get info hoc phi
	$rowFee = $c->_model->_viewDetail($table, $id);
	if(count($rowFee)==0){
		echo '<p class="adError">Error 01: Không tìm thấy thông tin học phí này trong database.</p>';
		return false;
	}
	
	//get form event
	$rowEventForm = $c->_model->_viewDetail('web_event_form', 17);
	if(count($rowEventForm)==0){
		echo '<p class="adError">Error 02: Không tìm thấy Form Học Phí này trong database.</p>';
		return false;
	}
	
	//get info khoa hoc
	$arr = array(
		'select' => '`web_header`.`name`',
		'from' => '`mn_class`, `web_header`',
		'where' => "`mn_class`.`id`='{$rowFee['class_id']}' AND `header_id`=`web_header`.`id`",
		'limit' => 1
	);
	$data = $c->_model->_select($arr);
	if(count($data)==0){
		echo '<p class="adError">Error 01: Không tìm thấy thông tin khóa học này trong database.</p>';
		return false;
	}
	$rowCourse = $data[0];
	
	//get id bien nhan max
	$arr = array('select'=>'max(id) as `id`', 'from'=>'`mn_fee`');
	$data = $c->_model->_select($arr);
	$row = $data[0];
	$number = date('ym').str_pad( (int)$row['id'], 4, "0", STR_PAD_LEFT );
	
	$cF = new controlAdminForm;
	
	if($rowFee['_table']=='mn_customer'){
		$rowInfo = $c->_model->_viewDetail($rowFee['_table'], $rowFee['table_id']);
		$name = $rowInfo['name'];
		$phone = $rowInfo['phone'];
		$email = $rowInfo['email'];
		$total = number_format($rowFee['price'], 0, ',', '.');
		$balance_due = 0;
	}else if($rowFee['_table']=='mn_contract'){
		$rowInfo = $c->_model->_viewDetail($rowFee['_table'], $rowFee['table_id']);
		$name = $rowInfo['name'];
		$phone = $rowInfo['phone'];
		$email = $rowInfo['email'];
		$total = number_format($rowInfo['price'], 0, ',', '.');
		$balance_due = $rowInfo['price'] - $rowFee['price'];
		$balance_due = number_format($balance_due, 0, ',', '.');
	}
    
	$arr = array(
		'{_number}' => $number,
		'{_amount_received}' => number_format($rowFee['price'], 0, ',', '.'),
		'{_date}' => date('d F, Y', $rowFee['datetime']),
		'{_name}' => $name,
		'{_phone}' => $phone,
		'{_email}' => $email,
		'{_course}' => '',
		'{_course_vn}' => $rowCourse['name'],
		'{_total}' => $total,
		'{_balance_due}' => $balance_due,
	);
	$values = $c->contentReplace($rowEventForm['content'], $arr);
	$name = 'content';
    $others = $cF->ckeditorStandard($name);
    $data = $cF->textArea($name, $values, 'textarea', NULL, $others);
    echo $cF->displayDiv('', $data);
	
	$name = 'btnPrint';
	$properties = array();
	$properties[] = array('propertie'=>'onclick', 'value'=>"ExecuteCommand('preview');");
    $btnSend = $cF->inputButton($name, 'In biên nhận', 'adBtnLarge bgColorBlue1 corner8', $properties);
    echo $cF->displayDiv('', $btnSend.'<span class="adNotes" style="line-height:45px">Ấn Ctrl + P để in</span>');
	return true;
    ?>
</div>