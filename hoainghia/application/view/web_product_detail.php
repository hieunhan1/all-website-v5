<div class="container">
	<?php echo $c->viewNavigator($lang, $currentPage['id']);?>
    <div id="product">
        <div class="viewpost">
            <?php
			if($rowDetail['price_cost']==0) $price_cost='';
			else $price_cost='<p id="priceCostProduct">'.number_format($rowDetail['price_cost'], 0, ',', '.').'đ</p>';
			
			if($rowDetail['price']!=0) $price=number_format($rowDetail['price'], 0, ',', '.').'đ';
			else $price='Liên hệ';
			$price='<p id="priceProduct">'.$price.'</p>';
		
			if($rowDetail['code']!='') $code='<p id="codeProduct">Mã sản phẩm: '.$rowDetail['code'].'</p>'; else $code='';
			echo '<h1>'.$rowDetail['name'].'</h1><div id="imgProduct"><img src="'.$urlImg[3]['url_img'].$rowDetail['img'].'" alt="'.$rowDetail['name'].'" /></div>
			<div id="moreProduct">'.$price_cost.$price.$code.$rowDetail['more'].'<p id="hotlineProduct">Đặt hàng qua điện thoại, gọi: <a href="tel:'.$config['hotline'].'">'.$config['hotline'].'</a></p></div>
			<div class="clear1"></div>'.$rowDetail['content'];
            ?>
        </div>
		<?php
		$select='`url`, `img`, `code`, `price`, `price_cost`';
        $data = $c->_model->_viewDetailOther($table, $rowDetail['id'], $currentPage['id'], $select, NULL, 4);
        if(count($data)>0){
			$i=0;
            echo '<div class="clear20"></div><hr /><div id="otherPost"><div class="titlePost" style="padding:20px 0 0 0">'.CONS_OTHER_PRODUCT.'</div></div>';
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
			
			echo '';
        }
        ?>
	</div>
	<?php include_once('web_left.php');?>
</div>
<div class="clear20"></div>
<div class="clear30"></div>