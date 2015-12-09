<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if($navigator['name']!='') echo $navigator['name']; else echo 'Trang quản trị';?></title>
<meta name="robots" content="nofollow" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<link rel="stylesheet" type="text/css" href="themes/admin2/ad-general.css">
<link rel="stylesheet" type="text/css" href="themes/admin2/ad-style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.wallform.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_admin.js"></script>

<script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/ckfinder/ckfinder.js"></script>

<link type="text/css" href="js/datetimepick/jquery.simple-dtpicker.css" rel="stylesheet" />
<script type="text/javascript" src="js/datetimepick/jquery.simple-dtpicker.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(".datetimepick").appendDtpicker({
			//"dateFormat": "DD/MM/YYYY h:m",
		});
	});
</script>

<script type="text/javascript">
function BrowseServer( startupPath, functionData ){
	var finder = new CKFinder();
	finder.basePath = 'ckfinder/';
	finder.startupPath = startupPath;
	finder.selectActionFunction = SetFileField;
	finder.selectActionData = functionData;
	finder.popup(1000, 530);
}
function SetFileField(fileUrl, data){
	var sFileName = this.getSelectedFile().name;
	document.getElementById(data["selectActionData"]).value = sFileName;
}
</script>

</head>

<body>

<div id="wrapper">
    <div id="adTop">
        <div class="left iconLogin">Webmaster</div>
        <div class="right">
            <span class="adIconWhite adIconUser"></span>Chào: <span class="b"><?php echo $_SESSION['adminName']; ?></span>
            <a href="<?php echo CONS_LINK_ADMIN;?>/user/?infomation=1" class="link"><span class="adIconWhite adIconPass"></span>Đổi mật khẩu</a> | 
            <a href="<?php echo CONS_LINK_ADMIN;?>/user/?logout=1" class="link"><span class="adIconWhite adIconLogOut"></span>Logout</a>
        </div>
    </div>
    
    <div id="adHeader">
    	<div class="adTab adHeader">
        	<?php
            $arr = array(
				'1'=>CONS_BASE_URL.'/'.CONS_LINK_ADMIN.'/?adminType=1',
				'2'=>CONS_BASE_URL.'/'.CONS_LINK_ADMIN.'/?adminType=2',
				'3'=>CONS_BASE_URL.'/'.CONS_LINK_ADMIN.'/?adminType=3',
			);
			$link = CONS_BASE_URL.'/'.CONS_LINK_ADMIN.'/?adminType=';
			$data = array();
			$data[] = array('id'=>1, 'name'=>'Info');
			$data[] = array('id'=>2, 'name'=>'Admin');
			$data[] = array('id'=>3, 'name'=>'Manager');
			foreach($data as $row){
				if($_SESSION['adminType']!=$row['id']) $active='link'; else $active='active bgColorGray';
				echo '<a href="'.$link.$row['id'].'" class="item '.$active.' corner5">'.$row['name'].'</a>';
			}
			?>
        </div>
        
        <div id="navigator">
        	<a href=""><span class="adIconBlack adIconHome"></span></a>
            <span class="span">&gt;&gt;</span>
            <?php echo '<a href="'.$navigator['url'].'/'.$navigator['parameter'].'" class="link">'.$navigator['name'].'</a>';?>
        </div>
        
		<?php
        $data = $c->_model->_listLanguages();
        if(count($data)>1 && !isset($_GET['id'])){
            echo '<div id="adListLang">';
            foreach($data as $row){
				if($lang!=$row['code'])
                	echo '<a href="'.CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$navigator['parameter'].'?&lang='.$row['code'].'" class="link"><span class="adIconBlack adIconPosition"></span>'.$row['name'].'</a>';
            }
            echo '</div>';
        }
        ?>
        
        <div class="clear1" style="background-color:#CCC"></div>
    </div>
    
    <div id="adLeft">
        <div id="adMain">
        	<ul>
            	<?php
				$controlAdmin = $c->listUserRule($_SESSION['adminRuleView']);
				foreach($controlAdmin as $row){
					$link = CONS_LINK_ADMIN.'/'.$row['url'].'/'.$row['parameter'];
					if($navigator['url']!=$row['url']) $actice=''; else $actice='class="active"';
					if($row['ajax']!=1) $ajax=''; else $ajax='<span id="'.$row['url'].'" class="ajax_thongtin"></span>';
					echo '<li><a href="'.$link.'" '.$actice.'><span class="adIconBlack '.$row['img'].'"></span>'.$row['name'].$ajax.'</a></li>';
				}
				?>
            </ul>
        </div>
    </div>
    
    <div id="adRight">
    	<?php
		//header right
        if(!isset($_GET['id']) && $navigator['url']!='home' && $navigator['url']!='user'){
			if($navigator['parameter']=='') $idAdd='?&id=0'; else $idAdd='&id=0';
			$link = CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$navigator['parameter'].$idAdd;
			echo '<div class="rightHeader">
				<a href="'.$link.'" class="adCreate iconLogin">Thêm mới</a>
				<div class="quickView"></div>
				<div class="clear1"></div>
			</div>';
		}
		//end header right
		
		$checkView = $c->checkRule($navigator['id'], $_SESSION['adminRuleView']);
		$checkAction = $c->checkRule($navigator['id'], $_SESSION['adminRuleAction']);
		if(!isset($_GET['id']) && $checkView==true){
			$fileName = "admin_{$navigator['file']}.php";
			if(file_exists('view/'.$fileName)) include_once($fileName);
			else echo '<p class="error">'.ERROR_NOT_FOUND_FILE.$fileName.'</p>';
		}elseif(isset($_GET['id']) && $checkAction==true){
			$fileName = "admin_{$navigator['file']}_ac.php";
			if(file_exists('view/'.$fileName)) include_once($fileName);
			else echo '<p class="error">'.ERROR_NOT_FOUND_FILE.$fileName.'</p>';
		}elseif($navigator['url']=='user'){
			include_once('admin_account.php');
		}else echo '<p class="error">Vui lòng liên hệ người quản trị để cấp quyền.</p>';
		?>
        <div style="clear:both; height:30px"></div>
    </div>
</div>

<div id="dataAction">
	<div id="dataActionContent"><span class="process">Lưu thành công</span></div>
    <div id="dataActionBG"></div>
</div>

<div id="adPopup">
    <div id="adBgPopup"></div>
    <div class="containerPopup corner8">
        <div class="headerPopup">
            <h3 class="titlePopup"></h3>
            <div class="close closePopup">x</div>
            <div class="clear1"></div>
        </div>
        <div class="contentPopup"></div>
        <div class="clear20"></div>
    </div>
</div>

</body>
</html>