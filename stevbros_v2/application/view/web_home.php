<!--header-->
<div class="home-header">
    <div class="content">
        <div class="top">
            <div class="logo"><?php echo '<a href="'.$logoPMI['url'].'" target="_blank"><img src="'.IMAGE_URL.$logoPMI['img'].'" alt="'.$logoPMI['title'].'" /></a>';?></div>
            <div class="cart-user">
                <a href="http://stevbros.com/" target="_blank" title="STEVBROS GLOBAL"><span class="allIcon icon cart"><span>0</span></span></a>
                <span class="allIcon icon user">&nbsp;</span>
            </div>
            <div class="search-header allIcon"><input type="text" name="txtSearch" id="txtSearch" placeholder="Tìm kiếm" /></div>
        </div>

        <div class="main">
        	<div class="container">
            	<div class="logo"><?php echo '<a href="'.$logoStevbros['url'].'" title="'.$logoStevbros['title'].'"><img src="'.IMAGE_URL.$logoStevbros['img'].'" alt="'.$logoStevbros['title'].'" /></a>';?></div>
                <div class="menu">
                	<?php
					$i=0;
                    $arr = array(
						'lang' => $lang,
						'parent' => 0,
						'position_id' => 2,
						'order'=>'`_order`',
					);
					$data = $c->_model->_headerData($arr);
					foreach($data as $row){
						$i++;
						if($i!=1) $line='class="line"'; else $line='';
						if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
						echo '<li><a href="'.$url.'" '.$line.'>'.$row['name'].'</a></li>';
					}
					?>
                </div>
            </div>
        </div>
        
        <div class="mainpoint">
        	<?php
			$arr = array(
				'lang' => $lang,
				'parent' => 0,
				'type_id' => 16,
				'menu_id'=>$currentPage['id'],
			);
			$data = $c->_model->_headerData($arr);
			if(count($data) > 0){
				$slider = $data[0];
				$data = $c->_model->_web_picture('web_header', $slider['id'], 'rand()');
				$sliderImg = $data[0];
				echo $slider['description'];
			}
			?>
        </div>
    </div>
    
	<div class="img">
    	<?php
        if(isset($sliderImg)){
			$name=$sliderImg['name'];
			$img=IMAGE_URL.$sliderImg['img'];
		}else{
			$name='STEVBROS TRAINING & CONSULTANCY';
			$img='themes/website/img/bg-home-default.jpg';
		}
		echo '<img src="'.$img.'" alt="'.$name.'" />';
		?>
    </div>
</div>
<script type="text/javascript">
	$(document).ready(function(e) {
        $(window).bind('scroll', function () {
			if ($(window).scrollTop() > 70) {
				$('.home-header .main').addClass('home-header-fix');
			} else {
				$('.home-header .main').removeClass('home-header-fix');
			}
		});
    });
</script>
<?php flush();?>

<!--courses-->
<div class="container">
	<?php
    $arr = array(
		'lang' => $lang,
		'parent' => 0,
		'position_id' => 7,
		'order'=>'`_order`',
	);
	$dataCourse = $c->_model->_headerData($arr);
	foreach($dataCourse as $rowCourse){
		$i=0;
		echo '<div class="home-title">
			<h2 class="h2">'.$rowCourse['name'].'</h2>
			<h3 class="h3">'.$rowCourse['description'].'</h3>
		</div>
		<div class="home-courses">';
		$arr = array(
			'type_id'=>3,
			'menu_id' => $rowCourse['id'],
			'order'=>'`_order`',
			'limit'=>'6',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			$i++;
			if($i%2==1) $float='left'; else $float='right';
			$title = explode(',', $row['tags'], 2);
			echo '<div class="box '.$float.'">
				<div class="title">
					<p class="number">'.$title[0].'</p>
					<div class="name">'.$row['name'].'</div>
				</div>
				<div class="content">
					<div class="p">'.$row['description'].'</div>
					<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="viewmore">View more <span>&rsaquo;&rsaquo;</span></a>
				</div>
				<div class="clear1"></div>
			</div>';
		}
		echo '<div class="clear20"></div> <div class="clear30"></div>
			<div class="all">
				<a href="'.$rowCourse['name_alias'].'" title"'.$rowCourse['title'].'" class="adBtnLarge bgColorOranges">'.$lang_var['all_courses'].'</a>
			</div> <div class="clear1"></div>
		</div>';
	}
	?>
</div>
<?php flush();?>

<?php
//home contact
$arr = array(
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 8,
	'limit'=>'1',
);
$data = $c->_model->_headerData($arr);
if(count($data)>0){
	$row = $data[0];
	$title = explode(' ', $row['title'], 2);
	echo '<div class="home-contact">
		<div class="content">
			<h3 class="h3"><strong>'.$title[0].'</strong> '.$title[1].'</h3>
			<h4 class="h4">'.$row['description'].'</h4>
			<a href="'.$row['url'].'" class="link adBtnLarge bgColorOranges">'.$lang_var['request_for_service'].'</a>
		</div>
		<div class="img"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['title'].'" /></div>
	</div>';
}

$str='';

//why chose us
$arr = array(
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 9,
	'limit'=>'1',
);
$dataWhy = $c->_model->_headerData($arr);
if(count($dataWhy)>0){
	$dataWhy = $dataWhy[0];
	$str = '<div id="whychooseus">
		<div class="home-title">
			<h2 class="h2" style="font-size:220%">'.$dataWhy['title'].'</h2>
			<h3 class="h3">'.$dataWhy['description'].'</h3>
		</div>';
	$arr = array(
		'parent' => $dataWhy['id'],
		'position_id' => 9,
		'order'=>'`_order`',
	);
	$data = $c->_model->_headerData($arr);
	foreach($data as $row){
		$content = $c->_model->_content($row['id']);
		$str.='<div class="tab">
			<h3 class="h3">'.$row['name'].'</h3>
			<div class="content viewpost">'.$content['content'].'</div>
		</div>';
	}
	$str.='</div>';
}

//bai viet moi
$arr = array(
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 10,
	'limit'=>'1',
);
$data = $c->_model->_headerData($arr);
if(count($data)>0){
	$row = $data[0];
	$arr = array(
		'menu_id' => $row['id'],
		'order'=>'datetime DESC',
		'limit'=>'3',
	);
	$data = $c->_model->_headerData($arr);
	$str.='<div id="postnew">';
	foreach($data as $row){
		$img = IMAGE_URL_THUMB.$row['img'];
		if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
		$str.='<div class="box">
			<div class="img"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
			<div class="content">
				<a href="'.$row['name_alias'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].'</h3></a>
				<div class="p">'.$row['description'].'</div>
			</div>
			<div class="clear1"></div>
		</div>';
	}
	$str.='</div>';
}

echo '<div class="container">'.$str.'<div class="clear30"></div></div>';

//khach hang noi
$str='';
$arr = array(
	'lang' => $lang,
	'parent' => 0,
	'position_id' => 11,
	'limit'=>'1',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
	$rowPosition = $data[0];
	$arr = array(
		'menu_id' => $rowPosition['id'],
		'order'=>'`datetime` DESC',
		'limit'=>'10',
	);
	$data = $c->_model->_headerData($arr);
	$i=0;
	foreach($data as $row){
		$i++;
		if($i!=1) $active=''; else $active='style="display:block"';
		$content = $c->_model->_content($row['id']);
		$name = explode(' - ', $row['name'], 2);
		$degree = '';
		if(isset($name[1])) $degree = ' - <span>'.$name[1].'</span>';
		$str.='<div class="item" id="slider_'.$i.'" '.$active.'>
			<div class="button pre" number="'.($i-1).'">&lsaquo;</div>
			<div class="button next" number="'.($i+1).'">&rsaquo;</div>
			<div class="info">'.$content['content'].'<h4 class="h4">'.$name[0].$degree.'</h4></div>
		</div>';
	}
?>
<div id="home-opinion">
    <div class="container">
        <div class="content">
            <h3 class="h3"><?php echo '<strong>'.$rowPosition['title'].'</strong>'.$rowPosition['description']; ?></h3>
            <div id="slider"><?php echo $str;?></div>
        </div>
    </div>
    <div class="img"><img src="<?php echo IMAGE_URL.$rowPosition['img'];?>" alt="<?php echo $rowPosition['name'];?>" /></div>
</div>
<script type="text/javascript">
	$(document).ready(function(e) {
		function styleSlider(tags, number){
			var height = parseInt($("#slider_" + number).height()) - 40;
			height = parseInt(height / 2);
			$(tags + " .button").css("margin-top", height)
		}
		function viewSlider(tags, number){
			styleSlider(tags, number);
			$(tags + ' .item').hide();
			$("#slider_" + number).slideDown(200);
		}
		function numberSlider(tags, time, number, total){
			return setInterval(function(){
				number++;
				if(number > total) number=1;
				viewSlider(tags, number);
			}, time);
		}
		function autoSlider(arr){
			var tags = arr[0];
			var time = arr[1];
			var total = parseInt( $(tags + ' .item').length );
			var number=0;
			if(arr[2]) number=arr[2];
			
			var auto = numberSlider(tags, time, number, total);
			
			$(tags + " .next").live("click", function(){
				var number = parseInt($(this).attr("number"));
				if(number > total) number=1;
				viewSlider(tags, number);
				clearInterval(auto);
				auto = numberSlider(tags, time, number, total);
			});
			
			$(tags + " .pre").live("click", function(){
				var number = parseInt($(this).attr("number"));
				if(number > total) number=1;
				else if(number==0) number=total;
				viewSlider(tags, number);
				clearInterval(auto);
				auto = numberSlider(tags, time, number, total);
			});
		}
		
		autoSlider( new Array('#slider', 8000, 1) );
    });
</script>
<?php } //end khach hang noi?>

<?php
//home footer
$arr = array(
	'parent' => 0,
	'position_id' => 12,
	'order'=>'`_order`',
	'limit'=>'3',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
	echo '<div id="home-footer" class="container">';
	foreach($data as $row){
		echo '<div class="box">
			<h5 class="h5"><span class="icon '.$row['tags'].'"></span>'.$row['name'].'</h5>
			<div class="content">'.$row['description'].'</div>
		</div>';
	}
	echo '<div class="clear1"></div> </div>';
}
?>