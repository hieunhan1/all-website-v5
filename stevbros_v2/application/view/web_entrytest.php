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

.hidden{display:none}

#header{clear:both; width:100%; margin-bottom:30px; padding:10px 0}
#header .logo{width:auto; float:left}
#header .logo .logo-1{height:70px; float:left; margin:10px 30px 0 0}
#header .logo .logo-2{height:50px; float:left; margin-top:20px}

#content{clear:both}

#h1{line-height:140%; color:#666; font-size:140%; font-weight:100; margin-bottom:10px}
#h2{line-height:160%; color:#888; font-weight:100; font-size:100%}

#loading{display:none; width:100%; height:100%; top:0; left:0; position:fixed; background:url(themes/website/img/loader.gif) no-repeat center; background-size:5%; background-color:rgba(255,255,255,0.5)}

#entrytest{clear:both; line-height:160%; margin:30px 0 50px 0}
#entrytest .box{display:none; clear:both; margin-bottom:20px}
#entrytest .box .question{clear:both; margin-bottom:5px}
#entrytest .box .answers{clear:both; margin-left:5%}
#entrytest .box .answers .item{clear:both}
#entrytest .box .answers .item .input{width:4%; float:left; margin:5px 1% 0 0}
#entrytest .box .answers .item .input input{cursor:pointer}
#entrytest .box .answers .item .lable{width:80%; float:left}
#entrytest .box .explain{color:#999; font-size:90%; margin:10px}
#entrytest .control{text-align:right}
#entrytest .control .parent{line-height:180%; margin-bottom:20px}
#entrytest .result{font-size:140%; text-align:center; padding:10px 20px; background-color:#FF9; border:solid 1px #999}
#entrytest .result em{font-size:80%}

#viewTime{font-size:120%; margin-bottom:20px; padding:8px 10px; background-color:#FFC; border:solid 1px #999; border-radius:5px; z-index:1}
#viewTime input{margin-left:20px; padding:3px 10px}

.viewAnalytic{clear:both; margin-bottom:10px}
.viewAnalytic .name{width:auto; float:right; color:#005aab; font-weight:100; margin-right:10px}
.viewAnalytic .analytic{float:right; color:#FFF; font-size:90%}
.viewAnalytic .analytic .total{text-align:right; position:relative; background-color:#60b800; z-index:0}
.viewAnalytic .analytic .number{text-align:center; position:absolute; background-color:rgba(255,255,255,0.2); z-index:1}
.viewAnalytic .analytic .info{text-align:right; font-style:italic; padding:0 10px; position:absolute; z-index:2}

#messagePP{display:none}
#messagePP .bg{width:100%; height:100%; top:0; left:0; position:fixed; background-color:rgba(255,255,255,0.5)}
#messagePP .content{position:fixed; background-color:#FFF; border:solid 1px #999; box-shadow:1px 1px 3px #666}
#messagePP .close{color:#FFF; padding:10px 20px; background-color:#BBB; cursor:pointer}
#messagePP .close:hover{background-color:#999}
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
			/*$arr = array(
				'name' => 'name',
				'width' => 350,
				'height' => 20,
				'result' => 50,
				'correct' => 1,
				'total' => 2,
				'bgcolor' => array('color1', 'color2');
			);*/
			function viewAnalytic($arr){
				$pixel = ($arr['result'] * $arr['width'] / 100).'px';
				$width = $arr['width'].'px';
				$height = $arr['height'].'px';
				$widthInfo = ($arr['width'] - 20).'px';
				$color1 = ''; $color2 = '';
				if(isset($arr['bgcolor'])){
					$color1 = ';background-color:'.$arr['bgcolor'][0];
					$color2 = ';background-color:'.$arr['bgcolor'][1];
				}
				$str = '<div class="viewAnalytic" style="height:'.$height.'; line-height:'.$height.'">
					<div class="analytic" style="width:'.$width.'; height:'.$height.'; line-height:'.$height.'">
						<div class="info" style="width:'.$widthInfo.'; height:'.$height.'">đúng '.$arr['correct'].'/'.$arr['total'].' câu</div>
						<div class="number" style="width:'.$pixel.'; height:'.$height.$color2.'">'.$arr['result'].'%</div>
						<div class="total" style="width:'.$width.'; height:'.$height.$color1.'"></div>
					</div>
					<div class="name">'.$arr['name'].'</div>
				</div>';
				return $str;
			}
			
			$dataUserAnswers = $c->_model->_checkEntryTestUser($users_id, $currentPage['id']);
			if(count($dataUserAnswers)==0){
				$disable = '';
				function viewAnswers($answers){};
				function viewNotes($notes){};
				echo '<div id="viewTime"></div>';
			}else{
				$disable = 'disabled="disabled"';
				function viewAnswers($answers, $style){
					return '<em class="'.$style.'">Đáp án đúng là '.$answers.'</em>';
				}
				function viewNotes($notes){
					return '<div class="explain"><b>Giải thích:</b> '.$notes.'</div>';
				}
			}
			
			//lay thong tin
			$arrAll = array();
			$dataParent = $c->_model->_parent($currentPage['id']);
			foreach($dataParent as $rowParent){
				$dataEntry = $c->_model->_entrytestList($rowParent['id']);
				$number = count($dataEntry);
				
				//thong tin parent
				$arrAll[$rowParent['id']]['info'] = array(
					'name' => $rowParent['name'],
					'number' => $number,
				);
				
				//cac entrytest
				foreach($dataEntry as $rowEntry){
					if(isset($dataUserAnswers[$rowEntry['id']]['answers']))
						$rowEntry['user_answers'] = $dataUserAnswers[$rowEntry['id']]['answers'];
						
					$arrAll[$rowParent['id']]['entrytest'][] = $rowEntry;
				}
			}
			
			//view thong tin
			$labelAnswers = array('', 'A', 'B', 'C', 'D');
			$totalEntryTest = 0;
			$totalUserCorrect = 0;
			$analytic = array();
			foreach($arrAll as $rowAll){
				$totalUserParentCorrect = 0;
				$analyticName = $rowAll['info']['name'];
				$analyticNumber = $rowAll['info']['number'];
				if(isset($rowAll['entrytest'])){
					$dataEntryTest = $rowAll['entrytest'];
					foreach($dataEntryTest as $row){ //chi tiet entry test
						$totalEntryTest++;
						$style = 'error';
						if(isset($row['user_answers']) && $row['correct']==$row['user_answers']){
							$totalUserCorrect++;
							$totalUserParentCorrect++;
							$style = 'message';
						}
						
						$strAnswers = '';
						for($j=1; $j<=4; $j++){ //view 4 dap an
							if(isset($row['user_answers']) && $j==$row['user_answers']) $check=' checked="checked"'; else $check='';
							$strAnswers .= '<div class="item">
								<p class="input"><input type="radio" name="answers_'.$row['id'].'" value="'.$j.'" class="field_all" '.$disable.$check.' /></p>
								<p class="lable"><b>'.$labelAnswers[$j].'.</b> '.$row['answers_'.$j].'</p>
								<p class="clear1"></p>
							</div>';
						}
						echo '<div class="box">
							<div class="question"><b>Câu '.$totalEntryTest.':</b> '.viewAnswers($labelAnswers[$row['correct']], $style).$row['question'].'</div>
							<div class="answers">'.$strAnswers.'</div>'.viewNotes($row['notes']).'
						</div>';
					}
					$analytic[] = array( //thong ke tung nhom
						'name' => $analyticName,
						'total' => $analyticNumber,
						'correct' => $totalUserParentCorrect,
						'result' => round($totalUserParentCorrect / $analyticNumber * 100, 2),
					);
				}
			}
			
			$btnPre = '';
			$viewAnalytic = '';
			if(count($dataUserAnswers)==0){
				$result = '<input type="button" name="btnSubmit" id="btnSubmit" value="Xem kết quả" allquestion="'.$totalEntryTest.'" class="adBtnSmall bgColorBlue corner5 hidden" />';
			}else{
				$btnPre = '<input type="button" name="btnPre" value="&larr; &nbsp; Câu trước" class="adBtnSmall bgColorBlue corner5" />';
				
				foreach($analytic as $row){
					$arr = array(
						'name' => $row['name'],
						'width' => 350,
						'height' => 20,
						'result' => $row['result'],
						'correct' => $row['correct'],
						'total' => $row['total'],
					);
					$viewAnalytic .= viewAnalytic($arr);
				}
				$viewAnalytic = '<div class="parent">'.$viewAnalytic.'</div>';
				
				$result = round($totalUserCorrect / $totalEntryTest * 100, 2);
				
				$arr = array(
					'name' => '<b>Kết quả</b>',
					'width' => 500,
					'height' => 40,
					'result' => $result,
					'correct' => $totalUserCorrect,
					'total' => $totalEntryTest,
					'bgcolor' => array('#60b800', '#ff9500'),
				);
				$result = viewAnalytic($arr);
			}
			
			?>
            <div class="control">
            	<span class="numberAnswers hidden">0</span>
                <?php echo $btnPre;?>
            	<input type="button" name="btnNext" value="Câu kế &nbsp; &rarr;" class="adBtnSmall bgColorBlue corner5" />
                <div class="clear20"></div>
                <?php
                echo $viewAnalytic;
				echo $result;
				?>
            </div>
        </div>
    </div>
    
    <div id="messagePP">
    	<div class="bg"></div>
        <div class="content corner10"></div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	function viewQuestion(number){
		var tags = '.box:eq(' + number + ')';
		$(".box").hide();
		$(tags).show(100);
		if(number==0) $("input[name=btnPre]").hide();
		else $("input[name=btnPre]").show(100);
	}
	function checkQuestion(number){
		var tags = '.box:eq(' + number + ')';
		if( $(tags + ' input:checked').length ) return true;
		else return false;
	}
	viewQuestion(0);
	$("input[name=btnNext]").click(function(){ 
		var number = parseInt( $(".numberAnswers").html() );
		var total = parseInt(<?php echo $totalEntryTest;?>) - <?php if(count($dataUserAnswers)==0) echo 1; else echo 2;?>;
		console.log(number, total);
		if(number == total){
			$(this).hide(100);
			$("#btnSubmit").show(100);
		}
		
		<?php if(count($dataUserAnswers)==0){?>
		var check = checkQuestion(number);
		if(check==false){
			$("#messagePP .content").html('<b class="error">Bạn chưa chọn câu trả lời.</b><p class="clear30"></p><span class="corner5 close">Close</span><p class="clear10"></p>');
			$("#messagePP").show(100);
			return false;
		}
		<?php }?>
		
		number++;
		viewQuestion(number);
		$(".numberAnswers").html(number);
	});
	$("input[name=btnPre]").click(function(){
		var number = parseInt( $(".numberAnswers").html() );
		if(number == 0){
			$(this).hide(100);
			return false;
		}
		$("input[name=btnNext]").show(100);
		number--;
		viewQuestion(number);
		$(".numberAnswers").html(number);
	});
});
</script>

<?php if(count($dataUserAnswers)==0){?>

<?php
$second = $totalEntryTest * 60;
$hour = floor($second/3600);
$minute = floor($second/60) - $hour*60;
$second = $second - $minute*60 - $hour*3600;
?>
<input type="hidden" id="h_val" placeholder="Giờ" value="<?php echo $hour;?>"/>
<input type="hidden" id="m_val" placeholder="Phút" value="<?php echo $minute;?>"/>
<input type="hidden" id="s_val" placeholder="Giây" value="<?php echo $second;?>"/>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#messagePP .bg, #messagePP .close").live("click", function(){
		$("#messagePP").hide(100);
	});
	
	$(".box").hide();
	$("input[name=btnNext]").hide();
	var viewTime = 'Thời gian làm bài bạn có: <b><?php echo "{$hour} Giờ - {$minute} Phút - {$second} Giây";?></b>';
		viewTime+= '<input type="button" name="btnStart" class="adBtnSmall bgColorBlue corner5" value="Bắt đầu" />';
	$("#viewTime").html(viewTime);
	$("input[name=btnStart]").live("click", function(){
		$(this).hide(100);
		var viewTime = 'Thời gian làm bài bạn còn: <b><?php echo '<b id="h"></b> Giờ - <b id="m"></b> Phút - <b id="s"></b> Giây';?></b>';
		$("#viewTime").html(viewTime);
		startTime()
		$("input[name=btnNext]").show(100);
		$(".box:first").show(100);
	});
	
	
	function submitEntryTest(){
		$("#loading").show(100);
		$(".field_all").attr("disabled", true);
		$(this).attr("disabled", true);
		
		$('.field_all:checked').each(function(i, val){
			var answers = $(this).val();
			var users_id = <?php echo $users_id;?>;
			var menu_id = <?php echo $currentPage['id'];?>;
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
	}
	
    $("#btnSubmit").click(function(){
		var allquestion = parseInt( $(this).attr("allquestion") );
		var currentCheck = parseInt( $('.field_all:checked').length );
		if(allquestion != currentCheck){
			$("#messagePP .content").html('<b class="error">Bạn chưa chọn câu trả lời.</b><p class="clear30"></p><span class="corner5 close">Close</span><p class="clear10"></p>');
			$("#messagePP").show(100);
			return false;
		}
		submitEntryTest();
	});
	
	var h = null; // Giờ
    var m = null; // Phút
    var s = null; // Giây
    var timeout = null; // Timeout
    function startTime(){
        /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
		if (h == null){
			h = parseInt( $("#h_val").val() );
			m = parseInt( $("#m_val").val() );
			s = parseInt( $("#s_val").val() );
		}
	 
		/*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
		// Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
		//  - giảm số phút xuống 1 đơn vị
		//  - thiết lập số giây lại 59
		if (s == -1){
			m -= 1;
			s = 59;
		}
	 
		// Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
		//  - giảm số giờ xuống 1 đơn vị
		//  - thiết lập số phút lại 59
		if (m == -1){
			h -= 1;
			m = 59;
		}
	 
		// Nếu số giờ = -1 tức là đã hết giờ, lúc này:
		//  - Dừng chương trình
		if (h == -1){
			clearTimeout(timeout);
			//alert('Hết giờ');
			submitEntryTest();
			return false;
		}
	 
		/*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
		$("#h").html(h);
		$("#m").html(m);
		$("#s").html(s);
	 
		/*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
		timeout = setTimeout(function(){
			s--;
			startTime();
		}, 1000);
    }
    function stopTime(){
        clearTimeout(timeout);
    }
	//startTime();
});
</script>
<?php }?>
</body>
</html>