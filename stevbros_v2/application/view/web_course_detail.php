<div class="container">
    <div id="course-detail" class="viewpost">
    	<div class="header">
        	<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
        	<h1><?php echo $currentPage['title'];?></h1>
            <?php //echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentMenu['name_alias'].'">'.$currentMenu['name'].'</a></p>';?>
            <h2><?php echo $currentPage['description'];?></h2>
            <a href="lien-he/<?php echo $currentPage['id'];?>" class="action"><?php echo $lang_var['request_for_service'];?></a>
            <div class="clear1"></div>
        </div>
        
        <?php
        if($rowDetail['more']!=''){
			echo '<div class="content">
				<div class="left">Lợi ích</div>
				<div class="right viewpost">'.$rowDetail['more'].'</div>
				<div class="clear1"></div>
			</div>';
		}
		
        if($rowDetail['content']!=''){
			echo '<div class="content">
				<div class="left">Nội dung khóa học</div>
				<div class="right viewpost">'.$rowDetail['content'].'</div>
				<div class="clear1"></div>
			</div>';
		}
		
        if($rowDetail['more2']!=''){
			echo '<div class="content">
				<div class="left">Mô tả khóa học</div>
				<div class="right viewpost">'.$rowDetail['more2'].'</div>
				<div class="clear1"></div>
			</div>';
		}
		?>
    </div>
    
    <?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>