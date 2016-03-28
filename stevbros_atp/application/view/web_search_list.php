<div class="container">
	<div id="course-more" style="float:left">
    	<h1 class="h1"><a>Đào tạo doanh nghiệp</a></h1>
    	<?php
        $arr = array(
            'parent'=>70,
            'position_id'=>4,
            'properties'=>1,
            'order'=>'`_order`',
        );
        $data = $c->_model->_headerData($arr);
        foreach($data as $row){
			if($row['id']!=$currentPage['id']) $active=''; else $active='class="active"';
			echo '<h2 class="h2"><a href="'.$row['name_alias'].'" title="'.$row['title'].'" '.$active.'>'.$row['name'].'</a></h2>';
		}
		?>
    </div>
    <div id="course-list">
		<?php
		$i=0; $name=''; $alias='';
		if(isset($_GET['txt'])){
			$name = $c->_model->_removeDauNhay($_GET['txt']);
			$alias = $c->_model->_changeAlias($name);
		}
		
		$arr = array(
            'select'=>'*',
			'from'=>'web_header',
            'where'=>"`lang`='{$lang}' AND `properties`='2' AND `type_id`='3' AND (`name` LIKE '%{$name}%' OR `name_alias` LIKE '%{$alias}%')",
            'order'=>'`id` DESC',
        );
        $data = $c->_model->_select($arr);
		echo '<div class="total">
			<div class="search-header allIcon"><input type="text" name="txtSearch" id="txtSearch" placeholder="Search khóa học" /></div>
			<div class="result-search">Tìm thấy '.count($data).' khóa học cho từ khóa &quot;'.$name.'&quot;</div>
			<div class="clear1"></div>
		</div>';
        foreach($data as $row){
			$i++;
			if($i!=1) $border='border'; else $border='';
            $img = IMAGE_URL_THUMB.$row['img'];
            if($row['img']=='') $img=CONS_IMAGE_DEFAULT;
            echo '<div class="box '.$border.'">
                <div class="img"><img src="'.$img.'" alt="'.$row['name'].'" /></div>
				<h3 class="h3"><a href="'.$row['name_alias'].'" title="'.$row['title'].'">'.$row['name'].'</a></h3>
				<div class="p">'.$row['description'].'</div>
				<div class="action request_for_service" header_id="'.$row['id'].'"><span>&rarr;</span>'.$lang_var['request_for_service'].'</div>
                <div class="clear1"></div>
            </div>';
        }
        ?>
    </div>
</div>
<div class="clear30"></div>
<div class="clear30"></div>

<?php include_once('web_course_request.php');?>

<script type="text/javascript">
$(document).ready(function(e) {
    $(window).bind('scroll', function () {
		if ($(window).scrollTop() > 160) {
			$("#course-more").addClass("fix-course-more");
		} else {
			$("#course-more").removeClass("fix-course-more");
		}
	});
});
</script>