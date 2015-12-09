<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'type';
$value = array();
$value[0] = array('id'=>' ', 'name'=>'-- loại --');
$value[1] = array('id'=>'1', 'name'=>'Catalog (danh mục)');
$value[2] = array('id'=>'2', 'name'=>'Trang home');
$value[3] = array('id'=>'3', 'name'=>'Khác');
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
        <p class="fieldQuickView" type="txt" name="id">ID</p>
        <p class="fieldQuickView" type="txt" name="name">Mô tả</p>
        <p class="fieldQuickView" type="txt" name="themes">Themes</p>
        <p class="fieldQuickView" type="txt" name="type">Loại</p>
    </div>
    <div id="urlImg" class="tagsHidden"><?php echo $urlImg[$navigator['url_img']]['url_img_thumb'];?></div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th width="50">ID</th>
            <th align="left">Mô tả</th>
            <th width="20%" align="left">Loại</th>
            <th width="15%" align="left">Themes website</th>
            <th width="80">Thứ tự</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			//'lang'=>$lang,
			'select'=>'`id`, `name`, `themes`, `type`, `order`, `status`',
			'table'=>$table,
			//'where'=>'',
			'order'=>'`order`',
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td align="center"><?php echo $row['id'];?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><p class="height"><?php echo $value[$row['type']]['name'];?></p></td>
                <td><p class="height"><?php echo $row['themes'];?></p></td>
                <td align="center"><?php echo $row['order'];?></td>
                <td align="center" class="adAction">
                	<?php
                    $str=''; $key = array_keys($row);
					for($j=0; $j<count($key); $j++){
						if(!preg_match("/date/", $key[$j])){
							if($key[$j]!='type') $str.='"'.$key[$j].'":"'.$row[$key[$j]].'", ';
							else $str.='"'.$key[$j].'":"'.$value[$row[$key[$j]]]['name'].'", ';
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