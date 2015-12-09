<div id="footer">
	<div class="container">
    	<div id="run_top">TOP</div>
        
        <div id="info-footer">
        	<div id="bottomMenu" class="bottomLink">
            	<h3 class="title">STEVBROS TRAINING & CONSULTANCY</h3>
                <?php
				$arr = array(
					'lang' => $lang,
					'parent' => 0,
					'position_id' => 3,
					'order'=>'`order`',
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
					if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
					echo '<li class="li"><a href="'.$url.'" title="'.$row['title'].'"><span>&rsaquo;</span>'.$row['name'].'</a></li>';
				}
				?>
            </div>
            
        	<div id="bottomNews" class="bottomLink">
            	<h3 class="title">Bài viết mới</h3>
                <?php
				$arr = array(
					'lang'=>$lang,
					'properties'=>2,
					'order'=>'`datetime` DESC',
					'limit'=>5,
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
					echo '<li class="li"><a href="'.$row['name_alias'].'" title="'.$row['title'].'"><span>&rsaquo;</span>'.$row['name'].'</a></li>';
				}
				?>
            </div>
            
        	<div id="bottomLink" class="bottomLink">
            	<h3 class="title">Liên kết</h3>
                <?php
				$arr = array(
					'lang' => $lang,
					'parent' => 0,
					'position_id' => 15,
					'order'=>'`order`',
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
					if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
					echo '<li class="li"><a href="'.$url.'" title="'.$row['title'].'"><span>&rsaquo;</span>'.$row['name'].'</a></li>';
				}
				?>
            </div>
        </div>
        <div class="clear30"></div>
        
        <div class="clear1" style="background-color:#58595c"></div>
        <div class="clear30"></div>
        <div class="footer-left">
            <p><?php echo $config['copyright'];?></p>
            <p style="font-size:90%"><?php echo $config['pmi'];?></p>
        </div>
        <div id="socialBottom"><?php echo $strSocial;?></div>
        <div class="clear10"></div>
    </div>
</div>