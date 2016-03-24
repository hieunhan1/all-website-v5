<div id="sliderHome">
	<div class="content"></div>
    <?php
    $arr = array(
		'select' => '`id`, `name`, `img`, `url`',
		'lang' => $lang,
		'parent' => 0,
		'properties' => 2,
		'type_id' => 16,
		'position_id' => 16,
		'order'=>'rand()',
	);
	$data = $c->_model->_headerData($arr);
	$slider = $data[0];
	
	$strSlider = '';
	$dataSlider = $c->_model->_web_picture('web_header', $slider['id'], 'rand()');
	foreach($dataSlider as $row){
		$strSlider .= '<div class="itemSlider" style="display:none">'.IMAGE_URL.$row['img'].'</div>';
	}
	$strSlider .= '<div class="img headerImg"></div>';
	$strSlider .='<script type="text/javascript">
		$(document).ready(function(e){
			var minNumber = 0;
			var maxNumber = parseInt( $(".itemSlider").length ) - 1;
			var slider = Math.floor( Math.random() * (maxNumber-minNumber + 1) + minNumber );
			var img = $(".itemSlider:eq(" + slider + ")").html();
			$(".headerImg").html(\'<img src="\' + img + \'" alt="'.$slider['name'].'" />\');
		});
	</script>';
	echo $strSlider;
	?>
</div>

<div id="home-project" class="container">
	<?php
	$arr = array(
		'select' => '`id`, `name`, `img`, `title`, `description`',
		'lang' => $lang,
		'properties' => 1,
		'position_id' => 8,
		'type_id' => 3,
		'order'=>'`_order`',
	);
	$dataProject = $c->_model->_headerData($arr);
	foreach($dataProject as $rowProject){
		echo '<div class="home-title">
			<h2 class="h2 fontOther corner10">'.$rowProject['name'].'</h2>
			<h3 class="h3">'.$rowProject['description'].'</h3>
		</div>';
		
		$i = 0;
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
			'menu_id' => $rowProject['id'],
			'properties' => 2,
			'order'=>'`_order` DESC',
			'limit' => $config['limit_3'],
		);
		$data = $c->_model->_headerData($arr);
		echo '<div class="project-list">';
		foreach($data as $row){
			$i++;
			if($i%4 != 1) $margin='margin'; else $margin='';
			echo '<div class="box width4 '.$margin.'">
				<p class="img effect"><a href="'.$row['name_alias'].'"><img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" /></a></p>
				<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
			</div>';
		}
		echo '<div class="clear1"></div> </div>';
	}
	?>
</div>


<?php
//home contact
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 7,
	'properties' => 1,
	'limit'=>'1',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
	$row = $data[0];
	
	echo '<div id="home-contact">
		<div class="container">
			<div class="content">
				<h3 class="title">'.$row['title'].'</h3>
				<p class="info">'.$row['description'].'</p>
				<p class="call">'.$config['tel'].'</p>
			</div>
		</div>
		<p class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></p>
	</div>';
}

//hoat dong - tin tuc
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `img`, `title`',
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 9,
	'properties' => 1,
	'order' => '_order'
);
$dataBox = $c->_model->_headerData($arr);
$i = 0;
echo '<div class="container">';
foreach($dataBox as $rowBox){
	$i++;
	if($i%2 == 1) $float='style="float:left"'; else $float='style="float:right"';
	echo '<div class="home-news" '.$float.'>
		<div class="home-title">
			<h2 class="h2 fontOther">'.$rowBox['title'].'</h2>
		</div>';
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
		'menu_id' => $rowBox['id'],
		'properties' => 2,
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
echo '</div>';
?>