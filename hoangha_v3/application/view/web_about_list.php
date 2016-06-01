<div class="container">
    <div id="about-list">
    <?php
	$row = $c->_model->_content($currentPage['id']);
	echo '<h1>'.$currentPage['title'].'</h1>';
	echo '<p class="meta"><time datetime="'.date('Y-m-d', $currentPage['datetime']).'" pubdate>'.date('d F Y', $currentPage['datetime']).'</time> | <a href="'.$currentPage['root']['name_alias'].'">'.$currentPage['root']['name'].'</a></p>';
	echo '<div class="viewpost">'.$row['content'].'</div>';
	
    ?>
    <div class="clear30"></div> </div>
    
    <div id="about-left">
    	<?php
        $arr = array(
			'lang' => $lang,
			'parent' => $currentPage['root']['id'],
			'properties' => 1,
			'order'=>'`_order`',
		);
		$data = $c->_model->_headerData($arr);
		foreach($data as $row){
			if($row['id']!=$currentPage['id']) $active=''; else $active='active';
			echo '<li class="li '.$active.'"><a href="'.$row['name_alias'].'" class="link" title="'.$row['title'].'">'.$row['name'].'</a></li>';
		}
		?>
    </div>

</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $(window).bind('scroll', function () {
		if ($(window).scrollTop() > 150) {
			$('#about-left').addClass('about-left-fix');
		} else {
			$('#about-left').removeClass('about-left-fix');
		}
	});
});
</script>