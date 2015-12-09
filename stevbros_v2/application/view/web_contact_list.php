<div id="h1-article">
	<div class="container">
    	<h1 class="h1"><?php echo '<a href="'.$currentPage['name_alias'].'" title="'.$currentPage['title'].'">'.$currentPage['title'].'</a>';?></h1>
	</div>
</div>
<div class="container">
	<div id="contact-info" class="viewpost">
    	<div class="item"><?php echo "<b>{$language_var['tel']}</b>: {$config['tel']}";?></div>
        <div class="item"><?php echo "<b>{$language_var['phone']}</b>: {$config['hotline']}";?></div>
        <div class="item"><b>Email:</b> <?php echo $config['email'];?></div>
        <div class="clear1"></div>
		<?php
        $data = $c->_model->_content($currentPage['id']);
        echo $data['content'];
        ?>
    </div>
    <div class="clear20"></div>
    
    <div id="contact-frm">
        <div class="loading"><img src="themes/website/img/loader.gif" /></div>
        <div class="error errorContact"></div>
        <div class="message messageContact"></div>
        <div class="row">
            <div class="field"><input type="text" name="name" class="txt field_item" maxlength="50" check="2" message="<?php echo $language_var['error_name'];?>" placeholder="<?php echo $language_var['name'];?>" /><p class="error" id="nameContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
            <div class="field"><input type="text" name="phone" class="txt field_item" maxlength="20" check="phone" message="<?php echo $language_var['error_phone'];?>" placeholder="<?php echo $language_var['tel'];?>" /><p class="error" id="phoneContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
            <div class="field"><input type="text" name="email" class="txt field_item" maxlength="60" check="email" message="<?php echo $language_var['error_email'];?>" placeholder="Email" /><p class="error" id="emailContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
            <div class="field2"><textarea type="textarea" name="message" class="textarea field_item" check="10" message="<?php echo $language_var['error_message'];?>" placeholder="<?php echo $language_var['message'];?>"></textarea><p class="error" id="messageContact"></p></div>
            <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
            <input type="hidden" name="ip_address" class="field_item" value="<?php echo $_SERVER['REMOTE_ADDR'];?>" />
            
            <!--<input type="radio" name="radio" class="field_item" value="0" />Value 0  |  
            <input type="radio" name="radio" class="field_item" value="1" />Value 1
            <br />
            <input type="checkbox" name="checkbox" class="field_item" value="0" />check 0  |  
            <input type="checkbox" name="checkbox" class="field_item" value="1" />check 1  |  
            <input type="checkbox" name="checkbox" class="field_item" value="2" />check 2
            <br />
            <input type="checkbox" name="checkbox2" class="field_item" value="0" />check 0  |  
            <input type="checkbox" name="checkbox2" class="field_item" value="1" />check 1  |  
            <input type="checkbox" name="checkbox2" class="field_item" value="2" />check 2
            <br />
            <select type="select" name="select" class=""><option value="1">1</option><option value="2">2</option></select>-->
            
            <div class="clear1"></div>
        </div>
        <div class="row">
            <div class="field"><input type="button" name="btnSendContact" class="btn" value="<?php echo $language_var['send'];?>" /></div>
        </div>
    </div>
    
    <div id="contact-img"><img src="<?php echo $currentPage['img']?>" alt="<?php echo $currentPage['title']?>" /></div>
    
    <div style="clear:both; height:80px"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSendContact]").click(function(){
		var fields = ajax_field_all(".field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '1';
		
		$(".loading").show();
		$(".errorContact").html('');
		$(".messageContact").html('');
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){ //console.log(data);
				data = $.parseJSON(data);
				var error = data.error;
				var message = data.message;
				setTimeout(function(){
					if(error=='0'){
						$("#contact-frm").html(message);
						return true;
					}else if(error=='1'){
						$(".errorContact").html(message);
						$(".loading").hide();
						return false;
					}
				},500);
			}
		});
	});
});
</script>