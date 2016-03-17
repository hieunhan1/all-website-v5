<?php
$id_tour = '';
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `title`',
	'parent' => $currentPage['root']['id'],
	'type_id' => 3,
	'properties' => 1,
	'order'=>'`_order`',
);
$dataPart = $c->_model->_headerData($arr);
if(count($dataPart)>0){
	$id_tour = 'id="tour"';
	echo '<div id="left" class="left-box">';
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
		foreach($data as $row){
			$str .= '<li class="id-'.$row['id'].'"><a href="'.$row['name_alias'].'" title="'.$row['title'].'" class="allIcon">'.$row['name'].'</a></li>';
		}
		echo '<div class="box">
			<h2 class="h2 id-'.$rowPart['id'].'"><a href="'.$rowPart['name_alias'].'" title="'.$rowPart['title'].'">'.$rowPart['name'].'</a><span class="allIcon icon iconCong"></span></h2>
			<ul class="hidden">'.$str.'</ul>
		</div>';
	}
	if(!isset($currentMenu)) $id_current = $currentPage['id']; else  $id_current = $currentMenu['id'];
	
	$arr = array(
		'select' => '`id`',
		'lang' => $lang,
		'type_id' => 3,
		'position_id' => 7,
		'properties' => 1,
		'limit'=>'1',
	);
	$data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		echo '<div class="clear30"></div>
		<div class="tour-list">';
		$rowBox = $data[0];
		$arr = array(
			'select' => '*',
			'type_id' => 3,
			'menu_id' => $rowBox['id'],
			'properties' => 2,
			'limit'=>'2',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$img = IMAGE_URL.$row['img'];
			if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
			if($row['price']!=0) $price = number_format($row['price'], 0, ',', '.').'đ'; else $price = 'Liên hệ';
			$means = explode(',', $row['means']);
			$str_means = '';
			if(count($means) > 2){
				for($j=1; $j<count($means)-1; $j++){
					$str_means .= '<span class="allIcon icon means'.$means[$j].'"></span>';
				}
				$str_means = '<p class="means">Phương tiện:&nbsp;'.$str_means.'</p>';
			}
			echo '<div class="box" style="width:100%">
				<p class="img imgHeight2 effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
				<p class="point bgtransparent1"><span class="allIcon icon"></span>'.$row['destination'].'</p>
				<p class="clear10"></p>
				<div class="content">
					<h3 class="h3"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
					<p class="duration"><span class="allIcon icon"></span>'.$row['duration'].'</p>
					'.$str_means.'
					<p class="clear10"></p>
					<p class="info">'.$row['description'].'</p>
					<p class="price">'.$price.'</p>
					<p class="tourOrder order bgcolor1 corner5" id-tour="'.$row['id'].'">Đặt tour</p>
					<p class="clear10"></p>
				</div>
			</div>';
		}
		echo '</div>';
	}
	
	echo '</div>
	<script type="text/javascript">
	$(document).ready(function(e) {
		$("#left .h2").click(function(){
			$("#left ul").hide(200);
			$("#left .box .h2 span").removeClass("iconTru");
			$("#left .box .h2 span").addClass("iconCong");
			
			$(this).parent(".box").children("ul").show(200);
			$(this).parent(".box").children(".h2").children("span").addClass("iconTru");
		});
		
		var current = "'.$id_current.'";
		$(".id-" + current).parents(".box").removeClass("active");
		$(".id-" + current).parents(".box").children("ul").removeClass("hidden").show();
		
		$(".id-" + current).addClass("active");
		$(".id-" + current).parents(".box").children(".h2").children("span").addClass("iconTru");
	});
	</script>';
}
?>