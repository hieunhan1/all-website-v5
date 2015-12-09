<div id="clearLogs" style="width:450px; text-align:center; font-weight:bold; color:#FFF; text-transform:uppercase; margin:0 auto 5px auto; padding:8px; background-color:#03F; border-radius:5px; cursor:pointer">Xóa logs và chỉ lưu lại trong 30 ngày, ấn vào đây.</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#clearLogs").click(function(){
		$.ajax({
			url: 'ajax/',
			type:'POST',
			data:{clearLogs:31},
			cache:false,
			success: function(data) {
				if(data=="1") alert('Xóa logs thành công.');
				return true;
			}
		});
	});
});
</script>

<?php
$arrFrmSearch = array();

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Mô tả');

$name = 'action';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn hành động --');
$value[] = array('id'=>'create', 'name'=>'Create - Hành động tạo mới');
$value[] = array('id'=>'update', 'name'=>'Update - Hành động cập nhật');
$value[] = array('id'=>'status', 'name'=>'Status - Thay đổi trạng thái');
$value[] = array('id'=>'delete', 'name'=>'Delete - Hành động xóa');
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
        <p class="fieldQuickView" type="txt" name="name">Mô tả</p>
        <p class="fieldQuickView" type="txt" name="name_var">Tên biến</p>
        <p class="fieldQuickView" type="txt" name="value">Giá trị</p>
        <p class="fieldQuickView" type="txt" name="order">Thứ tự</p>
    </div>
    <div id="urlImg" class="tagsHidden"><?php echo $urlImg[$navigator['url_img']]['url_img_thumb'];?></div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">STT</th>
            <th align="left">Mô tả</th>
            <th width="100" align="left">Action</th>
            <th width="140" align="left">Table</th>
            <th width="120" align="left">Date</th>
            <th width="100" align="left">User</th>
            <th width="80">Thao tác</th>
        </tr>
        <?php
		$i = 0;
		$arr = array(
			'lang'=>$lang,
			'select'=>'`id`, `name`, `action`, `table`, `datetime`, `username`, `status`',
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
                <td><p class="height"><?php echo $row['action'];?></p></td>
                <td><p class="height"><?php echo $row['table'];?></p></td>
                <td><?php echo $c->viewDateTime($row['datetime']);?></td>
                <td><?php echo $row['username'];?></td>
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