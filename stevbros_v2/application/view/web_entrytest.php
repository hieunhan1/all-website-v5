<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="NOFOLLOW" />
<title><?php echo $currentPage['name'];?></title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="themes/website/general.css"/>

<style type="text/css">
@media only screen and (max-width: 768px) {
    #wrapper{width:85%; margin:auto}
	#messagePP .content{width:50%; top:40%; left:15%; padding:25px 10%}
}

@media only screen and (min-width: 768px) {
    #wrapper{width:600px; margin:auto}
	
	#messagePP .content{top:35%; left:33%; padding:25px 50px}
}

#header{clear:both; width:100%; margin-bottom:30px; padding:10px 0}
#header .logo{width:auto; float:left}
#header .logo .logo-1{height:70px; float:left; margin:10px 30px 0 0}
#header .logo .logo-2{height:50px; float:left; margin-top:20px}

#content{clear:both}

#h1{line-height:150%; color:#666; font-size:150%; font-weight:100; margin-bottom:5px}
#h2{line-height:150%; color:#888; font-weight:100; font-size:100%}

#loading{display:none; width:100%; height:100%; top:0; left:0; position:fixed; background:url(themes/website/img/loader.gif) no-repeat center; background-size:5%; background-color:rgba(255,255,255,0.5)}

#entrytest{clear:both; line-height:160%; margin:30px 0 50px 0}
#entrytest .box{clear:both; margin-bottom:20px}
#entrytest .box .question{clear:both; margin-bottom:5px}
#entrytest .box .question em{color:#00F}
#entrytest .box .answers{clear:both; margin-left:5%}
#entrytest .box .answers .item{clear:both}
#entrytest .box .answers .item .input{width:4%; float:left; margin:5px 1% 0 0}
#entrytest .box .answers .item .input input{cursor:pointer}
#entrytest .box .answers .item .lable{width:80%; float:left}
#entrytest .result{font-size:140%; text-align:center; padding:10px 20px; background-color:#FF9; border:solid 1px #999}
#entrytest .result em{font-size:80%}

#messagePP{display:none}
#messagePP .bg{width:100%; height:100%; top:0; left:0; position:fixed; background-color:rgba(255,255,255,0.5)}
#messagePP .content{position:fixed; background-color:#FFF; border:solid 1px #999; box-shadow:1px 1px 3px #666}
#messagePP .close{color:#FFF; padding:10px 20px; background-color:#999; cursor:pointer}
#messagePP .close:hover{background-color:#666}
</style>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
</head>

<body>

<div id="wrapper">
	<div id="header">
    	<a href="<?php echo $logoStevbros['url'];?>" class="logo"><img src="<?php echo IMAGE_URL.$logoStevbros['img'];?>" alt="<?php echo $logoStevbros['name'];?>" class="logo-1" /></a>
    	<a href="<?php echo $logoPMI['url'];?>"  class="logo" target="_blank"><img src="<?php echo IMAGE_URL.$logoPMI['img'];?>" alt="<?php echo $logoPMI['name'];?>" class="logo-2" /></a>
        <div class="clear1"></div>
    </div>
    
    <div id="content" class="viewpost">
    	<h1 id="h1"><?php echo $currentPage['name'];?></h1>
        <h2 id="h2"><?php echo $currentPage['description'];?></h2>
        <div id="entrytest">
        	<div id="loading"></div>
        	<?php
			$labelAnswers = array('', 'A', 'B', 'C', 'D');
			
			$check = $c->_model->_checkEntryTestUser($users_id, $menu_id);
			$checkTotal = count($check);
			if($checkTotal==0){
				$disable = '';
				function viewAnswers($answers){};
			}else{
				$disable = 'disabled="disabled"';
				function viewAnswers($answers){
					return '<em>Đáp án đúng là '.$answers.'</em>';
				}
			}
			
            $i = 0;
			$numberCorrect = 0;
			$data = $c->_model->_entrytestList($currentPage['id']);
			$total = count($data);
			foreach($data as $row){
				$i++;
				$select = '';
				$strAnswers = '';
				$answers = '';
				if( isset($check[$row['id']]['answers']) ){
					$answers = $check[$row['id']]['answers'];
					if($answers==$row['correct']) $numberCorrect++;
				}
				for($j=1; $j<=4; $j++){
					if($j!=$answers) $select=''; else $select=' checked="checked"';
					$strAnswers .= '<div class="item">
						<p class="input"><input type="radio" name="answers_'.$row['id'].'" value="'.$j.'" '.$disable.$select.' class="field_all" /></p>
						<p class="lable">'.$labelAnswers[$j].'. '.$row['answers_'.$j].'</p>
						<p class="clear1"></p>
					</div>';
				}
				echo '<div class="box">
					<div class="question"><b>Câu '.$i.':</b> '.viewAnswers($labelAnswers[$row['correct']]).$row['question'].'</div>
					<div class="answers">'.$strAnswers.'</div>
				</div>';
			}
			
			if($checkTotal==0){
				echo '<div class="box"><input type="button" name="btnSubmit" id="btnSubmit" value="Hoàn tất" allquestion="'.$total.'" class="adBtnSmall bgColorBlue corner5" /></div>';
			}else{
				$result = round($numberCorrect / $total * 100, 2);
				echo '<div class="box result corner8">Kết quả: '.$result.'% <em>(đúng '.$numberCorrect.' câu trong '.$total.' câu.)</em></div>';
			}
			?>
        </div>
    </div>
    
    <div id="messagePP">
    	<div class="bg"></div>
        <div class="content corner10"></div>
    </div>
</div>

<?php if($checkTotal==0){?>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#messagePP .bg, #messagePP .close").live("click", function(){
		$("#messagePP").hide(100);
	});
	
    $("#btnSubmit").click(function(){
		var allquestion = parseInt( $(this).attr("allquestion") );
		var currentCheck = parseInt( $('.field_all:checked').length );
		if(allquestion != currentCheck){
			$("#messagePP .content").html('<p>Bạn chưa trả lời hết các câu hỏi.</p><p class="clear30"></p><span class="corner5 close">Close</span><p class="clear10"></p>');
			$("#messagePP").show(100);
			return false;
		}
		
		$("#loading").show(100);
		$(".field_all").attr("disabled", true);
		$(this).attr("disabled", true);
		
		$('.field_all:checked').each(function(i, val){
			var answers = $(this).val();
			var users_id = <?php echo $users_id;?>;
			var menu_id = <?php echo $menu_id;?>;
			var entrytest_id = $(this).attr("name");
			entrytest_id = entrytest_id.split('_');
			entrytest_id = entrytest_id[1];
			
			$.ajax({ 	
				url: 'ajax',
				type:'POST',
				data:{entrytestUser:1, entrytest_id:entrytest_id, menu_id:menu_id, users_id:users_id, answers:answers},
				cache:false,
				success: function(data) {
					console.log(data);
				}
			});
		});
		setTimeout(function(){
			$("#loading").hide(100);
			$("#btnSubmit").hide(100);
			window.location.reload();
		}, 3000);
	});
});
</script>
<?php }?>

</body>
</html>