<div class="container">
	<div id="cooperate">
    	<div class="viewpost">
            <h1><?php echo $currentPage['title'];?></h1>
            <h2 style="font-size:120%"><?php echo $currentPage['description'];?></h2>
        </div>
        
        <div id="contact-frm" class="frm-loading" style="width:80%; float:none">
            <div class="loading" style="width:44%"></div>
            <div class="error errorGeneral"></div>
            <div class="row">
                <div class="field2"><input type="text" name="name" class="txt field_item" maxlength="50" check="2" message="<?php echo $lang_var['error_name'];?>" placeholder="<?php echo $lang_var['name'];?>" /><p class="error" id="nameContact"></p></div>
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><input type="text" name="phone" class="txt field_item" maxlength="20" check="phone" message="<?php echo $lang_var['error_phone'];?>" placeholder="<?php echo $lang_var['tel'];?>" /><p class="error" id="phoneContact"></p></div>
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><input type="text" name="email" class="txt field_item" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" /><p class="error" id="emailContact"></p></div>
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><textarea type="textarea" name="message" class="textarea field_item" check="10" message="<?php echo $lang_var['error_message'];?>" placeholder="<?php echo $lang_var['message'];?>"></textarea><p class="error" id="messageContact"></p></div>
                <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><input type="button" name="btnSend" class="btn" value="<?php echo $lang_var['send'];?>" /></div>
            </div>
            <div class="clear1"></div>
        </div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSend]").click(function(){
		var fields = ajax_field_all(".field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '3';
		
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
						$("#btnSendContact, .field_item").attr("disabled", false);
						formLoading(0, message, '');
						return false;
					}
				},500);
			}
		});
	});
});
</script>