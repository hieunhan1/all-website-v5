<div class="btnClearLogs adBtnSmall bgColorRed corner8" style="margin-bottom:10px">Xóa logs, ấn vào đây.</div>

<script type="text/javascript">
$(document).ready(function(e) {
	$(".btnClearLogs").click(function(){
		var str = '<p style="font-weight:bold">Xóa logs và chỉ lưu logs trong 30 ngày gần đây?</p> <p class="clear20"></p>';
			str+= '<p> <span id="clearLogs" class="adBtnSmall bgColorRed corner5">Yes</span> <span class="adBtnSmall bgColorGray corner5 popupClose">No</span> </p>';
			str+= '<p class="clear1"></p>';
		popupLoad(str);
	});
    $("#clearLogs").live("click", function(){
		$.ajax({
			url: 'ajax/',
			type:'POST',
			data:{clearLogs:31},
			cache:false,
			success: function(data) { console.log(data);
				if(data==""){
					var str = '<b class="adMessage">Xóa logs thành công. Vui lòng đợi 3s để tải lại trang.</b>';
					popupLoad(str);
					setTimeout(function(){
						window.location.reload();
					}, 3000);
				}
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
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Name');

$name = 'action';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn hành động --');
$value[] = array('id'=>'create', 'name'=>'Create - Hành động tạo mới');
$value[] = array('id'=>'update', 'name'=>'Update - Hành động cập nhật');
//$value[] = array('id'=>'status', 'name'=>'Status - Thay đổi trạng thái');
$value[] = array('id'=>'delete', 'name'=>'Delete - Hành động xóa');
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
        <p class="fieldQuickView" type="txt" name="name">Name</p>
        <p class="fieldQuickView" type="txt" name="action">Action</p>
        <p class="fieldQuickView" type="txt" name="datetime">Date</p>
        <p class="fieldQuickView" type="txt" name="username">User</p>
    </div>
	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="adTable">
    	<tr class="header">
        	<th width="50">No.</th>
            <th align="left">Name</th>
            <th width="70" align="left">Action</th>
            <th width="90" align="left">Table</th>
            <th width="110" align="left">Date</th>
            <th width="70" align="left">User</th>
            <th width="92" align="left">Status</th>
            <th width="80">Action</th>
        </tr>
        <?php
		$status = array('Chưa phục hồi', '<span class="adMessage">Đã phục hồi</span>');
		$i = 0;
		$arr = array(
			'lang'=>$lang,
			'select'=>'`id`, `name`, `action`, `_table`, `datetime`, `username`, `status`',
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
                <td><p class="height"><?php echo $row['_table'];?></p></td>
                <td><?php echo $c->viewDateTime($row['datetime']);?></td>
                <td><?php echo $row['username'];?></td>
                <td><?php echo $status[$row['status']];?></td>
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
					echo status_edit(NULL, $link);
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