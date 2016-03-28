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
                Email: <?php echo '<a href="mailto:'.$config['email'].'">'.$config['email'].'</a>';?> - 
                Website: <a href="http://<?php echo $_SERVER['HTTP_HOST'];?>"><?php echo $_SERVER['HTTP_HOST'];?></a>
            </div>
            <div class="right">
            	<?php echo $config['license'];?>
            </div>
            <div class="clear1"></div>
        </div>
	</div>
</div>