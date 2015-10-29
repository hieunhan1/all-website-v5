<div id="chucnang">
<?php
foreach($controlAdmin as $row){
	$link = CONS_LINK_ADMIN.'/'.$row['url'].'/';
	if($table!=$row['url']) $style=''; else $style='style="color:#00F"';
	if($row['other']==1) $hr='<div style="clear:both; height:4px"><hr /></div>'; else $hr='';
	echo '<div class="item"><a href="'.$link.'">
		<img src="'.CONS_ADMIN_CSS_IMG.$row['img'].'" />
		<p>'.$row['name'].'</p>
	</a></div>'.$hr;
}
?>
</div>