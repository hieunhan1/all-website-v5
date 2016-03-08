<div id="contact" class="container">
	<div class="content">
        <div id="contact-info">
            <?php
            $arr = array(
				'select' => '*',
				'from' => '`web_branch`',
				'where' => "`status`=1 AND `lang`='{$lang}'",
				'order' => '`_order`',
			);
			$data = $c->_model->_select($arr);
			$strGoogle = '';
			foreach($data as $row){
				echo '<div class="box">
					<p class="name">'.$row['name'].'</p>
					<p><span class="allIcon address"></span>'.$row['address'].'</p>
					<div>
						<p><a href="tel:'.$row['tel'].'"><span class="allIcon phone"></span>'.$row['tel'].'</a></p>
						<p><span class="allIcon fax">&nbsp;</span>'.$row['fax'].'</p>
						<p><a href="javascript:;" class="viewMap" name="'.$row['name'].'" point="'.$row['googlemap'].'">'.$lang_var['view_map'].'</a></p>
					</div>
					<p class="clear1"></p>
				</div>';
			}
			?>
            <div class="clear1"></div>
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
        </script>
        
        <script type="text/javascript">
		$(document).ready(function(e) {
			var name = $(".viewMap:first").attr("name");
			var point = $(".viewMap:first").attr("point");
				point = point.split(',');
			var myLatlng = new google.maps.LatLng( $.trim(point[0]), $.trim(point[1]) );
			initialize(myLatlng, "google-map", name);
			
			$(".viewMap").live("click", function(){
				var name = $(this).attr("name");
				var point = $(this).attr("point");
					point = point.split(',');
				
				var myLatlng = new google.maps.LatLng( $.trim(point[0]), $.trim(point[1]) );
				initialize(myLatlng, "google-map", name);
			});
        });
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