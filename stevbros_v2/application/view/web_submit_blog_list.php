<div class="container">
    <div id="recruit" class="viewpost">
    	<h1><?php echo $currentPage['name'];?></h1>
        <?php
        $content = $c->_model->_content($currentPage['id']);
		echo $content['content'];
		?>
    </div>
    
    <div id="frm-submission" class="frm-loading">
    	<div class="loading" style="width:62%; height:680px; background-size:20%"></div>
        <div class="error errorGeneral"></div>
        
    	<div class="txt"><input type="text" name="name" class="field_item adInput" maxlength="200" check="2" message="Vui lòng nhập tiêu đề" placeholder="Tiêu đề" /><p class="error"></p></div>
        
        <div class="txt"><input type="text" name="authors" class="field_item adInput" maxlength="50" check="2" message="Vui lòng nhập tác giả" placeholder="Tác giả" /><p class="error"></p></div>
        
        <div class="txt"><input type="text" name="other" class="field_item adInput" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" /><p class="error"></p></div>
        
        <div class="txt"><textarea name="description" class="field_item adInput" spellcheck="false" check="2" message="Vui lòng nhập mô tả ngắn" placeholder="Mô tả ngắn"></textarea><p class="error"></p></div>
        
    	<div class="txta"><textarea type="ckeditor" name="rejectcontent" id="rejectcontent" class="field_item" check="250" message="Nội dung phải hơn 250 ký tự"></textarea><p class="error"></p></div>
        
        <input type="hidden" name="menu_id" class="field_item" value=",71," />
        <input type="hidden" name="type_id" class="field_item" value="2" />
        <input type="hidden" name="properties" class="field_item" value="2" />
        <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
        <input type="hidden" name="status" class="field_item" value="0" />
        
    	<div><input type="button" name="btnSubmit" class="adBtnSmall bgColorBlue corner5 btn" value="GỬI" /></div>
    </div>
</div>
<div class="clear30"></div>
<div class="clear30"></div>

<script type="text/javascript">
CKEDITOR.replace( 'rejectcontent', {
	uiColor: '#E1E1E1',
	height: 300,
	toolbar: [
		['RemoveFormat','PasteFromWord','Bold', 'Italic', 'Underline', 'FontSize', 'JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock', '-','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent'],
		['Link','Unlink','Iframe','-','Image', 'Video', 'Table']
	]
});
</script>

<script type="text/javascript">
$(document).ready(function () {
	
	getDateTime('#selectYear', '#selectMonth', '#selectDate', '#date_birthday');
	
	$("input[name=btnSubmit]").live("click", function(){
		var fields = ajax_field_all(".field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectOpinion'] = '1';
		
		$("input[name=btnSubmit], .field_item").attr("disabled", true);
		formLoading(1, '', '')
		
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
						$(".frm-loading").html(message);
						return true;
					}else if(error=='1'){
						$("input[name=btnSubmit], .field_item").attr("disabled", false);
						formLoading(0, message, '');
						return false;
					}
				},500);
			}
		});
	});
});
</script>