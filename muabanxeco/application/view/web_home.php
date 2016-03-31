<div id="homepage" class="container">
    <?php
	//xe co
	$arr = array(
		'select' => '`id`, `name`, `title`, `description`',
		'lang' => $lang,
		'position_id' => 7,
		'properties' => 1,
		'order'=>'`_order`',
	);
	$dataCar = $c->_model->_headerData($arr);
	foreach($dataCar as $rowCar){
		$str = '';
		$i = 0;
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `img`, `price`, `title`',
			'lang' => $lang,
			'menu_id' => $rowCar['id'],
			'properties' => 2,
			'order'=>'`_order` DESC, `datetime` DESC',
			'limit' => $config['limit_5'],
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$i++;
			if($i%4 != 1) $style='margin'; else $style='';
			
			if($row['price']==0){
				$price = '';
				$buy = 'Liên hệ';
			}else{
				$price = '<p class="price">'.number_format($row['price'], 0, ',', '.').'đ</p>';
				$buy = 'Mua';
			}
			
			$img = IMAGE_URL_THUMB.$row['img'];
			if($row['img']=='') $img = CONS_IMAGE_DEFAULT;
			
			$str .= '<div class="box width '.$style.'">
				<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
				<h3><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
				'.$price.'
				<p class="buy corner5" id-car="'.$row['id'].'" name="'.$row['name'].'">'.$buy.'</p>
			</div>';
		}
		echo '<div class="list_cars home_cars">
			<h2 class="title-home fontOther">'.$rowCar['name'].'</h2>
			<h3 class="info-home">'.$rowCar['description'].'</h3>
			'.$str.'
			<p class="clear1"></p>
		</div>';
	}
	
	//hoat dong - tin tuc
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `img`, `title`',
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 8,
		'properties' => 1,
		'order' => '_order'
	);
	$dataBox = $c->_model->_headerData($arr);
	$i = 0;
	foreach($dataBox as $rowBox){
		$i++;
		if($i%2 == 1) $float='style="float:left"'; else $float='style="float:right"';
		echo '<div class="home-news" '.$float.'> <h2 class="title-header fontOther">'.$rowBox['name'].'</h2>';
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
			'menu_id' => $rowBox['id'],
			'properties' => 2,
			'order' => '`datetime` DESC, `_order` DESC',
			'limit'=>'3',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$img = IMAGE_URL_THUMB.$row['img'];
			if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
			echo '<div class="box">
				<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['title'].'" class="corner5" /></a></p>
				<h4 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h4>
				<p class="info">'.$row['description'].'</p>
				<p class="clear1"></p>
			</div>';
		}
		echo '</div>';
	}
	?>
</div>