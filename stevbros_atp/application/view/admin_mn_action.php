<div id="frmBtnAction" class="adHidden">
	<div>
    	<span id="btnActionBaoGia" class="adBtnSmall bgColorGreen corner5">Gửi báo giá</span>
        <span id="btnActionEntryTest" class="adBtnSmall bgColorYellow corner5">Làm entry test</span>
        <span id="btnActionPhanTich" class="adBtnSmall bgColorPurple corner5">Phân tích nhu cầu</span>
        <span class="adBtnSmall bgColorGray corner5 popupClose">Close</span>
    </div>
    <div class="clear20"></div>

    <?php
	$arr = array(
		"select" => "`web_sendmail`.*, `web_event_form`.`name` as `event_name`",
		"from" => "`web_sendmail`, `web_event_form`",
		"where" => "`_table`='{$table}' AND `table_id`='{$id}' AND `event_id`=`web_event_form`.`id` ",
		"order" => "`web_sendmail`.`id` DESC"
	);
    $data = $c->_model->_select($arr);
	if(count($data) > 0){
		echo '<div style="line-height:180%"> <p><b>Các sự kiện đã gửi:</b></p>';
		foreach($data as $row){
			echo '<div style="margin-left:25px">
				<div>+ '.$row['event_name'].' <em class="adMessage btnViewSendMail" style="cursor:pointer">View content</em></div>
				<div style="width:500px; margin:0 30px" class="adHidden dataViewSendMail">
					<p>Name: '.$row['name'].'</p>
					<p>Email: '.$row['email'].'</p>
					<p>Date: '.date('H:i d F Y', $row['datetime']).'</p>
					<p><b>Content:</b></p>
					<div style="height:150px; overflow:auto; padding:10px; border:solid 1px #CCC">'.$row['content'].'</div>
				</div>
			</div>';
		}
		echo '</div>';
	}
	?>
    <div class="clear10"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnActionAjax").live("click", function(){
		var data = $("#frmBtnAction").html();
		popupLoad(data);
	});
	
	$(".btnViewSendMail").live("click", function(){
		$(".dataViewSendMail").hide();
		$(this).parents("div").children(".dataViewSendMail").show();
		popupAutoSize();
	});
	
	function loadFormEvent(type){
		var data = '<div><span class="adBtnSmall bgColorGray corner8 popupCloseReload">[ x ] Close</span></div> <div class="clear10"></div>';
			data+= '<iframe src="ajax/?loadFormEvent=' + type + '&table=<?php echo $table?>&id=<?php echo $id?>" style="width:700px; height:500px; border:none"></iframe>';
		popupLoad(data);
	}
	
	$("#btnActionBaoGia").live("click", function(){
		loadFormEvent(1);
	});
	
	$("#btnActionEntryTest").live("click", function(){
		loadFormEvent(2);
	});
	
	$("#btnActionPhanTich").live("click", function(){
		loadFormEvent(3);
	});
});
</script>