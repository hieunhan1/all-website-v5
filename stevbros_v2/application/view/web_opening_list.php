<?php
$arr = array(
	'parent' => $currentPage['id'],
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
?>
<div id="opening" class="container">
	<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
    <div class="content">
    	<div class="left">
        	<div class="box corner8" style="background-color:#005aab">
                <a href="<?php echo $data[0]['name_alias'];?>" title="<?php echo $data[0]['title'];?>"><h2 class="h2"><?php echo $data[0]['name'];?></h2>
                <h3 class="h3"><?php echo $data[0]['description'];?></h3></a>
            </div>
            <div class="allIcon iconLeft"></div>
        </div>
        
        <div class="right">
        	<div class="box corner8" style="background-color:#ff9500">
                <a href="<?php echo $data[1]['name_alias'];?>" title="<?php echo $data[1]['title'];?>"><h2 class="h2"><?php echo $data[1]['name'];?></h2>
                <h3 class="h3"><?php echo $data[1]['description'];?></h3></a>
            </div>
            <div class="allIcon iconRight"></div>
        </div>
    </div>
</div>
<?php
}else{
	include_once('web_opening_detail.php');	
}
?>