<div class="clear30"></div>
<?php
$cF = new controlAdminForm;

$id = $c->createEditData($table, $arrAction, $rowDetail);
$data = $cF->inputHidden('id', $id, 'ad_field');
echo $data;

$name = 'status';
$values = array();
$values[] = array('name'=>'Chưa phục hồi', 'id'=>'0');
$values[] = array('name'=>'Đã phục hồi', 'id'=>'1');
if($rowDetail[$name]=='') $valueCheck=1;
else $valueCheck=$rowDetail[$name];
$data = $cF->inputRadio($name, $values, $valueCheck, 'ad_field adRadio');
echo $cF->displayDiv('Trạng thái', $data);
	
echo $cF->displayDiv('Date', '<b class="label2">'.$c->viewDateTime($rowDetail['datetime']).'</b>' );
echo $cF->displayDiv('User', '<b class="label2">'.$rowDetail['username'].'</b>' );
echo $cF->displayDiv('Name', '<span class="label2">'.$rowDetail['name'].'</span>' );
echo $cF->displayDiv('Action', '<span class="label2">'.$rowDetail['action'].'</span>' );
echo $cF->displayDiv('Table', '<span class="label2">'.$rowDetail['_table'].'</span>' );

if(isset($rowDetail['content'])){
	echo '<div id="viewLog" class="seo tagsHidden">';
	$data = explode('fields%%%values', $rowDetail['content']);
	if(count($data)==2){
		$data_keys = explode(',', $data[0]);
		$data_values = explode('%%%', $data[1]);
		for($i=0; $i<count($data_keys); $i++){
			$name = ucfirst(trim($data_keys[$i],'`'));
			if(isset($data_values[$i])) echo $cF->displayDiv($name, '<span class="label2">'.$data_values[$i].'</span>' );
		}
	}
	echo '</div>';
}
	
$btnSubmit='';
if($rowDetail['action']=='update' || $rowDetail['action']=='delete'){
	if($rowDetail['status']==1){
		echo $cF->displayDiv('Date restore', '<b class="label2 adMessage">'.$c->viewDateTime($rowDetail['date_restore']).'</b>' );
		echo $cF->displayDiv('User restore', '<b class="label2 adMessage">'.$rowDetail['user_restore'].'</b>' );
	}else{
		$name = 'btnViewLog';
		$btnSubmit = $cF->inputButton($name, 'View log', 'adBtnLarge bgColorBlue1 corner8');
	}
}

$name = 'btnRestore';
$btnRestore = $cF->inputButton($name, 'Phục hồi', 'adBtnLarge bgColorGreen corner8 tagsHidden');

$name = 'btnCancel';
$btnCancel = $cF->btnCancel($name, 'Quay lại');

echo $cF->displayDiv(' ', $btnSubmit.$btnRestore.$btnCancel);
?>

<script type="text/javascript">
$(document).ready(function() {
    $('#btnViewLog').click(function(){
		$(this).hide(100);
		$('#viewLog').show(200);
		$('#btnRestore').show(200);
	});
	
	$("#btnRestore").click(function(){
		var str = '<p>Phục hồi lại dữ liệu <em class="adMessage"><?php echo $rowDetail['name'];?></em> trong bảng <em class="adMessage"><?php echo $rowDetail['_table'];?></em>?</p> <p class="clear20"></p>';
			str+= '<p> <span id="restore" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
	});
	
	$("#restore").live("click", function(){
		$.ajax({
			url: 'ajax/',
			type: 'POST',
			data:{ajaxRestore:'<?php echo $rowDetail['id']?>'},
			cache:false,
			success: function(data){
				var str='';
				if(data=='1'){
					$("#status1").attr("checked", true);
					str = 'Phục hồi <b class="adMessage">thành công</b> dữ liệu <em><?php echo $rowDetail['name'];?></em> trong bảng <em><?php echo $rowDetail['_table'];?></em>';
				}else{
					str = '<b class="adError">Lỗi: Vui lòng kiểm tra lại</b>';
				}
				
				$("#btnRestore").hide(200);
				popupLoad(str);
				setTimeout(function(){
					popupClose();
				}, 3000);
			}
		});
	});
});
</script>