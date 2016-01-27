<div id="popup">
	<div id="popupContent" style="background-color:#FFF"><div class="process"></div></div>
    <div id="popupBG"></div>
</div>

<div id="request-for-service" style="display:none">
	<div class="frm-tour-order" style="width:100%">
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
        	Ngày khởi hành:
            <select name="date" class="adInput" id="selectDate" style="width:70px">
            	<option value="">Ngày</option>
                <?php for($i=1; $i<=31; $i++){
					if($i < 10) $zero=0; else $zero='';
					echo '<option value="'.$zero.$i.'">'.$i.'</option>';
				}?>
            </select>
        	<select name="month" class="adInput" id="selectMonth" style="width:75px">
            	<option value="">Tháng</option>
                <?php for($i=1; $i<=12; $i++){
					if($i < 10) $zero=0; else $zero='';
					echo '<option value="'.$zero.$i.'">'.$i.'</option>';
				}?>
            </select>
        	<select name="year" class="adInput" id="selectYear" style="width:70px">
				<?php
                echo '<option value="'.date('Y').'">'.date('Y').'</option>';
				if(date('m') > 7) echo '<option value="'.(date('Y') + 1).'">'.(date('Y') + 1).'</option>';
				?>
            </select>
        	<input type="hidden" name="date_khoihanh" class="field_item" id="date_khoihanh" check="8" message="ngày khởi hành chưa đúng" />
            <p class="error"></p>
        </div>
    	<div class="field">
        	<input type="text" name="address" class="field_item adInput" maxlength="150" placeholder="Điểm khởi hành" check="3" message="Nhập điểm khởi hành" />
            <p class="error"></p>
        </div>
    	<div class="field">
        	<input type="text" name="destination" class="field_item adInput" maxlength="150" placeholder="Điểm đến" check="3" message="Nhập nơi bạn muốn đến" />
            <p class="error"></p>
        </div>
        
    	<div class="field">
        	<div>
            	Tổng số khách: <input type="text" name="visitors" class="field_item adInput" maxlength="3" check="1" message="Nhập số khách" placeholder="Người lớn (từ 12 tuổi trở lên)" />
                <p class="error"></p>
            </div>
            <p class="clear5"></p>
            <p>
            	<input type="text" name="children" class="field_item adInput txt" maxlength="2" placeholder="Trẻ em (từ 2 tuổi đến 12 tuổi)" />
            	<input type="text" name="baby" class="field_item adInput txt" maxlength="2" placeholder="Trẻ nhỏ (dưới 2 tuổi)" />
            </p>
        </div>
        
    	<div class="field">
        	<textarea name="message" class="field_item adInput" placeholder="Yêu cầu khác"></textarea>
            
            <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
        </div>
        
    	<div class="field">
        	<input type="button" name="btnSubmitRequest" value="Yêu cầu dịch vụ" class="adBtnSmall bgColorOranges corner5" />
            <input type="button" name="btnLoading" value="&nbsp;" class="adBtnSmall loading corner5" />
            <input type="button" name="btnCancel" value="Hủy" class="adBtnSmall bgColorGray corner5 popupClose" />
        </div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".request-for-service").live("click", function(){		
		var str = $("#request-for-service").html();
		popupLoad(str);
	});
	
	getDateTime('#selectYear', '#selectMonth', '#selectDate', '#date_khoihanh');
	
	$("input[name=btnSubmitRequest]").live("click", function(){
		var fields = ajax_field_all("#popup .field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '3';
		
		$("input[name=btnSubmitRequest]").hide(200);
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
						$("#popup .frm-tour-order").html(message + '<p><input type="button" name="btnCancel" value="Close" class="adBtnSmall bgColorGray corner5 popupClose" /></p><p class="clear20"></p>');
						popupAutoSize();
						return true;
					}else if(error=='1'){
						$("#popup .frm-tour-order .error:first").html(message);
						$(".field_item").attr("disabled", false);
						$("input[name=btnSubmitRequest]").show(200);
						$("input[name=btnLoading]").hide(200);
						return false;
					}
				},500);
			}
		});
	});
});
</script>