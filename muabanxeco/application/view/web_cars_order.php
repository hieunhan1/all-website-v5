<div id="popup">
	<div id="popupContent"><div class="process">Lưu thành công</div></div>
    <div id="popupBG"></div>
</div>

<div id="frm-cars-order" style="display:none">
	<div class="frm-cars-order">
    	<div class="error" style="margin-bottom:10px"></div>
    	<div class="field">
        	<input type="text" name="name" class="field_item adInput" maxlength="50" check="2" message="<?php echo $lang_var['error_name'];?>" placeholder="<?php echo $lang_var['name'];?>" />
            <p class="error"></p>
        </div>
    	<div class="field">
        	<input type="text" name="phone" class="field_item adInput" maxlength="20" check="phone" message="<?php echo $lang_var['error_phone'];?>" placeholder="<?php echo $lang_var['tel'];?>" />
            <p class="error"></p>
        </div>
    	<div class="field">
        	<input type="text" name="email" class="field_item adInput" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" />
            <p class="error"></p>
        </div>
    	<div class="field">
        	<input type="text" name="address" class="field_item adInput" maxlength="200" placeholder="Địa chỉ" />
        </div>
        
    	<div class="field">
        	<textarea name="message" class="field_item adInput" placeholder="Yêu cầu"></textarea>
            
            <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
            <input type="hidden" name="header_id" class="field_item" value="" />
        </div>
        
    	<div class="field">
        	<input type="button" name="btnSubmitCarsOrder" value="Liên hệ" class="adBtnSmall bgColorBlack corner5" />
            <input type="button" name="btnLoading" value="&nbsp;" class="adBtnSmall loading corner5" />
            <input type="button" name="btnCancel" value="Hủy" class="adBtnSmall bgColorGray corner5 popupClose" />
        </div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".buy").live("click", function(){
		$(".list_cars .box").removeClass("activeCarsOrder");
		$(this).parents(".box").addClass("activeCarsOrder");
		
		var id = $(this).attr("id-car");
		var img = $(".activeCarsOrder .img a").html();
		var name = $(".activeCarsOrder h3 a").html();
		
		var str = '<div id="popupCars">';
			str+= '<p class="img">' + img + '</p>';
			str+= '<h6 class="title">' + name + '</h6>';
			str+= '<p class="clear10"></p>';
			str+= '<p class="info">Hãy điền thông tin của bạn vào bên dưới, chúng tôi sẽ liên hệ tư vấn.</p>';
			str+= $("#frm-cars-order").html();
			str+= '</div>';
				
		popupLoad(str);
		
		$("input[name=header_id]").val(id);
	});
	
	$("input[name=btnSubmitCarsOrder]").live("click", function(){
		var fields = ajax_field_all("#popup .field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '2';
		
		$("input[name=btnSubmitCarsOrder]").hide(200);
		$("#popup input[name=btnLoading]").show(200);
		$("#popup .field_item").attr("disabled", true);
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache:false,
			success: function(data){
				console.log(data);
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var error = data.error;
				var message = data.message;
				setTimeout(function(){
					if(error=='0'){
						$("#popup .frm-cars-order").html(message + '<p><input type="button" name="btnCancel" value="Close" class="adBtnSmall bgColorGray corner5 popupClose" /></p><p class="clear10"></p>');
						popupAutoSize();
						return true;
					}else if(error=='1'){
						$(".frm-cars-order .error:first").html(message);
						$(".field_item").attr("disabled", false);
						$("input[name=btnSubmitCarsOrder]").show(200);
						$("input[name=btnLoading]").hide(200);
						return false;
					}
				},500);
			}
		});
	});
});
</script>