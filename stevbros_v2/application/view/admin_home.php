<div id="adContent" style="padding:20px 0">
	<div class="btnClearCache adBtnSmall bgColorRed corner8">Xóa cache, khi có cập nhật trong quản trị</div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$(".btnClearCache").click(function(){
		var str = '<p style="font-weight:bold">Xóa cache, khi có cập nhật trong quản trị?</p> <p class="clear20"></p>';
			str+= '<p> <span id="clearCache" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 closeDataAction">No</span> </p>';
			str+= '<p class="clear1"></p>';
		viewDataAction(str);
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
				viewDataAction(str);
				return true;
			}
		});
	});
});
</script>