<?php
$cF = new controlAdminForm;

$c->createEditData($table, $arrAction, $rowDetail);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10">';	

	$name = 'status';
	$values = array();
	$values[] = array('name'=>'Chưa phục hồi', 'id'=>'0');
	$values[] = array('name'=>'Đã phục hồi', 'id'=>'1');
	$valueCheck=$rowDetail[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	echo $cF->displayTable('Date create', date('Y-m-d H:i:s', $rowDetail['datetime']));
	echo $cF->displayTable('User create', $rowDetail['username']);
	echo $cF->displayTable('Description', $rowDetail['name']);
	echo $cF->displayTable('Action', $rowDetail['action']);
	echo $cF->displayTable('Table', $rowDetail['table']);
	
	$btnSubmit='';
	if($rowDetail['action']=='update' || $rowDetail['action']=='delete'){
		if($rowDetail['status']==1){
			echo $cF->displayTable('Date restore', date('Y-m-d H:i:s', $rowDetail['date_restore']));
			echo $cF->displayTable('User restore', $rowDetail['user_restore']);
		}else{
			$name = 'btn_view_log';
			$btnSubmit = $cF->inputButton($name, 'View log', 'submitAdmin');
		}
	}elseif($rowDetail['action']=='status'){
		echo $cF->displayTable('Values', $rowDetail['content']);
	}
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name);
	echo $cF->displayTable('', $btnSubmit.$btnCancel);
	
echo '</table></form>';
?>
<div id="view_log" style="display:none">
	<hr />
	<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">
    <?php
	$str='';
    if(isset($rowDetail['content'])) $data = explode('fields%%%values', $rowDetail['content']);
	if(count($data)==2){
		$data_keys = explode(',', $data[0]);
		$data_values = explode('%%%', $data[1]);
		for($i=0; $i<count($data_keys); $i++){
			$str.=$cF->displayTable(ucfirst(trim($data_keys[$i],'`')), $data_values[$i]);
		}
		echo $str;
	}
	$data = '<p style="font-size:110%; color:#F60">Phục hồi lại dữ liệu <b>'.$rowDetail['name'].'</b> trong bảng <b>'.$rowDetail['table'].'</b>? <a href="javascript:;" id="restore"><b>Ấn vào đây!</b></a></p>';
	echo $cF->displayTable('', $data);
	?>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('input[name=btn_view_log]').click(function(){
		$('#view_log').toggle(100);
	});
	
	$("#restore").click(function(){
		if(confirm('Bạn có chắc? Phục hồi lại dữ liệu `<?php echo $rowDetail['name']?>` trong bảng `<?php echo $rowDetail['table']?>`?')){
			$.ajax({
				url: 'ajax/',
				type: 'POST',
				data:{ajaxRestore:'<?php echo $rowDetail['id']?>'},
				cache:false,
				success: function(data){
					if(data=='1'){
						$("#status1").attr("checked", true);
						$('#view_log').html('<p style="font-weight:bold; color:#00F; padding: 20px 0 30px 50px">Phục hồi thành công dữ liệu `<?php echo $rowDetail['name']?>` trong bảng `<?php echo $rowDetail['table']?>`.</p>');
					}else{
						$('#view_log').html('<p class="error">Lỗi: Vui lòng F5 kiểm tra lại</p>');
					}
				}
			});
		}
	});
});
</script>