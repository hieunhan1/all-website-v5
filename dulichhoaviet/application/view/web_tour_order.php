<div id="popup">
	<div id="popupContent"><div class="process">Lưu thành công</div></div>
    <div id="popupBG"></div>
</div>

<div id="frm-tour-order" style="display:none">
	<div class="frm-tour-order">
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
        	<p>Tổng số khách: <input type="text" name="visitors" class="field_item adInput txt" maxlength="3" value="1" check="1" message="Nhập số khách" placeholder="Người lớn (từ 12 tuổi trở lên)" /> <span class="error"></span> </p>
            <p class="clear5"></p>
            <p>
            	<input type="text" name="children" class="field_item adInput txt" maxlength="2" placeholder="Trẻ em (từ 2 tuổi đến 12 tuổi)" />
            	<input type="text" name="baby" class="field_item adInput txt" maxlength="2" placeholder="Trẻ nhỏ (dưới 2 tuổi)" />
            </p>
        </div>
        
    	<div class="field">
        	<textarea name="message" class="field_item adInput" placeholder="Yêu cầu khác"></textarea>
            
            <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
            <input type="hidden" name="header_id" class="field_item" value="" />
        </div>
        
    	<div class="field">
        	<input type="button" name="btnSubmitTourOrder" value="Đặt vé" class="adBtnSmall bgColorOranges corner5" />
            <input type="button" name="btnLoading" value="&nbsp;" class="adBtnSmall loading corner5" />
            <input type="button" name="btnCancel" value="Hủy" class="adBtnSmall bgColorGray corner5 popupClose" />
        </div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".tourOrder").live("click", function(){
		$(".tour-list .box").removeClass("activeTourOrder");
		$(this).parents(".box").addClass("activeTourOrder");
		
		var id = $(this).attr("id-tour");
		var img = $(".activeTourOrder .img a").html();
		var point = $(".activeTourOrder .point").html();
		var content = $(".activeTourOrder .content").html();
		var name = $(".activeTourOrder .content .h3 a").html();
		
		var str = $("#frm-tour-order").html();
			str+= '<div class="tour-list detail-tour-order"><div class="box" style="width:100%">';
			str+= '<p class="img imgHeight effect">' + img + '</p>';
			str+= '<p class="point bgtransparent1">' + point + '</p>';
			str+= '<p class="clear10"></p>';
			str+= '<div class="content">' + content + '</div>';
			str+= '</div></div> <div class="clear1"></div>';
				
		popupLoad(str);
		
		$("#popup p, #popup div, #popup h3").removeClass("hidden");
		$("#popup .tourOrder").hide();
		$("#popup .content .h3").html(name);
		$("#popup input[name=header_id]").val(id);
	});
	
	$("input[name=btnSubmitTourOrder]").live("click", function(){
		var fields = ajax_field_all("#popup .field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '2';
		
		$("input[name=btnSubmitTourOrder]").hide(200);
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
						$("#popup .frm-tour-order").html(message + '<p><input type="button" name="btnCancel" value="Close" class="adBtnSmall bgColorGray corner5 popupClose" /></p><p class="clear10"></p>');
						popupAutoSize();
						return true;
					}else if(error=='1'){
						$(".frm-tour-order .error:first").html(message);
						$(".field_item").attr("disabled", false);
						$("input[name=btnSubmitTourOrder]").show(200);
						$("input[name=btnLoading]").hide(200);
						return false;
					}
				},500);
			}
		});
	});
});
</script>