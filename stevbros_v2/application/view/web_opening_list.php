<div id="opening" class="container">
	<?php
	$i = 0;
    $arr = array(
		'parent' => $currentPage['id'],
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		$str = '';
		$dataKG = $c->_model->_listOpening($row['id']);
		foreach($dataKG as $rowKG){
			$str .= '<li><strong>'.$rowKG['name'].'</strong><br />Khai giảng: '.$rowKG['opening'].'<br />Thời lượng: '.$rowKG['duration'].'<div class="clear10"></div><span class="request_for_service adBtnSmall bgColorBlue corner5" header_id="'.$rowKG['header_id'].'">'.$lang_var['request_for_service'].'</span></li>';
		}
		
		$i++;
		if($i%2 == 1) $float='left'; else $float='right';
		$content = $c->_model->_content($row['id']);
		echo '<div class="box '.$float.'">
			<h2 class="h2">'.$row['name'].'</h2>
			<div class="p viewpost">'.$content['content'].'</div>
			<div class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></div>
			<ol class="opening">'.$str.'</ol>
		</div>';
	}
	?>
    <div class="clear1"></div>
</div>

<div id="popup">
	<div class="bg"></div>
	<div class="box" style="position:absolute">
    	<div class="header"><span class="closePP">x</span></div>
    	<div class="content">
        	<div id="request-frm" class="frm-loading">
            	<div class="loading"></div>
                <div class="error errorGeneral"></div>
                <div class="txt">
                	<input type="text" name="name" class="field_item adInput" maxlength="50" check="2" message="<?php echo $lang_var['error_name'];?>" placeholder="<?php echo $lang_var['name'];?>" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                	<input type="text" name="phone" class="field_item adInput" maxlength="20" check="phone" message="<?php echo $lang_var['error_phone'];?>" placeholder="<?php echo $lang_var['tel'];?>" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <input type="text" name="email" class="field_item adInput" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <input type="text" name="company" class="field_item adInput" maxlength="150" check="3" message="Vui lòng nhập tên doanh nghiệp" placeholder="Tên doanh nghiệp" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <input type="text" name="parts" class="field_item adInput" maxlength="50" check="2" message="Vui lòng nhập bộ phận làm việc" placeholder="Bộ phận làm việc" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <select name="number" class="field_item adInput" check="1" message="Chọn số học viên tham dự">
                    	<option value="">-- Số học viên tham dự --</option>
                        <option value="1">Dưới 10 người</option>
                        <option value="2">Từ 10 đến 19 người</option>
                        <option value="3">Từ 20 đến 25 người</option>
                        <option value="4">Từ 26 đến 30 người</option>
                        <option value="5">Hơn 30 người</option>
                    </select>
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <textarea type="textarea" name="message" class="field_item adInput" placeholder="<?php echo $lang_var['message'];?>" spellcheck="false"></textarea>
                    <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
                    <input type="hidden" name="header_id" class="field_item" value="" />
                </div>
                <div class="txt">
                    <input type="button" name="btnSend" id="btnSend" class="adBtnSmall bgColorBlue" value="<?php echo $lang_var['send'];?>" />
                </div>
            </div>
        </div>
    	<div class="footer"><span class="btn closePP">Đóng</span></div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".request_for_service").click(function(){
		var id = $(this).attr("header_id");
		$("input[name=header_id]").val(id);
		$("#popup").show(200);
		sroll_top();
		$("input[name=name]").focus();
	});
	
	$("#btnSend").click(function(){
		var fields = ajax_field_all(".field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '2';
		
		$("#btnSend, .field_item").attr("disabled", true);
		formLoading(1, '', '')
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				//console.log(data);
				data = $.parseJSON(data);
				var error = data.error;
				var message = data.message;
				setTimeout(function(){
					if(error=='0'){
						$(".frm-loading").html(message);
						return true;
					}else if(error=='1'){
						$("#btnSend, .field_item").attr("disabled", false);
						formLoading(0, message, '');
						return false;
					}
				},500);
			}
		});
	});
});
</script>