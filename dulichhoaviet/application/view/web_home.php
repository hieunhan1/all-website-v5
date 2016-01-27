<div class="container">
	<?php
    //tour noi bat
	$color = 0;
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `title`, `description`',
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 8,
		'properties' => 1,
		'order'=>'`_order`',
	);
	$dataListTour = $c->_model->_headerData($arr);
	foreach($dataListTour as $rowListTour){
		$str = '';
		$i = 0;
		$arr = array(
			'lang' => $lang,
			'menu_id' => $rowListTour['id'],
			'properties' => 2,
			'order'=>'`_order` DESC, `datetime` DESC',
			'limit'=> $config['limit_5'],
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$i++;
			if($i%3 != 1) $margin = 'margin-left'; else $margin = '';
			if($row['price']!=0) $price = number_format($row['price'], 0, ',', '.').'đ'; else $price = 'Liên hệ';
			$means = explode(',', $row['means']);
			$str_means = '';
			if(count($means) > 2){
				for($j=1; $j<count($means)-1; $j++){
					$str_means .= '<span class="allIcon icon means'.$means[$j].'"></span>';
				}
				$str_means = '<p class="means">Phương tiện:&nbsp;'.$str_means.'</p>';
			}
			$img = IMAGE_URL.$row['img'];
			if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
			$str .= '<div class="box width margin-bottom '.$margin.'">
				<p class="img imgHeight effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
				<p class="point bgtransparent'.$color.'"><span class="allIcon icon"></span>'.$row['destination'].'</p>
				<p class="clear10"></p>
				<div class="content">
					<h3 class="h3"><a href="'.$row['name_alias'].'" title="'.$row['title'].'" class="color'.$color.'">'.$row['name'].'</a></h3>
					<p class="duration"><span class="allIcon icon"></span>'.$row['duration'].'</p>
					'.$str_means.'
					<p class="clear10"></p>
					<p class="info">'.$row['description'].'</p>
					<p class="price">'.$price.'</p>
					<p class="tourOrder order bgcolor'.$color.' corner5" id-tour="'.$row['id'].'">Đặt tour</p>
					<p class="clear10"></p>
				</div>
			</div>';
		}
		
		echo '<div class="home-title">
			<h2 class="h2"><a href="'.$rowListTour['name_alias'].'" title="'.$rowListTour['title'].'" class="color'.$color.'">'.$rowListTour['name'].'</a></h2>
			<h3 class="h3">'.$rowListTour['description'].'</h3>
		</div>
		<div class="tour-list home-tour-list">
			'.$str.'
			<div class="clear1"></div>
		</div>';
		$color++;
		if($color > 2) $color = 0;
	}
	?>
</div>

<?php //yeu cau dich vu
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 9,
	'properties' => 1,
	'limit'=>'1',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
	$row = $data[0];
	echo '<div class="home-request-service">
		<div class="content">
			<h2 class="h2">'.$row['title'].'</h2>
			<h4 class="h4">'.$row['description'].'</h4>
			<p class="request-for-service adBtnLarge bgColorOranges corner8">Yêu cầu dịch vụ</p>
		</div>
		<p class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['title'].'" /></p>
	</div>';
	include_once('web_request_for_service.php');
}
?>

<div class="container">
	<?php //tai sao chon chung toi
    $arr = array(
        'select' => '`id`, `name`, `img`, `title`, `description`',
        'lang' => $lang,
        'parent' => 0,
        'position_id' => 10,
        'properties' => 1,
        'limit'=>'1',
    );
    $data = $c->_model->_headerData($arr);
    if(count($data) > 0){
        echo '<div id="whychooseus">';
        $row = $data[0];
        echo '<div class="home-title">
            <h2 class="h2">'.$row['title'].'</h2>
            <h3 class="h3">'.$row['description'].'</h3>
        </div>';
        $arr = array(
            'select' => '`id`, `name`, `title`',
            'parent' => $row['id'],
            'position_id' => 10,
            'properties' => 1,
            'order'=>'`_order`',
        );
        $data = $c->_model->_headerData($arr);
        foreach($data as $row){
			$content = $c->_model->_content($row['id']);
            echo '<div class="tab">
                <h3 class="h3">'.$row['title'].'</h3>
                <div class="content viewpost">'.$content['content'].'</div>
            </div>';
        }
        echo '</div>';
    }
	
	//team building
	$arr = array(
        'select' => '`id`, `name`, `name_alias`, `url`, `title`, `description`',
        'lang' => $lang,
        'parent' => 0,
        'position_id' => 11,
        'properties' => 1,
        'limit'=>'1',
    );
    $data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		$row = $data[0];
		echo '<div id="team-building" class="home-team-building">
			<div class="home-title">
				<h2 class="h2"><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['title'].'</a></h2>
				<h3 class="h3">'.$row['description'].'</h3>
			</div>
			<div class="content">';
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `title`',
				'menu_id' => $row['id'],
				'type_id' => 6,
				'properties' => 2,
				'limit'=>'4',
			);
			$data = $c->_model->_headerData($arr);
			$i = 0;
			foreach($data as $row){
				$i++;
				if($i%2==1) $float='left'; else $float='right';
				$img = IMAGE_URL.$row['img'];
				if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
				echo '<div class="box mouseViewmore '.$float.'">
					<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['title'].'" /></a></p>
					<h4 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h4>
				</div>';
			}
		echo '</div>
		</div>';
	}
    ?>
</div>
<div class="clear30"></div>

<div id="home-tour-location">
	<div class="container">
		<h2 class="title"><span class="allIcon icon"></span>Các điểm du lịch phổ biến</h2>
        <div class="content">
        	<?php
			$i = 0;
			$j = 0;
			$left = '';
			$right = '';
            $arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `title`',
				'from' => '`web_header`',
				'where' => "`lang`='{$lang}' AND `status`=1 AND `img`<>'' AND `properties`=1 AND `type_id`=3",
				'order' => 'rand()',
				'limit' => '5'
			);
			$data = $c->_model->_select($arr);
			foreach($data as $row){
				$i++;
				if($i!=1){
					$j++;
					if($j%2 == 1) $float='floatL'; else $float='floatR';
					$left .= '<div class="box '.$float.' mouseViewmore">
						<p class="viewmore"><a href="'.$row['name_alias'].'">Xem chi tiết</a></p>
						<p class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></p>
						<h5 class="h5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h5>
					</div>';
				}else{
					$right .= '<div class="box2 mouseViewmore">
						<p class="viewmore"><a href="'.$row['name_alias'].'">Xem chi tiết</a></p>
						<p class="img2"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></p>
						<h5 class="h5"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h5>
					</div>';
				}
			}
			echo '<div class="left">'.$left.'</div>';
			echo '<div class="right">'.$right.'</div>';
			?>
            <div class="clear20"></div>
        </div>
    </div>
</div>

<?php //khach hang tieu bieu
$arr = array(
	'select' => '`id`, `name`, `url`, `img`, `title`',
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 18,
	'properties' => 2,
	'order'=>'_order',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
	$str = '';
	foreach($data as $row){
		if($row['url']!='') $url=$row['url']; else $url='javascript:;';
		$str .= '<p class="img"><a href="'.$url.'" title="'.$row['name'].'"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></a></p>';
	}
	echo '<div class="container">
		<div id="home-customers">
			<h5 class="title"><a href="" title="">Khách hàng tiêu biểu</a></h5>
			<div class="content">'.$str.'</div>
			<div class="clear1"></div>
		</div>
	</div>';
}
?>