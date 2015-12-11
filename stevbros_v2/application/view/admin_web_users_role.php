<?php
$arrFrmSearch = array();

$name = 'username';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Username');


$name = 'admin_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- Mục quản trị --');
$data = $c->_model->_listTable('web_admin', '`type`, `order`');
foreach($data as $row){
	$value[] = array('id'=>"{$row['id']}", 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);


if($navigator['parameter']=='')
	$para='?';
else
	$para=$navigator['parameter'];
?>
<div id="adContent">
	<div class="tagsHidden">
        <p class="fieldQuickView" type="txt" name="username">Username</p>
        <p class="fieldQuickView" type="txt" name="name">Mục quản trị</p>
        <p class="fieldQuickView" type="txt" name="action_view">Quyền xem</p>
        <p class="fieldQuickView" type="txt" name="action_create">Quyền tạo</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th align="left">Username</th>
            <th width="20%" align="left">Mục quản lý</th>
            <th width="80">View</th>
            <th width="80">Create</th>
            <th width="80">Edit</th>
            <th width="80">Delete</th>
            <th width="100">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			//'lang'=>$lang,
			'select'=>array(
				'web_users_role.id',
				'web_users_role.action_view',
				'web_users_role.action_create',
				'web_users_role.action_edit',
				'web_users_role.action_delete',
				'web_users_role.status',
				'username',
				'web_admin.name',
			),
			'table'=>'`web_users_role`, `web_users`, `web_admin`',
			'where'=>'AND `users_id`=`web_users`.`id` AND `admin_id`=`web_admin`.`id`',
			'order'=>'`users_id` DESC',
		);
		$data = $c->selectFromAll($arr);
		foreach($data as $row){
			$i++; ?>
            <tr class="row">
                <td align="center"><?php echo $arr['startRow']+$i; ?></td>
                <td><p class="height"><?php echo $row['username'];?></p></td>
                <td><p class="height"><?php echo $row['name'];?></p></td>
                <td align="center"><?php echo $row['action_view'];?></td>
                <td align="center"><?php echo $row['action_create'];?></td>
                <td align="center"><?php echo $row['action_edit'];?></td>
                <td align="center"><?php echo $row['action_delete'];?></td>
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