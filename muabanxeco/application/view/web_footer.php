<div id="footer" class="container">
	<div id="menu-footer">
    	<ul>
			<?php
            $arr = array(
                'select' => '`id`, `name`, `name_alias`, `url`, `title`',
                'lang' => $lang,
                'parent' => 0,
                'position_id' => 3,
                'properties' => 1,
                'order'=>'`_order`',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
				if($row['url']==''){
					$url = $row['name_alias'];
				}else{
					$url = $row['url'];
				}
                echo '<li><a href="'.$url.'">'.$row['name'].'</a></li>';
            }
            ?>
            <li id="run_top"><span class="icon"></span>TOP</li>
        </ul>
        <p class="clear1"></p>
    </div>
    
	<?php
	//social
    $arr = array(
        'select' => '`id`, `name`, `url`, `img`, `title`',
        'lang' => $lang,
        'parent' => 0,
        'position_id' => 6,
        'properties' => 1,
        'order'=>'`_order`',
    );
    $data = $c->_model->_headerData($arr);
    if(count($data) > 0){
        echo '<div id="social"><h4>Kết nối với chúng tôi</h4>';
        foreach($data as $row){
            echo '<a href="'.$row['url'].'"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$row['name'].'" /></a>';
        }
        echo '</div>';
    }
    ?>
    
    <?php
	if($currentPage['type']['id']==1){
		$title = '<h1 class="title">'.$config['sitename'].'</h1>';
	}else{
		$title = '<h3 class="title">'.$config['sitename'].'</h3>';
	}
	
	$hotline = '';
	if($config['hotline']!='') $hotline = ' &nbsp;-&nbsp; Hotline: <a href="tel:'.$config['hotline'].'">'.$config['hotline'].'</a>';
	echo '<div class="content">
		'.$title.'
		<p>Địa chỉ: '.$config['address'].'</p>
		<p>Điện thoại: <a href="tel:'.$config['tel'].'">'.$config['tel'].'</a>'.$hotline.'</p>
		<p>Email: <a href="mailto:'.$config['email'].'">'.$config['email'].'</a></p>
	</div>';
	?>
    
    <div id="copyright"><h5><?php echo $config['copyright'];?></h5></div>
    
    <div class="clear1"></div>
</div>