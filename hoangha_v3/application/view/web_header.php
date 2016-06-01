<div id="viewMobile"></div>
<div id="header" <?php if($currentPage['type']['id']==1) echo 'style="position:absolute;"';?> >
	<div class="container">
    	<div id="logo">
            <a href="<?php echo CONS_BASE_URL; if($lang!=CONS_DEFAULT_LANG) echo '/'.$lang;?>" title="<?php echo $config['sitename'];?>">
                <img src="themes/website/img/logo.png" alt="<?php echo $config['sitename'];?>" />
            </a>
        </div>
            
        <div id="menuMobile">
            <div id="btnMobile"></div>
        </div>
        
        <div id="top">
            <div id="search">
            	<?php
                $arr = array(
                    'lang' => $lang,
                    'parent' => 0,
                    'type_id' => 18,
                    'limit'=>'1',
                );
                $data = $c->_model->_headerData($arr);
				$search = 'search';
				if(count($data)>0) $search = $data[0]['name_alias'];
				?>
                <input type="text" name="txtSearch" id="txtSearch" url="<?php echo $search;?>" class="allIcon" placeholder="Search.." />
            </div>
            
            <div id="lang">
            	<?php
                /*if($lang!='vi'){
					echo '<a href="'.CONS_BASE_URL.'"><span class="allIcon iconvi"></span>Tiếng Việt</a>';
				}else{
					echo '<a href="'.CONS_BASE_URL.'/en"><span class="allIcon iconen"></span>English</a>';
				}*/
				?>
            </div>
            
        	<ul id="menuTop">
				<?php
                $arr = array(
                    'lang' => $lang,
                    'parent' => 0,
                    'position_id' => 1,
                    'order'=>'`_order`',
                );
                $data = $c->_model->_headerData($arr);
                foreach($data as $row){
                    if($row['url']==''){
						$url = $row['name_alias'];
					}else{
						$url = $row['url'];
					}
					
					if($row['type_id']!='1'){
						echo '<li><a href="'.$url.'" title="'.$row['title'].'">'.$row['name'].'</a></li>';
					}else{
						echo '<li><a href="'.$url.'" title="'.$row['title'].'"><span class="allIcon iconHome"></span></a></li>';
					}
                }
                ?>
            </ul>
            
            <div class="clear1"></div>
        </div>
        
        <ul id="menuMain">
			<?php
            $arr = array(
                'lang' => $lang,
                'parent' => 0,
                'position_id' => 2,
                'order'=>'`_order`',
            );
            $data = $c->_model->_headerData($arr);
            foreach($data as $row){
                if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
				if($row['id']!=$currentPage['root']['id']) $active=''; else $active='class="active"';
                echo '<li><a href="'.$url.'" title="'.$row['title'].'" '.$active.'>'.$row['name'].'</a>';
				
				$arr = array(
					'parent' => $row['id'],
					'position_id' => 2,
					'order'=>'`_order`',
				);
				$dataParent = $c->_model->_headerData($arr);
				if(count($dataParent) > 0){
					echo '<ul>';
					foreach($dataParent as $rowParent){
						if($rowParent['url']=='') $urlParent=$rowParent['name_alias']; else $urlParent=$rowParent['url'];
						echo '<li><a href="'.$urlParent.'" title="'.$rowParent['title'].'">'.$rowParent['name'].'</a></li>';
					}
					echo '</ul>';
				}
				
				echo '</li>';
            }
            ?>
        </ul>
        
        <div class="clear10"></div>
    </div>
</div>

<?php
$arr = array(
	'select' => '`id`, `name`, `name_alias`, `url`, `title`, `img`',
	'lang' => $lang,
	'type_id' => 16,
	'position_id' => 16,
	'menu_id' => $currentPage['root']['id'],
	'properties' => 2,
	'order'=>'`_order`',
);
$str = '';
$dataSlider = $c->_model->_headerData($arr);
if(count($dataSlider)>0){
	foreach($dataSlider as $rowSlider){
		$data = $c->_model->_web_picture('web_header', $rowSlider['id'], 'rand()');
		foreach($data as $row){
			if($rowSlider['url']!=''){
				$url = $rowSlider['url'];
			}else{
				$url = 'javascript:;';
			}
			$str .= '<div class="itemSlider hidden"><a href="'.$url.'"><img src="'.IMAGE_URL.$row['img'].'" alt="'.$rowSlider['name'].'"></a></div>';
		}
	}
	
	/*$contentHome = $c->_model->_content($currentPage['id']);
	if(count($contentHome)>0){
		$str .= '<div id="headerContent" class="viewpost">'.$contentHome['content'].'</div>';
	}*/
	
	$str .= '<div id="headerImg" class="effect"></div>
	<script type="text/javascript">
		$(document).ready(function(e){
			var minNumber = 0;
			var maxNumber = parseInt( $(".itemSlider").length ) - 1;
			var slider = Math.floor( Math.random() * (maxNumber-minNumber + 1) + minNumber );
			var img = $(".itemSlider:eq(" + slider + ")").html();
			$("#headerImg").html(img);
		});
	</script>';
	
	echo $str;
}
?>