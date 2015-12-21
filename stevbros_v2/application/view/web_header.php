<div class="header-height"></div>
<div id="header">
	<div class="container">
        <div class="logo">
            <a href="<?php echo $logoStevbros['url'];?>" title="<?php echo $logoStevbros['title'];?>"><img src="<?php echo IMAGE_URL.$logoStevbros['img'];?>" alt="<?php echo $logoStevbros['name'];?>" class="logo-1" /></a>
            <a href="<?php echo $logoPMI['url'];?>" title="<?php echo $logoPMI['title'];?>" target="_blank"><img src="<?php echo IMAGE_URL.$logoPMI['img'];?>" alt="<?php echo $logoPMI['name'];?>" class="logo-2" /></a>
        </div>
    	
        <div class="main">
        	<div class="cart-user">
                <a href="http://stevbros.com/" target="_blank" title="STEVBROS GLOBAL"><span class="allIcon icon cart"><span>0</span></span></a>
                <span class="allIcon icon user">&nbsp;</span>
            </div>
            
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
</div>