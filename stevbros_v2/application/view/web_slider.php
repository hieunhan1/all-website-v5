<?php
$position = 1;
$arr = array(
	'lang'=>$lang,
	'position_id'=>16,
	'menu_id'=>$currentPage['id'],
);
$urlSlider = $urlImg[16];
$data = $c->_model->_headerData($arr); //$c->_model->_print($urlImg);//echo $currentPage['id']; //
if(count($data)>0){
?>
<link rel="stylesheet" type="text/css" href="js/slider/amazingslider-1.css">
<script src="js/slider/amazingslider.js"></script>
<script src="js/slider/initslider-1.js"></script>

<div id="slider"><div class="container">
	<div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:100%;height:300px;margin:0 auto;">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
            	<?php
				foreach($data as $row){
					echo'<li><img src="'.$urlSlider['url_img'].$row['img'].'" alt="'.$row['name'].'"  title="'.$row['name'].'" data-description="'.$row['description'].'" data-texteffect="Right text" />
					<a href="'.$row['url'].'"><button class="as-btn-orange-medium">'.$lang_var['viewmore'].'</button></a></li>';
				}
				?>
            </ul>
        </div>
    </div>
</div></div>

<?php }?>
<div class="clear20"></div>
<div class="clear20"></div>