<div class="container">
	<div id="left" style="border-right:solid 1px #CCC">
    	<div class="clear30"></div>
        <?php
        $menu = array();
        $menu[] = array('name'=>'Quản lý fanpage', 'link'=>'fanpage', 'bgPosition'=>'background-position:0px -292px');
        $menu[] = array('name'=>'Thông tin chung', 'link'=>'general', 'bgPosition'=>'background-position:0px -319px');
        $menu[] = array('name'=>'Thông tin tài khoản', 'link'=>'account', 'bgPosition'=>'background-position:0px -344px');
        $menu[] = array('name'=>'Thanh toán, gia hạn', 'link'=>'payment', 'bgPosition'=>'background-position:0px -369px');
        $menu[] = array('name'=>'Hướng dẫn', 'link'=>'guide', 'bgPosition'=>'background-position:0px -394px');
        $menu[] = array('name'=>'Thông báo', 'link'=>'notice', 'bgPosition'=>'background-position:0px -420px');
		
		$title=''; $include='';
		foreach($menu as $row){
			if($arrUrl['link']!=$row['link']) $active='';
			else{
				$active='active';
				$title = $row['name'];
				$include = $row['link'];
			}
			echo '<div class="left-item allIcon" style="'.$row['bgPosition'].'"><a href="'.CONS_LINK_MANAGER_APPS.'/'.$row['link'].'" class="link '.$active.'">'.$row['name'].'</a></div>';
		}
		
		?>
    </div>
    <div id="right">
    	<div class="clear30"></div>
    	<h2 class="title"><?php echo $title;?></h2>
        <div class="content"><?php include_once("apps_manager_{$include}.php");?></div>
    </div>
</div>