<div class="container">
    <div id="recruit" class="viewpost">
    	<h1><?php echo $currentPage['name'];?></h1>
        <?php
        $content = $c->_model->_content($currentPage['id']);
		echo $content['content'];
		?>
    </div>
    
    <div id="frm-submission" class="frm-loading">
    	<div class="loading" style="width:65%; height:1500px"></div>
        <div class="error errorGeneral"></div>
    	<h4 class="h4">Thông tin cá nhân</h4>
    	<div class="txt"><input type="text" name="name" class="field_item adInput" maxlength="60" check="2" message="<?php echo $lang_var['error_name'];?>" placeholder="<?php echo $lang_var['name'];?>" /><p class="error"></p></div>
        
    	<div class="txt">
        	<select name="date" class="adInput date" id="selectDate">
            	<option value="">Ngày</option>
                <?php for($i=1; $i<=31; $i++){
					if($i < 10) $zero=0; else $zero='';
					echo '<option value="'.$zero.$i.'">'.$i.'</option>';
				}?>
            </select>
        	<select name="month" class="adInput date" id="selectMonth">
            	<option value="">Tháng</option>
                <?php for($i=1; $i<=12; $i++){
					if($i < 10) $zero=0; else $zero='';
					echo '<option value="'.$zero.$i.'">'.$i.'</option>';
				}?>
            </select>
        	<select name="year" class="adInput date" id="selectYear">
            	<option value="">Năm</option>
                <?php for($i=1950; $i<=date('Y')-20; $i++){
					echo '<option value="'.$i.'">'.$i.'</option>';
				}?>
            </select>
           	<em>(Ngày sinh)</em>
        	<input type="hidden" name="date_birthday" class="field_item" id="date_birthday" check="8" message="Ngày sinh chưa đúng" />
            <p class="error"></p>
        </div>
        
    	<div class="txt"><input type="text" name="phone" class="field_item adInput" maxlength="20" check="phone" message="<?php echo $lang_var['error_phone'];?>" placeholder="<?php echo $lang_var['tel'];?>" /><p class="error"></p></div>
    	<div class="txt"><input type="text" name="email" class="field_item adInput" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" /><p class="error"></p></div>
    	<div class="txt"><input type="text" name="address" class="field_item adInput" maxlength="200" check="5" message="<?php echo $lang_var['error_address'];?>" placeholder="<?php echo $lang_var['address'];?>" /><p class="error"></p></div>
        <div class="txt"><input type="text" name="exp_work" class="field_item adInput" maxlength="3" check="1" message="Nhập số năm kinh nghiệm" placeholder="Số năm kinh nghiệm làm việc" /><p class="error"></p></div>
        <!--
        ckeditor_areas_expertise
        exp_project
        -->
        <h4 class="h4">Bạn muốn hợp tác đào tạo và tư vấn ở lĩnh vực nào?</h4>
        <div class="txt" style="line-height:150%; margin-left:30px">
        	<?php
            $arr = array(
				'parent'=>70,
				'properties'=>1,
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
        
    	<h4 class="h4">Giới thiệu bản thân <span>(giới thiệu chung, ít hơn 250 từ)</span></h4>
    	<div class="txta"><textarea type="ckeditor" name="ckeditor_yourself" id="ckeditor_yourself" class="field_item" check="50" message="Giới thiệu bản thân phải hơn 50 ký tự"></textarea><p class="error"></p></div>
    	<h4 class="h4">Bằng cấp <span>(ví dụ: Tiến sỹ, Thạc sỹ,...)</span></h4>
    	<div class="txta"><textarea type="ckeditor" name="ckeditor_diploma" id="ckeditor_diploma" class="field_item" check="20" message="Bằng cấp phải hơn 20 ký tự"></textarea><p class="error"></p></div>
        <h4 class="h4">Chứng chỉ <span>(ví dụ: PMP, CSM, CSPO, CSP,...)</span></h4>
    	<div class="txta"><textarea type="ckeditor" name="ckeditor_certificate" id="ckeditor_certificate" class="field_item" check="20" message="Chứng chỉ phải hơn 20 ký tự"></textarea><p class="error"></p></div>
        <h4 class="h4">Kinh nghiệm <span>(giới thiệu chi tiết quá trình làm việc và nghiên cứu)</span></h4>
    	<div class="txta"><textarea type="ckeditor" name="ckeditor_experience" id="ckeditor_experience" class="field_item" check="50" message="Kinh nghiệm phải hơn 50 ký tự"></textarea><p class="error"></p></div>
        
    	<div><input type="button" name="btnSubmit" class="adBtnSmall bgColorBlue corner5 btn" value="GỬI" /></div>
    </div>
</div>
<div class="clear30"></div>
<div class="clear30"></div>

<script type="text/javascript">
CKEDITOR.replace( 'ckeditor_yourself', {
	uiColor: '#E1E1E1',
	height: 120,
	toolbar: [
		['RemoveFormat','PasteFromWord','Bold', 'Italic', 'Underline', 'FontSize', 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock', '-','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent',],
	]
});
CKEDITOR.replace( 'ckeditor_diploma', {
	uiColor: '#E1E1E1',
	height: 120,
	toolbar: [
		['RemoveFormat','PasteFromWord','Bold', 'Italic', 'Underline', 'FontSize', 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock', '-','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent',],
	]
});
CKEDITOR.replace( 'ckeditor_certificate', {
	uiColor: '#E1E1E1',
	height: 120,
	toolbar: [
		['RemoveFormat','PasteFromWord','Bold', 'Italic', 'Underline', 'FontSize', 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock', '-','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent',],
	]
});
CKEDITOR.replace( 'ckeditor_experience', {
	uiColor: '#E1E1E1',
	height: 120,
	toolbar: [
		['RemoveFormat','PasteFromWord','Bold', 'Italic', 'Underline', 'FontSize', 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock', '-','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent',],
	]
});
</script>

<script type="text/javascript">
    $(document).ready(function () {
		
		getDateTime('#selectYear', '#selectMonth', '#selectDate', '#date_birthday');
		
        $("input[name=btnSubmit]").live("click", function(){
            var fields = ajax_field_all(".field_item"); //console.log(fields);
			if(typeof fields=='boolean') return false;
			fields['rejectTrainer'] = '1';
			
			$(".field_item").attr("disabled", true);
			formLoading(1, '', '');
			
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
							formLoading(0, message, '');
							return false;
						}
					},500);
				}
			});
        });
    });
</script>