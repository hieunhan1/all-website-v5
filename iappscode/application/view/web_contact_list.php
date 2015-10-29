<div class="container">
    <?php echo $c->viewNavigator($lang, $currentPage['id']);?>
    <div class="viewpost">
    	<h1><?php echo $config['sitename'];?></h1>
        <p><?php echo '<b>'.$language_var['address'].':</b> '.$config['address'];?></p>
        <p><?php echo '<b>'.$language_var['tel'].':</b> <a href="tel:'.$config['tel'].'">'.$config['tel'].'</a>';?><span class="spanContact"><b>Email:</b> <?php echo '<a href="mailto:'.$config['email'].'">'.$config['email'].'</a>';?></span></p>
    </div>
    
    <div id="contact">
        <div class="loading container"><img src="themes/website/img/loader.gif" /></div>
        <div class="info"><?php echo $language_var['customer_info'];?></div>
        <div class="error errorContact"></div>
        <div class="message messageContact"></div>
        <div class="row">
        	<div class="label"><?php echo $language_var['name'];?>:<span class="error">**</span></div>
            <div class="field"><input type="text" name="nameContact" class="txt" maxlength="50" /><p class="error" id="nameContact"></p></div>
            <div class="label">Email:<span class="error">**</span></div>
            <div class="field"><input type="text" name="emailContact" class="txt" maxlength="60" /><p class="error" id="emailContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
        	<div class="label"><?php echo $language_var['tel'];?>:<span class="error">**</span></div>
            <div class="field"><input type="text" name="phoneContact" class="txt" maxlength="20" /><p class="error" id="phoneContact"></p></div>
            <div class="label"><?php echo $language_var['address'];?>:</div>
            <div class="field"><input type="text" name="addressContact" class="txt" maxlength="250" /></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
        	<div class="label"><?php echo $language_var['message'];?>:<span class="error">**</span></div>
            <div class="field2"><textarea name="messageContact" class="textarea"></textarea><p class="error" id="messageContact"></p></div>
            <div class="clear1"></div>
        </div>
        <div class="row">
        	<div class="label">&nbsp;</div>
            <div class="field"><input type="button" name="btnSendContact" class="btn" value="<?php echo $language_var['send'];?>" /></div>
        </div>
    </div>
    <div style="clear:both; height:80px"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$("input[name=btnSendContact]").click(function(){
		var message = check_text_length("textarea[name=messageContact","#messageContact","<?php echo CONS_ERROR_MESSAGE;?>",10);
		var address = $("input[name=addressContact]").val();
		var phone = check_phone("input[name=phoneContact]","#phoneContact","<?php echo CONS_ERROR_PHONE;?>");
		var email = check_email("input[name=emailContact]","#emailContact","<?php echo CONS_ERROR_EMAIL;?>");
		var name = check_text_length("input[name=nameContact]","#nameContact","<?php echo CONS_ERROR_NAME;?>",2);
		if(name==false || email==false || phone==false || message==false) return false;
		$(".loading").show();
		$(".errorContact").html('');
		$(".messageContact").html('');
		
		$.ajax({ 	
			url:"ajax/",
			type:'post',
			data:{webContact:name, email:email, phone:phone, address:address, message:message},
			cache:false,
			success: function(data){
				setTimeout(function(){
					if(data!='0' && data!='2'){
						$("#contact").html('<div class="messageContact viewpost">' +
											'<p class="title">Contact Success</p>' +
											'<p>Please notify that you have contacted successfully to <b><?php echo $config['sitename'];?></b> website. We will reply to you soon.</p>' +
											'<p>Respect,</p>' +
										'</div>');
						$(".loading").hide();
						return true;
					}else if(data=='2'){
						$(".errorContact").html("You manipulate too fast, please try again after 30 seconds.");
						$(".loading").hide();
						return false;
					}else{
						$(".errorContact").html("Error: Please press F5 key to try again");
						$(".loading").hide();
						return false;
					}
				},500);
			}
		});
	});
});
</script>