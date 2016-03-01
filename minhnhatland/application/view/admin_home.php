<div id="adContent" style="padding:20px 0">
	<div class="btnClearCache adBtnSmall bgColorRed corner8">Xóa cache, khi có cập nhật trong quản trị</div>
</div>
<p style="clear:both; padding-top:20px"><?php echo date('Y-m-d H:i:s');?></p>
<script type="text/javascript">
$(document).ready(function(e) {
	$(".btnClearCache").click(function(){
		var str = '<p style="font-weight:bold">Xóa cache, khi có cập nhật trong quản trị?</p> <p class="clear20"></p>';
			str+= '<p> <span id="clearCache" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
	});
    $("#clearCache").live("click", function(){
		$.ajax({
			url: 'ajax/',
			type:'POST',
			data:{clearCache:1},
			cache:false,
			success: function(data) {
				var str='';
				if(data==""){
					str = '<b class="adMessage">Xóa cache thành công</b>';
				}else{
					str = '<b class="adError">Error: ' + data + '</b>';
				}
				popupLoad(str);
				return true;
			}
		});
	});
	popupCloseBG();
});
</script>