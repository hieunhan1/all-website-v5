<div id="footer"><div class="container">
    
	<div class="logo-social">
    	<div class="logo"><a href="<?php echo $logoStevbrosWhite['url'];?>" title="<?php echo $logoStevbrosWhite['title'];?>"><img src="<?php echo IMAGE_URL.$logoStevbrosWhite['img'];?>" alt="<?php echo $logoStevbrosWhite['title'];?>" /></a></div>
        <div class="social">
        	<?php
            $arr = array(
				'lang' => $lang,
				'parent' => 0,
				'position_id' => 6,
				'order' => '`_order`',
			);
			$data = $c->_model->_headerData($arr);
			foreach($data as $row){
				echo '<a href="'.$row['url'].'" title="'.$row['name'].'" target="_blank"><span class="allIcon icon '.$row['tags'].'"></span></a>';
			}
			?>
        </div>
        <div class="clear1"></div>
    </div>
    
    <div class="widget">
    	<div class="logo"><a href="<?php echo $logoPMI['url'];?>" target="_blank"><img src="<?php echo IMAGE_URL.$logoPMI['img'];?>" alt="<?php echo $logoPMI['name'];?>" /></a></div>
        <a href="https://www.flickr.com/photos/127711529@N03/" class="photos corner5" target="_blank">Hình ảnh lớp</a>
    </div>
    
    <div class="menu-footer">
		<?php
        $position_id = 3;
        $arr = array(
            'lang' => $lang,
            'parent' => 0,
            'position_id' => $position_id,
            'order' => '`_order`',
        );
        $dataFooter = $c->_model->_headerData($arr);
        foreach($dataFooter as $rowFooter){
            $str='';
            $arr = array(
                'lang' => $lang,
                'parent' => $rowFooter['id'],
                'position_id' => $position_id,
                'order' => '`_order`',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
                if($row['url']=='') $url=array($row['name_alias'], ''); else $url=array($row['url'], 'target="_blank"');
                $str.='<li><a href="'.$url[0].'" '.$url[1].'>'.$row['name'].'</a>';
                $str.=$c->getSubMenu($lang, $row['id'], $position_id);
                $str.='</li>';
            }
            echo '<div class="menu">
                <ul class="nav">
                    <h5 class="h5">'.$rowFooter['name'].'</h5>
                    '.$str.'
                </ul>
            </div>';
        }
        ?>
    </div>
    
    <div class="clear30"></div>
    <div class="copyright">
        <h6 class="h6"><?php echo $config['other'];?></h6>
        <h6 class="h6_2"><?php echo $config['copyright'];?></h6>
    </div>
</div></div>