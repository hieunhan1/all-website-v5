<div class="container">
    <div id="opinion">
        <div class="btnOpinion adBtnSmall bgColorBlue corner5">
        	<b class="left">&ldquo;</b> Ý kiến của bạn <b class="right">&rdquo;</b>
        </div>
        <div class="clear30"></div><div class="clear10"></div>
        
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
                $img = IMAGE_URL.$row['img'];
                if($row['img']=='') $img='themes/website/img/avatar.png';
				if($row['other']!='') $company = ' - '.$row['other']; else $company='';
                echo '<div class="box" id_o="'.$row['id'].'">
                    <div class="img"><img src="'.$img.'" alt="'.$row['name'].'" /></div>
                    <div class="content">
                        '.$row['description'].'...
                        <p class="name">'.$row['name'].$company.'</p>
                    </div>
                    <div class="date">
                        <p>'.date('M d', $row['datetime']).'<br />'.date('Y', $row['datetime']).'</p>
                        <p class="view">'.$lang_var['viewmore'].'</p>
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
            echo '<p style="padding:10px 0px 100px 50px">'.$lang_var['update'].'</p>';
        ?>
    </div>
</div>
<div class="clear30"></div>

<div id="popup">
	<div class="bg"></div>
	<div class="box">
    	<div class="header"><span class="closePP">x</span></div>
    	<div class="content"></div>
    	<div class="footer"><span class="btn closePP">Đóng</span></div>
    </div>
</div>

<div id="frm-opinion" style="display:none">
	<div class="frm-loading">
    	<div class="loading" style="width:95%; height:320px; background-size:20%"></div>
        <div class="error errorGeneral"></div>
		<div class="row">
            <input type="text" name="authors" class="adInput field_item" maxlength="50"  placeholder="Tên đầy đủ" check="2" message="Nhập tên đầy đủ" />
            <p class="error"></p>
            <p class="clear10"></p>
        </div>
        <div class="row">
            <input type="text" name="other" class="adInput field_item" maxlength="150"  placeholder="Công ty" />
            <p class="clear10"></p>
        </div>
        
        <div class="row">
            <textarea type="textarea" name="rejectcontent" class="adInput field_item" placeholder="Ý kiến của bạn" check="50" message="Ý kiến phải hơn 50 ký tự" style="height:110px; line-height:22px; resize:vertical" spellcheck="false"></textarea>
            <p class="error"></p>
            <p class="clear10"></p>
        </div>
        <input type="hidden" name="menu_id" class="field_item" value=",3," />
        <input type="hidden" name="type_id" class="field_item" value="4" />
        <input type="hidden" name="properties" class="field_item" value="2" />
        <input type="hidden" name="datetime" class="field_item" value="<?php echo date('Y-m-d H:i:s');?>" />
        <input type="hidden" name="status" class="field_item" value="0" />
        <input type="button" name="btnSubmit" value="Gửi ý kiến" class="adBtnSmall bgColorBlue corner5" />
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {
    $(".btnOpinion").click(function(){
		var data = $("#frm-opinion").html();
		$("#popup .content").html(data);
		$("#popup").show(200);
	});
	
	$("input[name=btnSubmit]").live("click", function(){
		var fields = ajax_field_all("#popup .field_item");
		if(typeof fields=='boolean') return false;
		fields['rejectOpinion'] = '2';
		fields['name'] = $('input[name=authors]').val();
		
		$("input[name=btnSubmit], .field_item").attr("disabled", true);
		formLoading(1, '', '')
		
		$.ajax({ 	
			url: 'ajax',
			type: 'post',
			data: fields,
			cache: false,
			success: function(data){
				//console.log(data);
				data = data.replace(/\n/g, "");
				data = $.parseJSON(data);
				var error = data.error;
				var message = data.message;
				setTimeout(function(){
					if(error=='0'){
						$(".frm-loading").html(message);
						return true;
					}else if(error=='1'){
						$("input[name=btnSubmit], .field_item").attr("disabled", false);
						formLoading(0, message, '');
						return false;
					}
				},500);
			}
		});
	});
});
</script>