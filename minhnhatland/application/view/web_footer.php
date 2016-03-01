<div class="clear20"></div>
<div id="footer">
	<div class="btnTop">TOP</div>
    
	<div class="container">
    	<div class="clear30"></div>
        
        <div class="copyright">
        	<div class="left">
            	<h2 class="h2"><?php echo $config['copyright'];?></h2>
            	Địa chỉ: <?php echo $config['address'];?><br />
                Điện thoại: <?php echo $config['tel'];?><br />
                Website: <a href="http://www.minhnhatland.com" title="Bất động sản Minh Nhật">www.minhnhatland.com</a> - Email: <?php echo '<a href="mailto:'.$config['email'].'">'.$config['email'].'</a>';?><br />
                <?php echo $config['license'];?><br />
            </div>
            <div class="right social">
            	<h6 class="title">Liên kết mạng xã hội</h6>
                <?php
                $arr = array(
					'lang' => $lang,
					'parent' => 0,
					'properties' => 1,
					'position_id' => 6,
					'order'=>'`_order`',
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
					echo '<p class="img"><a href="'.$row['url'].'" title="'.$row['name'].'" target="_blank"><img src="'.IMAGE_URL_THUMB.$row['img'].'" alt="'.$row['name'].'" /></a></p>';
				}
				?>
            </div>
            <div class="clear1"></div>
        </div>
	</div>
</div>