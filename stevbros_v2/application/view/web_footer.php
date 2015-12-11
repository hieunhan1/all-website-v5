<div id="footer">
	<div class="container">
    	<div id="run_top">TOP</div>
        
        <div id="info-footer">
        	<div id="bottomMenu" class="bottomLink">
            	<h3 class="title" style="letter-spacing:0px"><?php echo $language_var['bottom_title'];?></h3>
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
            	<h3 class="title"><?php echo $language_var['bottom_news'];?></h3>
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
            	<h3 class="title"><?php echo $language_var['bottom_link'];?></h3>
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
            
        	<div id="bottomPhoto">
            	<h3 class="title"><?php echo $language_var['bottom_photo'];?></h3>
                <?php
				/*$arr = array(
					'lang' => $lang,
					'parent' => 0,
					'position_id' => 15,
					'order'=>'`order`',
				);
				$data = $c->_model->_headerData($arr);
				foreach($data as $row){
					if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
					echo '<li class="li"><a href="'.$url.'" title="'.$row['title'].'"><span>&rsaquo;</span>'.$row['name'].'</a></li>';
				}*/
				?>
				<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
                <link rel="stylesheet" type="text/css" href="js/extension/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
                <script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
                <script type="text/javascript" src="js/extension/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
                <script type="text/javascript" src="js/extension/lib/jquery.mousewheel-3.0.6.pack.js"></script>
                <script type="text/javascript">
				$(document).ready(function() {
					$('.fancybox').fancybox();
					
					$('.fancybox-buttons').fancybox({
						openEffect  : 'none',
						closeEffect : 'none',
						
						prevEffect : 'none',
						nextEffect : 'none',
						
						closeBtn  : false,
						
						helpers : {
							title : {
								type : 'inside'
							},
							buttons	: {}
						},
						
						afterLoad : function() {
							this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
						}
					});
				});
				</script>
                <div class="pictureLibrary">
                    <div class="img"><a class="fancybox-buttons" data-fancybox-group="button" href="public/images/1447235786.jpg"><img src="public/_thumbs/Images/1447235786.jpg" alt="" /></a></div>
                    <div class="img"><a class="fancybox-buttons" data-fancybox-group="button" href="public/images/1447235786.jpg"><img src="public/_thumbs/Images/1447235786.jpg" alt="" /></a></div>
                    <div class="img"><a class="fancybox-buttons" data-fancybox-group="button" href="public/images/1447235786.jpg"><img src="public/_thumbs/Images/1447235786.jpg" alt="" /></a></div>
                    <div class="img"><a class="fancybox-buttons" data-fancybox-group="button" href="public/images/1447235786.jpg"><img src="public/_thumbs/Images/1447235786.jpg" alt="" /></a></div>
                    <div class="img"><a class="fancybox-buttons" data-fancybox-group="button" href="public/images/1447235786.jpg"><img src="public/_thumbs/Images/1447235786.jpg" alt="" /></a></div>
                    <div class="img"><a class="fancybox-buttons" data-fancybox-group="button" href="public/images/1447235786.jpg"><img src="public/_thumbs/Images/1447235786.jpg" alt="" /></a></div>
                </div>
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