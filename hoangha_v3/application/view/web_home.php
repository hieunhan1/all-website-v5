<div class="container">
	<?php
    //dich vu
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `title`, `description`',
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 7,
		'properties' => 1,
		'order'=>'`_order`',
	);
	$dataService = $c->_model->_headerData($arr);
	$str = '<div id="home-service">';
	foreach($dataService as $rowService){
		$i = 0;
		$str .= '<div class="home-title">
			<h2 class="h2 fontOther"><a href="'.$rowService['name_alias'].'" title="'.$rowService['title'].'">'.$rowService['title'].'</a></h2>
			<h3 class="h3">'.$rowService['description'].'</h3>
		</div>';
		
		$arr = array(
			'parent' => $rowService['id'],
			'properties' => 1,
			'order'=>'`_order`',
		);
		$dataServiceBox = $c->_model->_headerData($arr);
		foreach($dataServiceBox as $rowServiceBox){
			$arr = array(
				'parent' => $rowServiceBox['id'],
				'properties' => 1,
				'order'=>'`_order`',
			);
			$data = $c->_model->_headerData($arr);
			if(count($data)==0){
				$arr = array(
					'menu_id' => $rowServiceBox['id'],
					'properties' => 2,
					'order'=>'`_order` DESC, `datetime` DESC',
				);
				$data = $c->_model->_headerData($arr);
			}
			$strItem = '';
			foreach($data as $row){
				$strItem .= '<li><a href="'.$row['name_alias'].'" title="'.$row['title'].'"><span class="allIcon icon"></span>'.$row['name'].'</a></li>';
			}
			
			$i++;
			if($i%4 != 1) $style='margin'; else $style='';
			$str .= '<div class="box corner5 '.$style.'">
				<p class="img effect"><a href="'.$rowServiceBox['name_alias'].'"><img src="'.IMAGE_URL.$rowServiceBox['img'].'" alt="'.$rowServiceBox['name'].'" /></a></p>
				<h3 class="title"><a href="'.$rowServiceBox['name_alias'].'" title="'.$rowServiceBox['title'].'">'.$rowServiceBox['name'].'</a></h3>
				<ul class="item">'.$strItem.'</ul>
			</div>';
		}
	}
	$str .= '<p class="clear1"></p> </div>';
	
	echo $str;
	?>
</div>

<?php
//home contact
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
	//'lang' => $lang,
	'parent' => 0,
	'position_id' => 8,
	'properties' => 1,
	'limit'=>'1',
);
$dataSale = $c->_model->_headerData($arr);
if(count($dataSale) > 0){
	$rowSale = $dataSale[0];
	
	$arr = array(
		'select' => '`id`, `name`, `name_alias`',
		'parent' => $rowSale['id'],
		'properties' => 1,
		'order' => '`_order`'
	);
	$dataBox = $c->_model->_headerData($arr);
	$i = 0;
	$str = '';
	foreach($dataBox as $rowBox){
		$arr = array(
			'select' => '*',
			'from' => '`web_sale_online`',
			'where' => "`status`=1 AND `menu_id` LIKE '%,{$rowBox['id']},%' ",
			'order' => '`_order`',
			'limit' => 5
		);
		$data = $c->_model->_select($arr);
		$strSale = '';
		foreach($data as $row){
			$strSale .= '<div class="info">
				<p><b>'.$row['name'].'</b></p>
				<p><i>'.$row['regency'].'</i></p>
				<p><span class="allIcon phone"></span><a href="tel:'.$row['phone'].'">'.$row['phone'].'</a></p>
				<p><span class="allIcon email"></span><a href="mailto:'.$row['email'].'">'.$row['email'].'</a></p>
			</div>';
		}
		
		$i++;
		if($i<=3){
			$str .= '<div class="box">
				<h5>'.$rowBox['name'].'</h5>
				'.$strSale.' <p class="clear1"></p>
			</div>';
		}else{
			$str .= '<div class="box2">
				<h5>'.$rowBox['name'].'</h5>
				'.$strSale.' <p class="clear1"></p>
			</div>';
		}
	}
	
	echo '<div id="home-contact">
		<div class="container">
			<div class="content">
				<p class="call">'.$lang_var['call_us'].' <b>'.$config['tel'].'</b></p>
				<p class="or">'.$lang_var['home_or'].'</p>
				<h4 class="title">'.$rowSale['title'].'</h4>
				<div id="home-saleonline" class="corner5">'.$str.'<p class="clear1"></p></div>
			</div>
		</div>
		<p class="img"><img src="'.IMAGE_URL.$rowSale['img'].'" alt="'.$rowSale['name'].'" /></p>
	</div>';
}
?>

<div class="container">
	<?php //tai sao chon chung toi
    $arr = array(
        'select' => '`id`, `name`, `img`, `title`, `description`',
        'lang' => $lang,
        'parent' => 0,
        'position_id' => 9,
        'properties' => 1,
        'limit'=>'1',
    );
    $data = $c->_model->_headerData($arr);
    if(count($data) > 0){
        echo '<div id="whychooseus">';
        $row = $data[0];
        echo '<div class="home-title">
            <h2 class="h2 fontOther">'.$row['title'].'</h2>
            <h3 class="h3">'.$row['description'].'</h3>
        </div>';
        $arr = array(
            'select' => '`id`, `name`, `title`',
            'parent' => $row['id'],
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
	
	//news
	$arr = array(
        'select' => '`id`, `name`, `name_alias`, `url`, `title`, `description`',
        'lang' => $lang,
        'parent' => 0,
        'position_id' => 10,
        'properties' => 1,
        'limit'=>'1',
    );
    $data = $c->_model->_headerData($arr);
	if(count($data) > 0){
		$row = $data[0];
		echo '<div id="home-news">
			<div class="home-title">
				<h2 class="h2 fontOther">'.$row['title'].'</h2>
				<h3 class="h3">'.$row['description'].'</h3>
			</div>';
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
				'menu_id' => $row['id'],
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
    <p class="clear20"></p>
</div>

<?php //hiep hoi
$arr = array(
	'select' => '`id`, `name`, `url`, `img`, `title`',
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 11,
	'properties' => 1,
	'limit' => 1,
);
$dataHiepHoi = $c->_model->_headerData($arr);
if(count($dataHiepHoi) > 0){
	$rowHiepHoi = $dataHiepHoi[0];
	
	$str = '';
	$arr = array(
		'select' => '`id`, `name`, `url`, `img`, `title`',
		'parent' => $rowHiepHoi['id'],
		'properties' => 1,
		'order' => '`_order`',
	);
	$dataBox = $c->_model->_headerData($arr);
	foreach($dataBox as $rowBox){
		$data = $c->_model->_web_picture('web_header', $rowBox['id']);
		$str .= '<div class="left"><h5 class="title">'.$rowBox['title'].'</h5>';
		foreach($data as $row){
			$str .= '<p class="img effect"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></p>';
		}
		$str .= '<p class="clear1"></p></div>';
	}
	
	echo '<div id="home-partner">
		<div class="container">
			<div class="content">
				'.$str.'
				<p class="clear1"></p>
			</div>
		</div>
		<div class="partner-img"><img src="'.IMAGE_URL.$rowHiepHoi['img'].'" alt="'.$rowHiepHoi['name'].'" /></div>
	</div>';
}
?>