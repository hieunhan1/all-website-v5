<?php
$strHeader = '';
if($currentPage['type']['id']==1){
	$strHeader = 'style="position:absolute; background-color:rgba(2,86,0,0.9);"';
}
?>
<div id="header" <?php echo $strHeader;?> >
	<div class="container">
    	<div id="logo">
            <a href="<?php echo CONS_BASE_URL; if($lang!=CONS_DEFAULT_LANG) echo '/'.$lang;?>" title="<?php echo $config['sitename'];?>">
                <img src="themes/website/img/logo.png" alt="<?php echo $config['sitename'];?>" />
                <span class="item1">CTY TNHH DƯỢC PHẨM</span>
                <span class="item2">BẠCH YẾN</span>
            </a>
        </div>
        
        <ul id="menuMain" class="menuMobile">
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
                echo '<li><a href="'.$url.'" title="'.$row['title'].'" '.$active.'>'.$row['name'].'</a></li>';
            }
            ?>
        </ul>
        
        <div id="menuMobile">
            <div id="btnMobile"></div>
            <div id="viewMobile"></div>
        </div>
        
        <div class="clear1"></div>
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
	
	$contentHome = $c->_model->_content($currentPage['id']);
	if(count($contentHome)>0){
		$str .= '<div class="container">
			<div id="headerContent" class="viewpost">'.$contentHome['content'].'</div>
		</div>';
	}
	
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