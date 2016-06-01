<div id="left" class="right-box">
<?php
//service
$arr = array(
	'select' => '`id`',
	'parent' => 0,
	'type_id' => 3,
	'properties' => 1,
	'order'=>'`_order`',
);
$dataRoot = $c->_model->_headerData($arr);
foreach($dataRoot as $rowRoot){
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `title`',
		'lang' => $lang,
		'parent' => $rowRoot['id'],
		'type_id' => 3,
		'properties' => 1,
		'position_id' => 5,
		'order'=>'`_order`',
	);
	$dataPart = $c->_model->_headerData($arr);
	foreach($dataPart as $rowPart){
		$str = '';
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `title`',
			'parent' => $rowPart['id'],
			'type_id' => 3,
			'properties' => 1,
			'order'=>'`_order`',
		);
		$data = $c->_model->_headerData($arr);
		if(count($data)==0){
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `title`',
				'menu_id' => $rowPart['id'],
				'properties' => 2,
				'order'=>'`_order` DESC, `datetime` DESC',
			);
			$data = $c->_model->_headerData($arr);
		}
		foreach($data as $row){
			$str .= '<li class="id-'.$row['id'].'"><a href="'.$row['name_alias'].'" title="'.$row['title'].'" class="allIcon">'.$row['name'].'</a></li>';
		}
		echo '<div class="box">
			<h2 class="h2 id-'.$rowPart['id'].'"><a href="'.$rowPart['name_alias'].'" title="'.$rowPart['title'].'">'.$rowPart['name'].'</a><span class="allIcon icon iconCong"></span></h2>
			<ul class="hidden">'.$str.'</ul>
		</div>';
	}
	if(!isset($currentMenu)){
		$id_current = $currentPage['id'];
	}else{
		$id_current = $currentMenu['id'];
	}
}

//call
echo '<div class="box-call corner5">
	<p>'.$lang_var['call_us'].':</p>
	<p class="call"><a href="tel:'.$config['tel'].'"><span class="allIcon icon"></span>'.$config['tel'].'</a></p>
</div>';

//news
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `url`, `title`',
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 10,
	'properties' => 1,
	'limit'=>'1',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
	$row = $data[0];
	echo '<div class="box-news corner5"> <h3>'.$row['title'].'</h3>';
	
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `img`, `title`',
		'menu_id' => $row['id'],
		'properties' => 2,
		'order' => '`datetime` DESC, `_order` DESC',
		'limit'=>'5',
		'where' => "AND `id`<>'{$currentPage['id']}'",
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		$img = IMAGE_URL_THUMB.$row['img'];
		if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
		echo '<div class="item">
			<p class="img"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['title'].'" /></a></p>
			<h4 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h4>
		</div>';
	}
	
	echo '</div>';
}
?>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	$("#left .h2").click(function(){
		$("#left ul").hide(200);
		$("#left .box .h2 span").removeClass("iconTru");
		$("#left .box .h2 span").addClass("iconCong");
		
		$(this).parent(".box").children("ul").show(200);
		$(this).parent(".box").children(".h2").children("span").addClass("iconTru");
	});
	
	var current = "<?php echo $id_current;?>";
	$(".id-" + current).parents(".box").removeClass("active");
	$(".id-" + current).parents(".box").children("ul").removeClass("hidden").show();
	
	$(".id-" + current).addClass("active");
	$(".id-" + current).parents(".box").children(".h2").children("span").addClass("iconTru");
});
</script>