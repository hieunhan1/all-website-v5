<div id="footer">
	<div class="container">
    	<div id="run_top">TOP</div>
        <div class="clear1"></div>
        
        <div class="footer-left">
        	<!--<h2 class="title"><?php echo $config['sitename'];?></h2>-->
            <p><?php echo $language_var['address'].': '.$config['address'];?></p>
            <p><?php echo $language_var['tel'].': <a href="tel:'.$config['tel'].'">'.$config['tel'].'</a>';?> <span class="enter">&nbsp; | &nbsp; </span>Email: <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a></p>
        </div>
        <div class="footer-right">
            <div id="social">
            <?php
                $arr = array(
					'parent' => 0,
					'position_id' => 6,
					'order'=>'`order`',
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
                    echo '<a href="'.$row['url'].'" title="'.$row['title'].'" target="_blank"><img src="'.$urlImg[15]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a>';
                }
			?>
            </div>
        	<div id="copyright"><?php echo "<h2>{$config['name']} - iAC</h2>"; echo $config['copyright'];?></div>
        </div>
        <div class="clear1"></div>
        
        <div id="tagsALl">
			<?php
            $data = $c->_model->_listTagsKeyword($lang);
			foreach($data as $row) echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            ?>
        </div>
    </div>
</div>