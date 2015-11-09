<div class="container">
	<?php echo $c->viewNavigator($lang, $currentPage['id']);?>
    <div id="product">
    <?php
	echo '<div class="viewpost"><h1>'.$currentPage['title'].'</h1></div>';
	$select = '`url`, `img`, `code`, `price`, `price_cost`';
    $typeId = $currentPage['typeMenuId'];
    $i=0;
    $perPage = $config['limit_2'];
    $startRow = ($currentPage-1)*$perPage;
    $data = $c->_model->_listDataTable($table, $currentPage['id'], $totalRows, $perPage, $startRow, $select);
    if($totalRows>1){
        foreach($data as $row){
            $i++;
			if($i%4 != 1) $style='productMargin'; else $style='';
			if($row['price_cost']==0) $price_cost=''; else $price_cost=number_format($row['price_cost'], 0, ',', '.').'đ';
			if($row['price']==0) $price='Liên hệ'; else $price=number_format($row['price'], 0, ',', '.').'đ';
			if($row['code']!='') $code=' - '.$row['code']; else $code='';
			echo '<div class="productBox productList '.$style.'">
				<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].$code.'</h3></a>
				<div class="price"><span>'.$price_cost.'</span>'.$price.'</div>
			</div>';
        }
        
        echo '<div id="phantrang">';
        $offSet = 5;
        $totalPages = ceil($totalRows/$perPage);
        $data = $c->pagesList($currentPage['url'], $totalRows, $offSet, $perPage, $currentPage);
        echo $data;
        echo '</div>';
    }else if($totalRows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
    else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
    ?>
    </div>
    
    <?php include_once('web_left.php');?>
</div>
<div class="clear30"></div>