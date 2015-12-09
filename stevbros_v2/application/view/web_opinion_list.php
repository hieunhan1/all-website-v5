<div id="h1-article">
	<div class="container">
    	<h1 class="h1"><?php echo '<a href="'.$currentPage['name_alias'].'" title="'.$currentPage['title'].'">'.$currentPage['title'].'</a>';?></h1>
	</div>
</div>
<div class="container">
    <div id="opinion">
    <?php
	settype($arrUrl['page'], 'int');
	if($arrUrl['page']<1) $arrUrl['page']=1;
	$perPage = $config['limit_2'];
	$startRow = ($arrUrl['page'] - 1) * $perPage;
	
	$arr = array(
		'lang'=>$lang,
		'menu_id'=>$currentPage['id'],
		'properties'=>2,
		'select'=>'count(`id`) as `totalRows`',
	);
	$totalRows = $c->_model->_headerData($arr);
	$totalRows = $totalRows[0]['totalRows'];
	
	$arr = array(
		'lang'=>$lang,
		'menu_id'=>$currentPage['id'],
		'properties'=>2,
		'order'=>'`datetime` DESC',
		'limit'=>array($startRow, $perPage),
	);
    $data = $c->_model->_headerData($arr);
	
    if($totalRows>0){
        foreach($data as $row){
            $img = $currentPage['url_img'].$row['img'];
            if($row['img']=='') $img='themes/website/img/avatar.png';
            echo '<div class="box" id_o="'.$row['id'].'">
                <div class="img"><img src="'.$img.'" alt="'.$row['name'].'" /></div>
				<div class="content">
					'.$row['description'].'...
					<p class="name">'.$row['name'].'</p>
				</div>
				<div class="date">
					<p>'.date('M d', $row['datetime']).'<br />'.date('Y', $row['datetime']).'</p>
					<p class="view">'.$language_var['viewmore'].'</p>
				</div>
                <div class="clear1"></div>
            </div>';
        }
        
        echo '<div id="phantrang">';
        $offSet = 2;
        $data = $c->pagesList($currentPage['name_alias'], $totalRows, $perPage, $offSet, $arrUrl['page']);
        echo $data;
        echo '</div>';
    }else
		echo '<p style="padding:10px 0px 100px 50px">'.$language_var['update'].'</p>';
    ?>
    </div>
</div>
<div class="clear30"></div>

<div id="opinionDetail">
	<div class="bg"></div>
	<div class="box">
    	<div class="header"><span class="close">x</span></div>
    	<div class="content">
        	<div class="img"></div>
            <div class="info viewpost"></div>
            <div class="clear1"></div>
        </div>
    	<div class="footer"><span class="btn close">Đóng</span></div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#opinion .view").click(function(){
		var id = $(this).parents(".box").attr("id_o");
		var name = $(this).parents(".box").children(".content").children(".name").html();
		var img = $(this).parents(".box").children(".img").html();
		var date = $(this).parents(".box").children(".date").children("p").html();
		date = date.replace('<br>', ', ');
		
		$.ajax({ 	
			url: 'ajax',
			type:'POST',
			data:{opinionDetail:id},
			cache:false,
			success: function(data) {
				data += '<p style="text-align:right">' +name+ '<br />' +date+ '</p>'
				$("#opinionDetail .img").html(img);
				$("#opinionDetail .info").html(data);
				$("#opinionDetail").show(200);
				return true;
			}
		});
	});
	
	$(".close").click(function(){
		$("#opinionDetail").hide(200);
		return true;
	});
});
</script>