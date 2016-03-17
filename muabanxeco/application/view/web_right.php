<div id="right">
<?php
if($currentPage['type']['id']==3){
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `title`',
		'parent' => 0,
		'type_id' => 3,
		'position_id' => 2,
		'properties' => 1,
		'order'=>'`_order`',
	);
	$dataBox = $c->_model->_headerData($arr);
	foreach($dataBox as $rowBox){
		$str = '';
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `title`',
			'parent' => $rowBox['id'],
			'type_id' => 3,
			'properties' => 1,
			'order'=>'`_order`',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$str .= '<li>- <a href="'.$row['name_alias'].'">'.$row['name'].'</a></li>';
		}
		
		echo '<div class="menu">
			<h5><a href="'.$rowBox['name_alias'].'">'.$rowBox['name'].'</a></h5>
			<ul>'.$str.'</ul>
		</div>';
	}
}

$arr = array(
	'select' => '`id`, `name`',
	'parent' => 0,
	'position_id' => 5,
	'properties' => 1,
	'order'=>'`_order`',
);
$dataCar = $c->_model->_headerData($arr);
foreach($dataCar as $rowCar){
	$str = '';
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `title`, `img`, `price`',
		'menu_id' => $rowCar['id'],
		'properties' => 2,
		'order' => '`_order` DESC, `datetime` DESC',
		'limit' => 3,
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		if($row['price']==0){
			$price = '';
			$buy = 'Liên hệ';
		}else{
			$price = '<p class="price">'.number_format($row['price'], 0, ',', '.').'đ</p>';
			$buy = 'Mua';
		}
		
		$img = IMAGE_URL_THUMB.$row['img'];
		if($row['img']=='') $img = CONS_IMAGE_DEFAULT;
			
		$str .= '<div class="box width2">
			<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
			<h3><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
			'.$price.'
			<p class="buy corner5" id-car="'.$row['id'].'" name="'.$row['name'].'">'.$buy.'</p>
		</div>';
	}
	
	echo '<div class="list_cars corner10">
		<h3 class="titleRight iconHot">'.$rowCar['name'].'</h3>
		'.$str.'
	</div>';
}

?>
</div>