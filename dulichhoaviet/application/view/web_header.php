<div id="header">
    <div id="header-fix" <?php if($currentPage['type']['id']==1) echo 'style="position:absolute"';?> >
        <div class="container">
            <div class="logo">
                <a href="<?php echo CONS_BASE_URL;?>" title="<?php echo $config['sitename'];?>">
                    <img src="themes/website/img/logo.png" alt="<?php echo $config['sitename'];?>" />
                    <h2>HOA VIỆT</h2><br /><h3>TRAVEL®</h3>
                </a>
            </div>
            
            <div id="menuMobile">
                <div id="btnMobile"></div>
                <div id="viewMobile"></div>
            </div>
            
            <div class="search"><input type="text" name="txtSearch" id="txtSearch" class="allIcon" placeholder="Search.." /></div>
            
            <ul class="menuTop">
                <?php
                $arr = array(
                    'lang' => $lang,
                    'parent' => 0,
                    'position_id' => 1,
                    'order'=>'`_order`',
                );
                $data = $c->_model->_headerData($arr);
                foreach($data as $row){
                    if($row['url']==''){
						$url=$row['name_alias'];
					}else{
						$url=$row['url'];
					}
					
					if($row['type_id']!=1){
						$name = $row['name'];
					}else{
						$name = '<span class="allIcon iconHome"></span>';
					}
                    echo '<li><a href="'.$url.'" title="'.$row['title'].'">'.$name.'</a></li>';
                }
                ?>
            </ul>
            
            <ul class="menuMain">
            	<div class="call corner8">
                	<a href="tel:<?php echo $config['tel'];?>"><span class="allIcon"></span><?php echo $config['tel'];?></a>
                </div>
                
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
                    if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
                    echo '<li class="allIcon bgcolor'.$i.' iconImgMain'.$i.' corner8"><a href="'.$url.'" title="'.$row['title'].'">'.$row['name'].'</a></li>';
                    $i++;
                    if($i>2) $i=0;
                }
                ?>
            </ul>
            <p class="clear10"></p>
            
			<?php
			/*$arr = array(
				'lang' => $lang,
				'parent' => 0,
				'position_id' => 14,
				'order'=>'`_order`',
			);
			$data = $c->_model->_headerData($arr);
			if(count($data) > 0){
				$i = 0;
				$color = array('#eb7219', '#157396', '#699918', '#eb7219', '#157396', '#699918');
				echo '<div class="sales">';
				foreach($data as $row){
					$content = $c->_model->_content($row['id']);
					echo '<div class="box corner10" style="color:'.$color[$i].'">
						<h3 class="title">'.$row['name'].'</h3>
						<div class="item allIcon icon'.$i.'">'.$content['content'].'</div>
					</div>';
					$i++;
				}
				echo '<p class="clear10"></p> </div>';
			}*/
			?>
        </div>
    </div>
    
    <?php
    //if($currentPage['type']['id']!=1) echo '<div class="header-empty"></div>';
	?>
    
	<div class="headerContent">
		<?php
		//tour noi bat
		$str_tour_noi_bat = '';
		$str_slider = '';
		$arr = array(
			'select' => '`id`, `name`, `name_alias`, `title`, `img`',
			'lang' => $lang,
			'type_id' => 16,
			'position_id' => 16,
			'menu_id' => $currentPage['root']['id'],
			'properties' => 2,
			'order'=>'`_order`',
		);
		$dataSlider = $c->_model->_headerData($arr);
		if(count($dataSlider)>0){
			$arr = array(
				'select' => '`id`, `name`',
				'lang' => $lang,
				'parent' => 0,
				'position_id' => 7,
				'properties' => 1,
				'limit'=>'1',
			);
			$data = $c->_model->_headerData($arr);
			if(count($data) > 0){
				$str = '';
				$rowNB = $data[0];
				$arr = array(
					'lang' => $lang,
					'menu_id' => $rowNB['id'],
					'properties' => 2,
					'order' => '`_order` DESC, `datetime` DESC',
					'limit' => '2',
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
					if($row['price']!=0) $price = number_format($row['price'], 0, ',', '.').'đ'; else $price = 'Liên hệ';
					$means = explode(',', $row['means']);
					$str_means = '';
					if(count($means) > 2){
						for($j=1; $j<count($means)-1; $j++){
							$str_means .= ' &nbsp; <span class="allIcon icon means'.$means[$j].'"></span>';
						}
						$str_means = '<p class="means">Phương tiện:'.$str_means.'</p>';
					}
					$str .= '<div class="tour box width">
						<p class="img imgHeight effect" style="display:none"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
						<p class="point bgtransparent'.$color.'" style="display:none"><span class="allIcon icon"></span>'.$row['destination'].'</p>
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
				
				$str_tour_noi_bat .= '<div class="tour-list">
					'.$str.'
					<div class="clear1"></div>
				</div>';
			}
			echo $str_tour_noi_bat;
			
			$slider = $dataSlider[0];
			$dataSlider = $c->_model->_web_picture('web_header', $slider['id'], 'rand()');
			foreach($dataSlider as $row){
				$str_slider .= '<div class="itemSlider" style="display:none">'.IMAGE_URL.$row['img'].'</div>';
			}
			$str_slider .= '<div class="headerImg"></div>';
			$str_slider .='<script type="text/javascript">
				$(document).ready(function(e){
					var minNumber = 0;
					var maxNumber = parseInt( $(".itemSlider").length ) - 1;
					var slider = Math.floor( Math.random() * (maxNumber-minNumber + 1) + minNumber );
					var img = $(".itemSlider:eq(" + slider + ")").html();
					$("#header .headerImg").html(\'<img src="\' + img + \'" alt="'.$slider['name'].'" />\');
				});
			</script>';
		}
        ?>
    </div>
	<?php echo $str_slider;?>
</div>