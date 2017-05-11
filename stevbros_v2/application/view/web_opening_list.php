<?php
$arr = array(
	'parent' => $currentPage['id'],
	'order' => '`_order`',
);
$data = $c->_model->_headerData($arr);
if(count($data) > 0){
?>
<div id="opening" class="container">
	<div class="img"><img src="<?php echo $currentPage['img'];?>" alt="<?php echo $currentPage['name'];?>" /></div>
    <div class="content">
        <?php
		$i = -1;
		$arrayBG = array('#008000', '#005aab', '#ff9500', '#dd4e41', '#008000', '#005aab');
        foreach ( $data as $row ) {
			$i++;
			echo '<div class="box corner8" style="background-color:'.$arrayBG[$i].'">
				<a href="'.$row['name_alias'].'" title="'.$row['title'].'"><h2 class="h2">'.$row['name'].'</h2>
				<h3 class="h3">'.$row['description'].'</h3></a>
			</div>';
		}
		?>
    </div>
</div>
<?php
}else{
	include_once('web_opening_detail.php');	
}
?>