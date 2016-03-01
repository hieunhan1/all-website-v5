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
				<div class="img"><a href="'.$row['name_alias'].'"><img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" /></a></div>
				<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
			</div>';
		}
		echo '<div class="clear1"></div> </div>';
	}
	?>
</div>

<?php
$arr = array(
	'select' => '`id`, `name`, `img`, `title`, `description`',
	'lang' => $lang,
	'parent' => 0,
	'properties' => 1,
	'position_id' => 9,
	'order'=>'`_order`',
);
$data = $c->_model->_headerData($arr);
if(count($data)>0){
	$row = $data[0];
	echo '<div class="home-service">
		<div class="content">
			<div class="container">
				<h2 class="h2">'.$row['title'].'</h2>
				<h3 class="h3">'.$row['description'].'</h3>
				<p class="btn"><span class="adBtnLarge bgColorOranges corner8">Yêu cầu đào tạo</span></p>
			</div>
		</div>
		<div class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['title'].'" /></div>
	</div>';
}
?>

<div class="container">
	<div id="whychooseus">
    	<?php
        $arr = array(
			'select' => '`id`, `name`, `title`, `description`',
			'lang' => $lang,
			'parent' => 0,
			'properties' => 1,
			'position_id' => 10,
			'order'=>'`_order`',
		);
		$dataWhy = $c->_model->_headerData($arr);
		if(count($dataWhy)>0){
			$rowWhy = $dataWhy[0];
			echo '<div class="home-title">
				<h2 class="h2 title2 fontOther">'.$rowWhy['title'].'</h2>
				<h3 class="h3">'.$rowWhy['description'].'</h3>
			</div>';
			
			$arr = array(
				'select' => '`id`, `name`, `title`, `description`',
				'lang' => $lang,
				'parent' => $rowWhy['id'],
				'properties' => 1,
				'order'=>'`_order`',
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				$cotent = $c->_model->_content($row['id']);
				echo '<div class="tab">
					<h3 class="h3">'.$row['title'].'</h3>
					<div class="content viewpost" style="display: block;">'.$cotent['content'].'</div>
				</div>';
			}
		}
		?>
    </div>
    
    <div class="home-feeling">
    	<?php
        $arr = array(
			'select' => '`id`, `name`, `name_alias`, `url`, `title`, `description`',
			'lang' => $lang,
			'properties' => 1,
			'position_id' => 11,
			'order'=>'`_order`',
		);
		$dataFeeling= $c->_model->_headerData($arr);
		if(count($dataWhy)>0){
			$rowFeeling = $dataFeeling[0];
			echo '<div class="home-title">
				<h2 class="h2 title2 fontOther"><a href="'.$rowFeeling['name_alias'].'" title="'.$rowFeeling['title'].'">'.$rowFeeling['title'].'</a></h2>
				<h3 class="h3 title3">'.$rowFeeling['description'].'</h3>
			</div>';
			
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
				'lang' => $lang,
				'menu_id' => $rowFeeling['id'],
				'properties' => 2,
				'order' => 'rand()',
				'limit' => 3,
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				$img = IMAGE_URL_THUMB.$row['img'];
				if(!file_exists('../'.$img) || $row['img']=='') $img=CONS_IMAGE_DEFAULT;
				echo '<div class="box">
					<p class="img corner5 effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
					<h4 class="title"><a href="'.$row['name_alias'].'" title="'.$row['name'].'">'.$row['name'].'</a></h4>
					<p class="info">'.$row['description'].'</p>
					<p class="clear1"></p>
				</div>';
			}
		}
		?>
    </div>
    
    <div class="clear30"></div>
</div>

<?php
//hoat dong netspace
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `url`, `img`, `title`, `description`',
	'lang' => $lang,
	'properties' => 1,
	'position_id' => 15,
	'order'=>'`_order`',
);
$dataHoatDong= $c->_model->_headerData($arr);
if(count($dataHoatDong) > 0){
	$rowHoatDong = $dataHoatDong[0];
	
	$arr = array(
		'select' => '`id`, `name`',
		'menu_id' => $rowHoatDong['id'],
		'properties' => 2,
		'type_id' => 8,
		'order'=>'`_order` DESC, `datetime` DESC',
		'limit' => 2,
	);
	$dataPhoto= $c->_model->_headerData($arr);
	$strPhoto = array();
	foreach($dataPhoto as $rowPhoto){
		$data = $c->_model->_web_picture('web_header', $rowPhoto['id']);
		$i=0;
		foreach($data as $row){
			$i++;
			if($i <= 5){
				$strPhoto[] = array(
					'id' => $row['id'],
					'name' => $row['name'],
					'img' => $row['img'],
				);
			}
		}
	}
	$i=0; $str='';
	foreach($strPhoto as $row){
		$i++;
		if($i%5 != 1) $margin='margin'; else $margin='';
		$str .= '<p class="img2 '.$margin.'">
			<a class="fancybox-buttons img" data-fancybox-group="button" href="'.IMAGE_URL.$row['img'].'">
					<img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" />
			</a>
		</p>';
	}
	$str .= '<script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
	<script type="text/javascript" src="js/extension/source/helpers/jquery.fancybox-buttons.js"></script>
	<script type="text/javascript" src="js/extension/lib/jquery.mousewheel-3.0.6.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="js/extension/source/helpers/jquery.fancybox-buttons.css" />
	<script type="text/javascript">
	$(document).ready(function() {
		$(".fancybox").fancybox();
		$(".fancybox-buttons").fancybox({
			openEffect  : "none",
			closeEffect : "none",
			prevEffect : "none",
			nextEffect : "none",
			closeBtn  : false,
			helpers : {
				title : {
					type : "inside"
				},
				buttons	: {}
			},
			afterLoad : function() {
				this.title = "Image " + (this.index + 1) + " of " + this.group.length + (this.title ? " - " + this.title : "");
			}
		});
	});
	</script>';
	
	$arr = array(
		'select' => '`id`, `name`, `name_alias`, `code`',
		'menu_id' => $rowHoatDong['id'],
		'properties' => 2,
		'type_id' => 9,
		'order'=>'`_order` DESC, `datetime` DESC',
		'limit' => 1,
	);
	$dataVideo= $c->_model->_headerData($arr);
	$rowVideo = $dataVideo[0];
	echo '<div class="home-activity">
		<div class="content">
			<div class="container">
				<h5 class="h5">'.$rowHoatDong['title'].'</h5>
				<h6 class="h6">'.$rowHoatDong['description'].'</h6>
				<div class="photos">'.$str.'</div>
				
				<div class="videos">
					<iframe src="https://www.youtube.com/embed/'.$rowVideo['code'].'?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
				</div>
			</div>
		</div>
		<div class="img"><img src="'.IMAGE_URL.$rowHoatDong['img'].'" alt="'.$rowHoatDong['name'].'" /></div>
	</div>';
}

?>

<div class="container">
	<div class="home-news">
    	<?php
        $arr = array(
			'select' => '`id`, `name`, `url`, `title`, `description`',
			'lang' => $lang,
			'parent' => 0,
			'properties' => 1,
			'position_id' => 12,
			'order'=>'`_order`',
		);
		$dataNews= $c->_model->_headerData($arr);
		if(count($dataNews)>0){
			$rowNews = $dataNews[0];
			echo '<div class="home-title">
				<h2 class="h2 title2 fontOther"><a href="'.$rowNews['url'].'" title="'.$rowNews['title'].'">'.$rowNews['title'].'</a></h2>
				<h3 class="h3 title3">'.$rowNews['description'].'</h3>
			</div>';
			
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `img`, `title`, `description`',
				'lang' => $lang,
				'menu_id' => $rowNews['id'],
				'properties' => 2,
				'order' => '`_order` DESC, `datetime` DESC',
				'limit' => 5,
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				$img = IMAGE_URL_THUMB.$row['img'];
				if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
				echo '<div class="box">
					<p class="img corner5 effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
					<h4 class="title"><a href="'.$row['name_alias'].'" title="'.$row['name'].'">'.$row['name'].'</a></h4>
					<p class="info">'.$row['description'].'</p>
					<p class="viewmore"><a href="'.$row['name_alias'].'" title="'.$row['name'].'">Xem thêm &rarr;</a></p>
					<p class="clear1"></p>
				</div>';
			}
		}
		?>
    </div>
    
    <div class="home-recruit">
    	<?php // tuyen dung
        $arr = array(
			'select' => '`id`, `name`, `name_alias`, `title`, `description`',
			'lang' => $lang,
			'parent' => 0,
			'properties' => 1,
			'position_id' => 13,
			'order'=>'`_order`',
		);
		$dataRecruit = $c->_model->_headerData($arr);
		if(count($dataRecruit)>0){
			//list city
			$arr = array(
				'select' => '*',
				'from' => '`web_listcity`',
				'where' => '`status`=1',
			);
			$data = $c->_model->_select($arr);
			$arrCity = array();
			foreach($data as $row){
				$arrCity[$row['id']] = $row['name'];
			}
			
			$rowRecruit = $dataRecruit[0];
			echo '<div class="home-title">
				<h2 class="h2 title2 fontOther"><a href="'.$rowRecruit['name_alias'].'" title="'.$rowRecruit['title'].'">'.$rowRecruit['title'].'</a></h2>
				<h3 class="h3 title3">'.$rowRecruit['description'].'</h3>
			</div>
			<div id="recruit-list" style="width:100%; margin:0">';
			
			$arr = array(
				'select' => '`id`, `name`, `name_alias`, `description`, `wage`, `workplaces`',
				'lang' => $lang,
				'menu_id' => $rowRecruit['id'],
				'properties' => 2,
				'order' => '`_order` DESC, `datetime` DESC',
				'limit' => 5,
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				echo '<div class="box">
					<div class="content-home">
						<h3 class="title"><a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link">'.$row['name'].'</a></h3>
						<p class="info">'.$row['description'].'</p>
						<p class="wage"><span class="icon allIconBlack iconMoney"></span>Lương: '.$row['wage'].'</p>
						<p class="workplaces"><span class="icon allIconBlack iconAddress"></span>Địa điểm làm việc: '.$arrCity[$row['workplaces']].'</p>
						<a href="'.$row['name_alias'].'" class="viewmore">Xem chi tiết &rarr;</a>
					</div>
					<div class="clear1"></div>
				</div>';
			}
			echo '</div>';
		}
		?>
    </div>
    
    <div class="clear30"></div>
</div>

<div class="home-partner">
	<div class="container"></div>
</div>