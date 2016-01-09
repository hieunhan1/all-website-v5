<div id="popup">
	<div class="bg"></div>
	<div class="box" style="position:absolute">
    	<div class="header"><span class="closePP">x</span></div>
    	<div class="content">
        	<div id="request-frm" class="frm-loading">
                <div class="loading" style="height:750px"></div>
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
                    <input type="text" name="company" class="field_item adInput" maxlength="150" check="3" message="Vui lòng nhập tên công ty" placeholder="Tên công ty" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <input type="text" name="website" class="field_item adInput" maxlength="30" placeholder="Website công ty" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <input type="text" name="parts" class="field_item adInput" maxlength="50" check="2" message="Vui lòng nhập bộ phận làm việc" placeholder="Bộ phận làm việc" />
                    <p class="error"></p>
                </div>
                <?php
                if($currentPage['typeID']==1){
					echo '<div class="txt"><select name="header_id" class="field_item adInput" check="1" message="Chọn khóa học"><option value="">Bạn muốn yêu cầu khoá học nào?</option>';
					$arr = array(
						'menu_id'=>70,
						'type_id'=>3,
						'properties'=>2,
						'order'=>'`_order`',
					);
					$data = $c->_model->_headerData($arr);
					foreach($data as $row){
						echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
					}
					echo '</select><p class="error"></p> </div>';
				}else{
					echo '<input type="hidden" name="header_id" class="field_item" value="" />';
				}
				?>
                <div class="txt">
                    <select name="number" class="field_item adInput" check="1" message="Chọn số học viên tham dự">
                        <option value="">Số học viên tham dự</option>
                        <option value="11">Dưới 10 người</option>
                        <option value="12">Từ 10 đến 19 người</option>
                        <option value="13">Từ 20 đến 25 người</option>
                        <option value="14">Từ 26 đến 30 người</option>
                        <option value="15">Hơn 30 người</option>
                    </select>
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <p style="margin-bottom:5px">Bạn muốn làm khảo sát PHÂN TÍCH NHU CẦU ĐÀO TẠO vào ngày nào?</p>
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
                    <p style="margin-bottom:5px">Dự kiến khoá học được triển khai vào ngày nào?</p>
                    <select name="date" class="adInput date" id="selectDate2" style="width:80px">
                        <?php for($i=1; $i<=31; $i++){
                            if($i < 10) $zero=0; else $zero='';
                            if(date('d')!=$i) $select=''; else $select='selected="selected"';
                            echo '<option value="'.$zero.$i.'" '.$select.'>'.$i.'</option>';
                        }?>
                    </select>
                    <select name="month" class="adInput date" id="selectMonth2" style="width:80px">
                        <?php for($i=1; $i<=12; $i++){
                            if($i < 10) $zero=0; else $zero='';
                            if(date('m')!=$i) $select=''; else $select='selected="selected"';
                            echo '<option value="'.$zero.$i.'" '.$select.'>'.$i.'</option>';
                        }?>
                    </select>
                    <select name="year" class="adInput date" id="selectYear2" style="width:80px">
                        <option value="<?php echo date('Y');?>"><?php echo date('Y');?></option>
                    </select>
                    <input type="hidden" name="date_trienkhai" class="field_item" id="date_trienkhai" value="<?php echo date('Y-m-d');?>" />
                </div>
                <div class="txt">
                    <input type="text" name="address" class="field_item adInput" maxlength="200" check="2" message="Vui lòng nhập địa điểm khoá học sẽ triển khai" placeholder="Địa điểm khoá học sẽ triển khai" />
                    <p class="error"></p>
                </div>
                <div class="txt">
                    <textarea type="textarea" name="message" class="field_item adInput" placeholder="Nếu cần tư vấn thêm thông tin gì, mời bạn cho biết" spellcheck="false"></textarea>
                    <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
                </div>
                <div class="txt">
                    <input type="button" name="btnSend" id="btnSend" class="adBtnSmall bgColorBlue" value="<?php echo $lang_var['send'];?>" />
                </div>
            </div>
        </div>
    	<div class="footer"><span class="btn closePP">Đóng</span></div>
    </div>
</div>

<div id="frm_request_for_service" style="display:none">
	
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	
	getDateTime('#selectYear', '#selectMonth', '#selectDate', '#date_khaosat');
	getDateTime('#selectYear2', '#selectMonth2', '#selectDate2', '#date_trienkhai');
	
    $(".request_for_service").live("click", function(){
		var id = $(this).attr("header_id");
		//var data = $("#frm_request_for_service").html();
		$("input[name=header_id]").val(id);
		//$("#popup .content").html(data);
		$("#popup").show(200);
		sroll_top();
		$("input[name=name]").focus();
	});
	
	$("#btnSend").live("click", function(){
		var fields = ajax_field_all(".field_item"); //console.log(fields);
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