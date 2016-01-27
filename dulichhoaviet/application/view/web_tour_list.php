<div class="container" style="position:relative">
	<?php
    $str_left = ob_start();
	include_once('web_left.php');
    $str_left = ob_get_clean();
	?>
    <div <?php echo $id_tour;?>><div class="tour-list">
		<?php
        settype($arrUrl['page'], 'int');
        if($arrUrl['page']<1) $arrUrl['page']=1;
        $perPage = $config['limit_2'];
        $startRow = ($arrUrl['page'] - 1) * $perPage;
        
        $arr = array(
            'type_id'=>3,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'select'=>'count(`id`) as `totalRows`',
        );
        $totalRows = $c->_model->_headerData($arr);
        $totalRows = $totalRows[0]['totalRows'];
        
        $arr = array(
            'type_id'=>3,
            'menu_id'=>$currentPage['id'],
            'properties'=>2,
            'order'=>'`_order` DESC, `datetime` DESC',
            'limit'=>array($startRow, $perPage),
        );
        $data = $c->_model->_headerData($arr);
        
        if($totalRows>0){
			$i = 0;
			$color = 0;
            foreach($data as $row){
				$img = IMAGE_URL.$row['img'];
				if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
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
				echo '<div class="box width margin-bottom '.$margin.'">
					<!--<p class="viewmore imgHeight2"><a href="'.$row['name_alias'].'">Xem chi tiết</a></p>-->
					<p class="img imgHeight2 effect"><a href="'.$row['name_alias'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></p>
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
            
            echo '<div id="phantrang">';
            $offSet = 2;
            $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
            echo $data;
            echo '</div>';
        }
        else echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
        ?>
    </div></div>
    <?php echo $str_left;?>
</div>
<div class="clear30"></div>