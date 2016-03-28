<div id="contact" class="container">
	<div class="content">
        <div id="contact-info">
        	<h1 class="h1"><?php echo $config['sitename'];?></h1>
            <p><span class="allIcon address"></span><?php echo $config['address'];?></p>
            <p>
            	<span class="allIcon phone"></span><?php echo $config['tel'];?> &nbsp; - &nbsp; 
                <span class="allIcon email"></span><?php echo $config['email'];?>
            </p>
            <div class="clear30"></div>
        </div>
        
        <div id="contact-frm" class="frm-loading">
            <div class="loading"></div>
            <div class="error errorGeneral"></div>
            <div class="row">
                <div class="field2"><input type="text" name="name" class="txt adInput field_item" maxlength="50" check="2" message="<?php echo $lang_var['error_name'];?>" placeholder="<?php echo $lang_var['name'];?>" /><p class="error"></p></div>
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><input type="text" name="phone" class="txt adInput field_item" maxlength="20" check="phone" message="<?php echo $lang_var['error_phone'];?>" placeholder="<?php echo $lang_var['tel'];?>" /><p class="error"></p></div>
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><input type="text" name="email" class="txt adInput field_item" maxlength="60" check="email" message="<?php echo $lang_var['error_email'];?>" placeholder="Email" /><p class="error"></p></div>
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><textarea type="text" name="message" class="textarea adInput field_item" check="10" message="<?php echo $lang_var['error_message'];?>" placeholder="<?php echo $lang_var['message'];?>"></textarea><p class="error"></p></div>
                <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
                <div class="clear1"></div>
            </div>
            <div class="row">
                <div class="field2"><input type="button" name="btnSendContact" id="btnSendContact" class="btn" value="<?php echo $lang_var['send'];?>" /></div>
            </div>
        </div>
        
        <div id="google-map"></div>
        <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&language=vi"></script>
		<script type="text/javascript">
        function initialize(myLatlng, tags, title) {
            var myOptions = {
                zoom: 16,
                center: myLatlng,
                //deny
                scrollwheel: false,
                mapTypeControl: false,
                //navigationControl: false,
                //scaleControl: false,
                //draggable: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
        
            var map = new google.maps.Map(document.getElementById(tags), myOptions);
            // Biến text chứa nội dung sẽ được hiển thị
            //var text = "<b style='color:#00F' " + "style='text-align:center'>Nhà của mình nè!<br />" + "<img src='citihouse-logo.jpg'  /></b>";
            var infowindow = new google.maps.InfoWindow({
                //content: text,
                size: new google.maps.Size(100,50),
                position: myLatlng
            });
            //infowindow.open(map);    
            var marker = new google.maps.Marker({
                position : myLatlng, 
                map : map,
                title : title,
            });
        }
        
        var myLatlng = new google.maps.LatLng(<?php echo $config['googlemap']?>); initialize(myLatlng, "google-map", "<?php echo $config['sitename']?>");
        </script>
        
        <div class="clear30"></div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnSendContact").click(function(){
		var fields = ajax_field_all("#contact-frm .field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectContact'] = '1';
		fields['type'] = '1';
		
		$("#btnSendContact, .field_item").attr("disabled", true);
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