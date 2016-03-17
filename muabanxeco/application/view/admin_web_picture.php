<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

echo $c->viewFormSearch($arrFrmSearch);

if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
    	<p class="fieldQuickView" type="img" name="img"></p>
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="nameFolder">Danh mục</p>
        <p class="fieldQuickView" type="txt" name="datetime">Ngày</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th align="left">Name</th>
            <th width="25%" align="left">Danh mục</th>
            <th width="110">Ngày</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'lang'=>$lang,
			'select'=>array(
				'web_picture.id',
				'web_picture.name',
				'web_picture.img',
				'web_picture.datetime',
				'web_header.name as nameFolder',
				'web_header.status',
			),
			'table'=>'`web_picture`, `web_header`',
			'where'=>'AND `table_id`=`web_header`.`id` AND `type_id`=7',
			'order'=>'web_header.name',
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td><p class="height"><?php echo $row['nameFolder'];?></p></td>
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
					$link = CONS_LINK_ADMIN.'/'.$navigator['url'].'/'.$para.'&id='.$row['id'];
					echo status_edit($row['status'], $link);
					echo $btnDelete;
					?>
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