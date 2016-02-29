<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Training Need Assessment(Khảo Sát Nhu Cầu Đào Tạo)</title>
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

.viewpost{line-height:180%; font-size:100%}
.viewpost p, .viewpost div {margin:15px 0}
.viewpost li{padding:0; margin:5px 0}
.viewpost img{max-width:100%; height:auto !important}

#khaosat{clear:both}
#khaosat .box{clear:both; margin-bottom:30px}

.answer{clear:both}
.answer .txta{resize:vertical; line-height:150%}

.meesage{color:#00F}

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
    	<h1 id="h1">Training Need Assessment (Khảo Sát Nhu Cầu Đào Tạo)</h1>
        <div id="khaosat" class="viewpost">
        	<div class="error"></div>
        	<?php
            $arr = array(
				"select" => "*",
				"from" => "`web_khaosat`",
				"where" => "`_table`='{$table}' AND `table_date`='{$table_date}'",
			);
			$data = $c->_model->_select($arr);
			if(count($data)==0){
				echo '<p class="error">* Required (bắt buộc)</p>';
			}else{
				$row = array();
				foreach($data as $r){
					$row[$r['name']] = $r;
				}
            	echo '<p>You have completed the survey. Stevbros checks and contact you soon.<br />
                <em>Bạn đã hoàn thành bản khảo sát. Stevbros sẽ kiểm tra và liên hệ với bạn sớm nhất.</em></p>
                <p>Respect,</p>
				<hr />';
            }
			?>
            <div class="box">
                <div class="question"><b>Question 1:</b> What is the job title/hierarchical/duties of the majority of the participants?<br /><em>Câu 1: Chức danh, thứ bậc, nhiệm vụ của đa số thành viên tham dự lớp học là gì?</em> <span class="error">*</span> </div>
                <div class="answer">
                	<?php if(!isset($row['question1'])){ ?>
                	<textarea type="text" name="question1" class="adInput txta field_item" placeholder="Your answer" spellcheck="false" check="3" message="Required"></textarea>
                    <span class="error"></span>
                    <?php }else{
						echo "<p class='meesage'>{$row['question1']['answer']}</p>";
					}?>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 2:</b> What other job position are represented?<br /><em>Câu 2: Vị trí công việc khác họ làm là gì?</em> <span class="error">*</span></div>
                <div class="answer">
                	<?php if(!isset($row['question2'])){ ?>
                	<textarea type="text" name="question2" class="adInput txta field_item" placeholder="Your answer" spellcheck="false" check="3" message="Required"></textarea>
                    <span class="error"></span>
                    <?php }else{
						echo "<p class='meesage'>{$row['question2']['answer']}</p>";
					}?>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 3:</b> Is the work background of this group mixed?<br /><em>Câu 3: Các thành viên tham dự lớp học có làm khác loại công việc không?</em> <span class="error">*</span></div>
                <div class="answer">
                	<?php
                    $arr = array();
					$arr[] = 'Yes (có)';
					$arr[] = 'No (không)';
					if(!isset($row['question3'])){
						for($i=0; $i<count($arr); $i++){
							$check = '';
							if($i==0) $check='checked="checked"';
							echo '<input type="radio" name="question3" class="radio field_item" value="'.$arr[$i].'" '.$check.' /> '.$arr[$i].' &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ';
						}
					}else{
						for($i=0; $i<count($arr); $i++){
							$check = '';
							if($arr[$i]==$row['question3']['answer']) $check='checked="checked"';
							echo '<input type="radio" name="question3" class="radio field_item" value="'.$arr[$i].'" '.$check.' /> '.$arr[$i].' &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ';
						}
					}
					?>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 4:</b> Why are these people attending this training?<br /><em>Câu 4: Tại sao các thành viên tham dự lớp học này?</em> <span class="error">*</span></div>
                <div class="answer">
                	<?php
                    $arr = array();
					$arr[] = 'For promotion (Để thăng tiến)';
					$arr[] = 'New project management methodology (Phương pháp luận quản lý dự án mới)';
					$arr[] = 'Need basic job skills (Cần kỹ năng công việc cơ bản)';
					$arr[] = 'Want additional skills (Muốn học thêm kỹ năng bổ sung)';
					$arr[] = 'Need skills for job (Cần kỹ năng cho công việc)';
					$arr[] = 'Re-training change (Đào tạo lại những thay đổi)';
					if(!isset($row['question4_1'])){
						for($i=0; $i<count($arr); $i++){
							echo '<input type="checkbox" name="question4" class="checkbox checkBoxItem" value="'.$arr[$i].'" /> '.$arr[$i].'<br />';
						}
						echo '<input type="hidden" name="question4_1" value="" class="listValueItem field_item" />';
					}else{
						$str = explode(',', $row['question4_1']['answer']);
						for($i=0; $i<count($arr); $i++){
							$check = '';
							if(in_array($arr[$i], $str)) $check='checked="checked"';
							echo '<input type="checkbox" name="question4" class="checkbox checkBoxItem" value="'.$arr[$i].'" '.$check.' /> '.$arr[$i].'<br />';
						}
						echo '<input type="hidden" name="question4_1" value="" class="listValueItem field_item" />';
					}
					
					$question4_2 = '';
					if(isset($row['question4_2'])) $question4_2 = $row['question4_2']['answer'];
					?>
                    
                    Other: <input type="text" name="question4_2" value="<?php echo $question4_2;?>" class="adInput txt field_item" style="width:80%" /><br />
                    <span class="error" id="question_4"></span>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 5:</b> How is<br /><em>Câu 5: Mời bạn đánh giá những yếu tố sau
của các thành viên tham dự khoá học</em> <span class="error">*</span></div>
                <div class="answer">
                	<?php
                    $arr = array();
					$arr[] = 'Good (Tốt)';
					$arr[] = 'Average (Vừa)';
					$arr[] = 'Poor (Không tốt)';
					?>
                	<table width="100%" border="0" cellpadding="5" cellspacing="0">
                    	<tr>
                        	<td>&nbsp;</td>
                        	<td width="80">Good (Tốt)</td>
                        	<td width="100">Average (Vừa)</td>
                        	<td width="120">Poor (Không tốt)</td>
                        </tr>
                    	<tr bgcolor="#E1E1E1">
                        	<td>their motivation (động lực của họ)</td>
                            <?php
							$name = 'question5_1';
							if(!isset($row[$name])){
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($i==0) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}else{
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($arr[$i]==$row[$name]['answer']) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}
							?>
                        </tr>
                    	<tr>
                        	<td>their confidence (sự tự tin của họ)</td>
                            <?php
							$name = 'question5_2';
							if(!isset($row[$name])){
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($i==0) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}else{
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($arr[$i]==$row[$name]['answer']) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}
							?>
                        </tr>
                    	<tr bgcolor="#E1E1E1">
                        	<td>their competence (năng lực của họ)</td>
                            <?php
							$name = 'question5_3';
							if(!isset($row[$name])){
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($i==0) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}else{
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($arr[$i]==$row[$name]['answer']) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}
							?>
                        </tr>
                    	<tr>
                        	<td>their interest (sự quan tâm của họ)</td>
                            <?php
							$name = 'question5_4';
							if(!isset($row[$name])){
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($i==0) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}else{
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($arr[$i]==$row[$name]['answer']) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}
							?>
                        </tr>
                    	<tr bgcolor="#E1E1E1">
                        	<td>their level of familiarity with the subject (mức độ quen thuộc của họ về chủ đề đào tạo)</td>
                            <?php
							$name = 'question5_5';
							if(!isset($row[$name])){
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($i==0) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}else{
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($arr[$i]==$row[$name]['answer']) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}
							?>
                        </tr>
                    	<tr>
                        	<td>their attitude for learning (thái độ của họ với việc học tập)</td>
                            <?php
							$name = 'question5_6';
							if(!isset($row[$name])){
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($i==0) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}else{
								for($i=0; $i<count($arr); $i++){
									$check = '';
									if($arr[$i]==$row[$name]['answer']) $check='checked="checked"';
									echo '<td align="center"><input type="radio" name="'.$name.'" class="field_item" value="'.$arr[$i].'" '.$check.' /></td>';
								}
							}
							?>
                        </tr>
                    </table>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 6:</b> List three reasons why these participants need to learn the skills and knowledge from the training:<br /><em>Câu 6: Nhờ bạn liệt kê giúp ba nguyên nhân tại sao các thành viên cần học những kỹ năng và kiến thức từ khoá học này:</em> <span class="error">*</span></div>
                <div class="answer">
                	<?php if(!isset($row['question6'])){ ?>
                	<textarea type="text" name="question6" class="adInput txta field_item" placeholder="Your answer" spellcheck="false" check="3" message="Required"></textarea>
                    <span class="error"></span>
                    <?php }else{
						echo "<p class='meesage'>{$row['question6']['answer']}</p>";
					}?>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 7:</b> List three workplace examples that will make this course relevant to participants:<br /><em>Câu 7: Nhờ bạn liệt kê giúp ba ví dụ trong công việc làm cho khoá học này liên quan đến các thành viên dự khoá học:</em> <span class="error">*</span> </div>
                <div class="answer">
                	<?php if(!isset($row['question7'])){ ?>
                	<textarea type="text" name="question7" class="adInput txta field_item" placeholder="Your answer" spellcheck="false" check="3" message="Required"></textarea>
                    <span class="error"></span>
                    <?php }else{
						echo "<p class='meesage'>{$row['question7']['answer']}</p>";
					}?>
                </div>
            </div>
            
            <div class="box">
                <div class="question"><b>Question 8:</b> List the five most important terms that should be explained to the participants in this course:<br /><em>Câu 8: Nhờ bạn liệt kê năm thuật ngữ quan trọng nhất nên được giải thích cho các thành viên tham dự khoá học:</em></div>
                <div class="answer">
                	<?php if(!isset($row['question8'])){ ?>
                	<textarea type="text" name="question8" class="adInput txta field_item" placeholder="Your answer" spellcheck="false"></textarea>
                    <?php }else{
						echo "<p class='meesage'>{$row['question8']['answer']}</p>";
					}?>
                </div>
            </div>
            <?php if(count($data)==0){ ?>
            <div class="box">
            	<input type="button" name="btnSubmit" value="SUBMIT" id="btnSubmit" class="adBtnSmall bgColorBlue corner5" />
            </div>
            <script type="text/javascript">
			$(document).ready(function(e) {
				$("#btnSubmit").live("click", function(){
					var fields = ajax_field_all(".field_item");
					
					if( $("input[name=question4_1]").val().length<2 && $("input[name=question4_2]").val().length<2 ){
						$("#question_4").html('Required');
						$("input[name=question4_2]").focus();
						return false;
					}else $("#question_4").html('');
					
					if(typeof fields=='boolean') return false;
					fields['rejectKhaoSat'] = '1';
					
					$("#btnSubmit").hide(100);
					$(".field_item, .checkbox").attr("disabled", true);
					
					$.ajax({ 	
						url: 'ajax',
						type: 'post',
						data: fields,
						cache:false,
						success: function(data){
							//console.log(data);
							data = data.replace(/\n/g, "");
							data = $.parseJSON(data);
							var error = data.error;
							var message = data.message;
							setTimeout(function(){
								if(error=='0'){
									$("#khaosat").html(message);
									return true;
								}else if(error=='1'){
									$("#khaosat .error:first").html(message);
									$("#btnSubmit, .field_item, .checkbox").attr("disabled", false);
									return false;
								}
							},500);
						}
					});
				});
			});
			</script>
            <?php } ?>
        </div>
    </div>
</div>


</body>
</html>