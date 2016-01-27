<div id="support">
	<div class="title">Hãy gọi cho chúng tôi! &nbsp; &nbsp; <span class="close">[ x ]</span></div>
    <div class="content">
    	<?php
        foreach($dataBranch as $row){
			$fax=''; $phone=''; $email='';
			if($row['fax']!='') $fax=' - <span class="allIcon icon fax">&nbsp;</span>'.$row['fax'];
			if($row['phone']!='') $phone='<p><span class="allIcon icon tel">&nbsp;</span><a href="tel:'.$row['phone'].'"><b>'.$row['phone'].'</b></a></p>';
			if($row['email']!='') $email='<p><span class="allIcon icon email">&nbsp;</span><a href="mailto:'.$row['email'].'">'.$row['email'].'</a></p>';
			echo '<div class="tab">'.$row['shorten'].'
				<div class="info">
					<p><span class="allIcon icon address">&nbsp;</span>'.$row['address'].'</p>
					<p><span class="allIcon icon tel">&nbsp;</span><a href="tel:'.$row['tel'].'"><b>'.$row['tel'].'</b></a>'.$fax.'</p>
					'.$phone.$email.'
				</div>
			</div>';
		}
		?>
        <div class="clear5"></div>
        
        <div class="ajax"></div>
    </div>
</div>
<script type="text/jscript">
$(document).ready(function(e) {
    $("#support .tab:first").addClass("active");
	var str = $("#support .tab .info:first").html();
	$("#support .ajax").html(str);
	
	$("#support .tab").live("click", function(){
		$("#support .tab").removeClass("active");
		$(this).addClass("active");
		var str = $(this).children(".info").html();
		$("#support .ajax").html(str);
	});
	
	$("#support .title").click(function(){
		if( !$("#support .hideSupport").length ){
			$("#support .content").addClass("hideSupport").hide(200);
		}else{
			$("#support .content").removeClass("hideSupport").show(200);
		}
	});
});
</script>