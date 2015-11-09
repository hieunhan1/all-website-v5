<?php
if(isset($_GET['type_id'])) $type_id=$_GET['type_id']; else $type_id=CONS_TYPE_ID_MENU;
$id = $rowHeader['id'];
$img = $rowHeader['img'];
$url = $urlImg[$type_id]['url_img'];
$url_thumb = $urlImg[$type_id]['url_img_thumb'];
$type = $urlImg[$type_id]['type'];
$imgArray='';

if(isset($original)){
	$check0=''; $check1='';
	if($original==0) $check0='checked="checked"';
	else if($original==1) $check1='checked="checked"';
	$original = '<p><input type="radio" name="original_check" id="original1" class="radio" value="1" '.$check1.' /> Xử lý ảnh &nbsp; &nbsp; <input type="radio" name="original_check" id="original0" class="radio" value="0" '.$check0.' /> Giữ nguyên bản gốc</p><br />';
}else $original='';

if(isset($dataContent)){
	$checkArray=1;
	$multiUpload='multiple="true"';
	if(isset($rowContent['arr_img'])){
	$m = explode(',', $rowContent['arr_img']);
		for($i=0; $i<count($m); $i++){
			if($m[$i]!=$img){
				$selectAvatar='';
				$display='';
			}else{
				$selectAvatar='active';
				$display='style="display:none"';
			}
			if($m[$i]!='') $imgArray .= '<div class="item '.$selectAvatar.'" name="'.$m[$i].'" link="'.CONS_BASE_URL.'/'.$url.$m[$i].'">
				<div class="imageSelect" '.$display.'>Chọn làm đại diện</div>
				<div class="img"><img src="'.$url_thumb.$m[$i].'" /></div>
				<div class="copylink">Copy link</div>
				<div class="imageDelete"><img src="'.CONS_ADMIN_CSS_IMG.'delete.gif" /></div>
			</div>';
		}
	}
}else{
	$checkArray=0;
	$multiUpload='';
	if($img!=''){
		$imgArray = '<div class="item" name="'.$img.'">
			<div class="imageSelect">Chọn làm đại diện</div>
			<div class="img"><img src="'.$url_thumb.$img.'" /></div>
			<div class="copylink">Copy link</div>
			<div class="imageDelete"><img src="'.CONS_ADMIN_CSS_IMG.'delete.gif" /></div>
		</div>';
	}
}
?>
<tr>
	<td class="label">Upload ảnh</td>
    <td>
    	<div id="copyData">
            <div class="js-message message">Đã lưu vào bộ nhớ.</div>
            <div class="js-data">Copy link image: <b class="js-copydata">A</b></div>
            <div class="js-btn"><button class="js-copybtn">Copy</button> <button class="js-copycancel">Cancel</button></div>
        </div>
		<?php echo $original;?>
        <form id="imageForm" method="post" enctype="multipart/form-data" action="<?php echo CONS_BASE_URL;?>/ajax/">
            <input type="hidden" name="imageUpload" value="<?php echo $type;?>" />
            <input type="hidden" name="id" id="id" value="<?php echo $id;?>" />
            <input type="hidden" name="original" value="1" />
            <input type="hidden" name="checkArray" value="<?php echo $checkArray;?>" />
            <div id="imageloadstatus"><img src="<?php echo CONS_ADMIN_CSS_IMG;?>loader.gif" alt="Uploading..." /></div>
            <div id="imageloadbutton"><input type="file" name="photos[]" id="imagePhoto" <?php echo $multiUpload;?> /></div>
        </form>
    
    	<div id="imageUpload"><?php echo $imgArray;?></div>
	</td>
</tr>