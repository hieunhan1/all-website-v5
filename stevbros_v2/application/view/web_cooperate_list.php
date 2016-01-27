<div class="container">
    <div id="recruit" class="viewpost">
    	<h1><?php echo $currentPage['name'];?></h1>
        <?php
        $content = $c->_model->_content($currentPage['id']);
		echo $content['content'];
		?>
    </div>
    
    <div id="frm-submission" class="frm-loading">
    	<div class="loading" style="width:63%; height:880px; background-size:10%"></div>
        <div class="error errorGeneral"></div>
    	<div class="txt"><input type="text" name="name" class="field_item adInput" maxlength="60" check="2" message="<?php echo $lang_var['error_name'];?>" placeholder="<?php echo $lang_var['name'];?>" /><p class="error"></p></div>
    	<div class="txt"><input type="text" name="phone" class="field_item adInput" maxlength="20" check="phone" message="<?php echo $lang_var['error_phone'];?>" placeholder="<?php echo $lang_var['tel'];?>" /><p class="error"></p></div>
    	<div class="txt"><input type="text" name="email" class="field_item adInput" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" /><p class="error"></p></div>
    	<div class="txt"><input type="text" name="address" class="field_item adInput" maxlength="200" check="5" message="<?php echo $lang_var['error_address'];?>" placeholder="<?php echo $lang_var['address'];?>" /><p class="error"></p></div>
        <div class="txt"><input type="text" name="company" class="field_item adInput" maxlength="150" placeholder="Tên công ty (nếu có)" /></div>
        <div class="txt"><input type="text" name="website" class="field_item adInput" maxlength="50" placeholder="Website (nếu có)" /></div>
        <div class="txt"><input type="text" name="position" class="field_item adInput" maxlength="50" placeholder="Chức vụ (nếu có)" /></div>
        
        <h4 class="h4">Bạn muốn hợp tác khóa học nào?</h4>
        <div class="txt" style="line-height:150%; margin-left:30px">
        	<?php
            $arr = array(
				'menu_id'=>70,
				'type_id'=>3,
				'properties'=>2,
				'order'=>'`_order`',
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				echo '<p><input type="checkbox" name="courses_id" class="checkBoxItem" value="'.$row['id'].'" style="float:left; margin:5px 10px 0 0" /> '.$row['name'].'</p>';
			}
			?>
            <input type="hidden" name="courses_id" class="field_item listValueItem" maxlength="30" check="2" message="Chọn khóa đào tạo" />
        	<p class="error"></p>
        </div>
        
        <div class="txt"><input type="text" name="address2" class="field_item adInput" maxlength="200" check="5" message="<?php echo $lang_var['error_address'];?>" placeholder="Địa điểm khoá học sẽ triển khai" /><p class="error"></p></div>
        <div class="txt">
            <select name="number" class="field_item adInput" check="1" message="Chọn số học viên tham dự">
                <option value="">Số học viên tham dự</option>
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
            <p style="margin-bottom:5px">Dự kiến khoá học được triển khai vào ngày nào?</p>
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
            <input type="hidden" name="date_trienkhai" class="field_item" id="date_trienkhai" value="<?php echo date('Y-m-d');?>" />
        </div>
        
        <div class="txt"><input type="text" name="name2" class="field_item adInput" maxlength="60" check="2" message="Nhập tên khách hàng" placeholder="Tên khách hàng" /><p class="error"></p></div>
        
        <div class="txt">
            <textarea type="textarea" name="message" class="field_item adInput" placeholder="Nếu cần tư vấn thêm thông tin gì, mời bạn cho biết" spellcheck="false"></textarea>
            <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
        </div>
        
    	<div><input type="button" name="btnSubmit" class="adBtnSmall bgColorBlue corner5 btn" value="GỬI" /></div>
    </div>
</div>
<div class="clear30"></div>
<div class="clear30"></div>

<script type="text/javascript">
$(document).ready(function () {
	
	getDateTime('#selectYear', '#selectMonth', '#selectDate', '#date_trienkhai');
	
	$("input[name=btnSubmit]").live("click", function(){
		var fields = ajax_field_all(".field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '4';
		
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