<div id="left">
	<div class="boxLeft">
    	<h3 class="h3Left">Danh mục sản phẩm</h3>
        <?php
        $position=4;
		$data = $c->_model->_listMenuPosition($lang, $position);
		foreach($data as $row){
			echo '<div class="itemLeft"><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a></div>';
			$data2 = $c->_model->_listMenu($lang, $row['id'], $position);
			foreach($data2 as $row2) echo '<div class="itemLeft2"><a href="'.$row2['url'].'" title="'.$row2['title'].'">- '.$row2['name'].'</a></div>';
		}
		?>
    </div>
</div>