<?php
$img=''; $imgArray='';
if(isset($rowDetail['img'])){
	include_once('config/configUpload.php');
	$img = $rowDetail['img'];
	$arr = array(
		'select'=>'*',
		'from'=>'web_picture',
		'where'=>array(
			'_table'=>$table,
			'table_id'=>$id,
		),
		'oder'=>'`id`'
	);
	$data = $c->_model->_select($arr);
	foreach($data as $row){
		if($img!=$row['img']) $style=array('', '');
		else $style=array('active', 'style="display:none"');
		$imgArray.='<div class="item '.$style[0].'">
			<div class="imageSelect" '.$style[1].'>Chọn làm đại diện</div>
			<div class="img"><img src="'.IMAGE_URL_THUMB.$row['img'].'"></div>
			<div class="copylink">Copy link</div>
			<div class="imageDelete"><img src="themes/admin/img/delete.gif"></div>
			<div class="data">{"img":"'.$row['img'].'", "img_url":"'.CONS_BASE_URL.'/'.IMAGE_URL.'"}</div>
		</div>';
	}
}
?>
<div id="copyData">
    <div class="js-message adMessage">Đã lưu vào bộ nhớ.</div>
    <div class="js-data">Copy link image: <b class="js-copydata">A</b></div>
    <div class="js-btn">
    	<button class="js-copybtn adBtnSmall bgColorGreen corner5">Copy</button>
        <button class="js-copycancel adBtnSmall bgColorGray corner5">Cancel</button>
    </div>
</div>
<form id="imageForm" method="post" enctype="multipart/form-data" action="<?php echo CONS_BASE_URL;?>/ajax/">
    <input type="hidden" name="imageUpload" value="1" />
    <input type="hidden" name="img_name" id="img_name" value="" />
    <input type="hidden" name="img" value="<?php echo $img;?>" class="ad_field" id="img" />
    <input type="hidden" name="_table" value="<?php echo $table;?>" />
    <input type="hidden" name="table_id" value="<?php echo $id;?>" />
    <div class="checkbox">
    	<span class="b">Tự xử lý hình ảnh: </span>
    	<span><input type="radio" name="original" value="1" checked="checked" /> Yes</span>
    	<span><input type="radio" name="original" value="0" /> No</span>
        <div class="clear1"></div>
    </div>
    <div id="imageloadstatus"><img src="themes/admin2/img/loader.gif" alt="Uploading..." /></div>
    <div id="imageloadbutton"><input type="file" name="photos[]" id="imagePhoto" multiple="true" /></div>
</form>

<div id="imageUpload"><?php echo $imgArray; ?></div>
<script type="text/javascript">
$(document).ready(function(e) {
	var name = $.trim($("#img_name").val());
	if(name=='') $("#img_name").val($("#name").val());
});
</script>