<div id="popup">
	<div class="bg"></div>
	<div class="box" style="position:absolute">
    	<div class="header"><span class="closePP">x</span></div>
    	<div class="content">
        	
        </div>
    	<div class="footer"><span class="btn closePP">Đóng</span></div>
    </div>
</div>

<div id="frm_request_for_service" style="display:none">
	<div id="request-frm" class="frm-loading">
        <div class="loading" style="height:680px"></div>
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
            <select name="number" class="field_item adInput" check="1" message="Chọn số học viên tham dự">
                <option value="">Bạn muốn đăng ký cho bao nhiêu người</option>
                <option value="1">1 người</option>
                <option value="2">2 người</option>
                <option value="3">3 người</option>
                <option value="4">4 người</option>
                <option value="5">5 người</option>
                <option value="6">6 người</option>
                <option value="7">7 người</option>
                <option value="8">8 người</option>
                <option value="9">9 người</option>
                <option value="10">&gt;=10 người</option>
            </select>
            <p class="error"></p>
        </div>
        <div class="txt">
            <p style="margin-bottom:5px">Bạn muốn làm bài kiểm tra đầu vào ngày nào?</p>
            <select name="date" class="adInput date" id="selectDate" style="width:80px">
                <?php for($i=1; $i<=31; $i++){
                    if($i < 10) $zero=0; else $zero='';
                    if(date('d')!=$i) $select=''; else $select='selected="selected"';
                    echo '<option value="'.$zero.$i.'" '.$select.'>'.$i.'</option>';
                }?>
            </select>
            <select name="month" class="adInput date" id="selectMonth" style="width:80px">
                <?php for($i=1; $i<=12; $i++){
                    if($i < 10) $zero=0; else $zero='';
                    if(date('m')!=$i) $select=''; else $select='selected="selected"';
                    echo '<option value="'.$zero.$i.'" '.$select.'>'.$i.'</option>';
                }?>
            </select>
            <select name="year" class="adInput date" id="selectYear" style="width:80px">
                <option value="<?php echo date('Y');?>"><?php echo date('Y');?></option>
            </select>
            <input type="hidden" name="date_khaosat" class="field_item" id="date_khaosat" value="<?php echo date('Y-m-d');?>" />
        </div>
        <div class="txt">
            <p style="margin-bottom:5px">Bạn đóng học phí bằng hình thức nào?</p>
            <select name="payment_option" class="field_item adInput">
                <option value="Chuyển khoản">Chuyển khoản</option>
                <option value="Tại văn phòng Stevbros">Tại văn phòng Stevbros</option>
            </select>
        </div>
        <div class="txt">
            <p style="margin-bottom:5px">Bạn có yêu cầu xuất hoá đơn đỏ cho công ty không? &nbsp; 
                <input type="radio" name="red_invoice" value="0" checked="checked" /> <b>Không</b> &nbsp; 
                <input type="radio" name="red_invoice" value="1" /> <b>Có</b>
            </p>
        </div>
        <div class="txt">
            <input type="text" name="company" class="field_item adInput" maxlength="150" placeholder="Tên công ty" />
            <p class="error"></p>
        </div>
        
        <div class="invoice" style="display:none">
            <div class="txt">
                <input type="text" name="address" class="field_item adInput" maxlength="200" placeholder="Địa chỉ công ty" />
                <p class="error"></p>
            </div>
            <div class="txt">
                <input type="text" name="taxcode" class="field_item adInput" maxlength="20" placeholder="Mã số thuế" />
                <p class="error"></p>
            </div>
        </div>
        
        <div class="txt">
            <textarea type="textarea" name="message" class="field_item adInput" placeholder="Nếu cần tư vấn thêm thông tin gì, mời bạn cho biết" spellcheck="false"></textarea>
            <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
            <input type="hidden" name="header_id" class="field_item" value="" />
            <input type="hidden" name="date_trienkhai" class="field_item" value="" />
        </div>
        <div class="txt">
            <input type="button" name="btnSend" id="btnSend" class="adBtnSmall bgColorBlue" value="<?php echo $lang_var['send'];?>" />
        </div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	
	getDateTime('#selectYear', '#selectMonth', '#selectDate', '#date_khaosat');
	
	$("input[name=red_invoice]").live("click", function(){
		var value = $("input[name=red_invoice]:checked").val();
		if(value=='1') $(".invoice").show(200);
		else $(".invoice").hide(200);
	});
	
    $(".request_for_service").live("click", function(){
		var id = $(this).attr("header_id");
		var date = $(this).attr("date_trienkhai");
		var data = $("#frm_request_for_service").html();
		$("#popup .content").html(data);
		$("input[name=header_id]").val(id);
		$("input[name=date_trienkhai]").val(date);
		$("#popup").show(200);
		sroll_top();
		$("input[name=name]").focus();
	});
	
	$("#btnSend").live("click", function(){
		var fields = ajax_field_all("#popup .field_item"); //console.log(fields);
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
				data = data.replace(/\n/g, "");
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