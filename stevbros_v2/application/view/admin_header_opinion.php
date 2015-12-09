<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'LIKE_menu_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn danh mục --');
$where = "(type_id=4)";
$data = $c->menuList($lang, $where);
foreach($data as $row){
	$value[] = array('id'=>",{$row['id']},", 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);

echo $c->viewTableHtml($table);

if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
    	<p class="fieldQuickView" type="img" name="img"></p>
        <p class="fieldQuickView" type="txt" name="name">Mô tả</p>
        <p class="fieldQuickView" type="txt" name="datetime">Ngày</p>
        <p class="fieldQuickView" type="txt" name="tags">Từ khóa</p>
        <p class="fieldQuickView" type="des" name="description">Thông tin</p>
    </div>
    <div id="urlImg" class="tagsHidden"><?php echo $urlImg[$navigator['url_img']]['url_img_thumb'];?></div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="150" align="left">Tên hình</th>
            <th width="110">Ngày</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'lang'=>$lang,
			'select'=>'`id`, `name`, `img`, `description`, `tags`, `datetime`, `status`',
			'table'=>$table,
			//'where'=>'',
			//'order'=>'',
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><?php echo $row['img'];?></td>
                <td><?php echo $c->viewDateTime($row['datetime']);?></td>
                <td align="center" class="adAction">
                	<?php
                    $str=''; $key = array_keys($row);
					for($j=0; $j<count($key); $j++){
						if(!preg_match("/date/", $key[$j])){
							$str.='"'.$key[$j].'":"'.$row[$key[$j]].'", ';
						}else{
							$str.='"'.$key[$j].'":"'.$c->_model->_viewDateTime($row[$key[$j]]).'", ';
						}
					}
					$str=rtrim($str, ', ');
					echo '<div class="data">{'.$str.'}</div>';
					echo '<a href="javascript:;" class="adStatus"><span class="adIconStatus corner5 status'.$row['status'].'"></span></a>
					<a href="'.CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$para.'&id='.$row['id'].'" class="adEdit"><span class="adIconWhite corner5"></span></a>';
					?>
                	<a href="javascript:;" class="adDelete"><span class="adIconWhite corner5"></span></a>
                </td>
            </tr>
        <?php }?>
    </table>
    <div class="pageList">
		<?php
		$urlSearch = CONS_LINK_ADMIN.'/'.$navigator['url'].'/?'.$arr['urlSearch'];
		$offSet = 5;
		$totalRows = $arr['totalRows'];
		$currentPage = $arr['currentPage'];
		$data = $c->pagesList($urlSearch, $totalRows, CONS_ADMIN_PER_PAGE, $offSet, $currentPage);
		echo $data;
		?>
    </div>
</div>