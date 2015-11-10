<?php
$arrFrmSearch = array();

$name = 'code';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Số thẩm tra');

$name = 'LIKE_name';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Tên công trình');

$name = 'LIKE_investor';
if(!isset($_GET[$name])) $value=''; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Chủ đầu tư');

$name = 'date_examine';
if(!isset($_GET[$name])) $value='2010-01-01 00:00'; else $value=$_GET[$name];
$arrFrmSearch[] = array('type'=>'text', 'name'=>$name, 'value'=>$value, 'other'=>'Số thẩm tra', 'class'=>'datetimepick');

$arrFrmSearch[] = array('type'=>'style', 'name'=>'<div class="clear5"></div>');

$name = 'type';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- loại c.trình --');
$value[] = array('id'=>'1', 'name'=>'Công trình thẩm tra');
$value[] = array('id'=>'2', 'name'=>'Công trình thiết kế');
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

$name = 'other';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- c.trình chính phụ --');
$value[] = array('id'=>'1', 'name'=>'Công trình chính');
$value[] = array('id'=>'2', 'name'=>'Công trình phụ');
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

$name = 'district_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- chọn quận huyện --');
$data = $c->_model->_listTable('web_listdistrict', '`name`');
foreach($data as $row){
	$value[] = array('id'=>$row['id'], 'name'=>$row['name']);
}
if(!isset($_GET[$name])) $other=''; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

$name = 'LIKE_city_id';
$value = array();
$value[] = array('id'=>'', 'name'=>'-- tất cả nợ và không nợ --');
$value[] = array('id'=>'3', 'name'=>'Công trình còn nợ');
$value[] = array('id'=>'5', 'name'=>'Công trình hết nợ');
if(!isset($_GET[$name])) $other='3'; else $other=$_GET[$name];
$arrFrmSearch[] = array('type'=>'select', 'name'=>$name, 'value'=>$value, 'other'=>$other);

echo $c->viewFormSearch($arrFrmSearch);

echo $c->viewTableHtml($table);
?>
<div id="content">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="view_select">
    	<tr bgcolor="#88C4FF">
        	<!--<th width="50">STT</th>-->
        	<th width="90" align="left" style="padding-left:10px">Số thẩm tra</th>
            <th align="left">Tên công trình</th>
            <th width="150" align="left">Chủ đầu tư</th>
            <th width="120" align="left">Ngày thẩm tra</th>
            <th width="120" align="left">Ghi chú</th>
            <th width="200" align="right" style="padding-right:10px">Các đợt t.toán</th>
        </tr>
        <?php
		$i=0; $where = ''; $order = '';
		$data = $c->selectFromAll($lang, $table, $arr, $where, $order);
		foreach($data as $row){
			$i++; $str=''; $totalPayment=0;
			$i = $arr['startRow'] + $i;
			$str .= '<tr class="row" id="'.$row['id'].'" name="'.$row['name'].'">
                <!--<td align="center">'.$i.'</td>-->
                <td style="padding-left:10px">'.$row['code'].'</td>
                <td><p class="height_row_hidden" title="'.$row['name'].'">'.$row['name'].'</p></td>
                <td><p class="height_row_hidden" title="'.$row['investor'].'">'.$row['investor'].'</p></td>
                <td>'.date('d-m-Y', $row['date_examine']).'</td>
                <td style="color:#F00"><p class="height_row_hidden" title="'.$row['notes'].'">'.$row['notes'].'</p></td>
				<td style="padding:5px 10px 5px 0">';
				
            	$dataPayment = $c->_model->_listTable('web_payment', '`id`', "AND `construction_code`='{$row['code']}'");
				foreach($dataPayment as $rowPayment){
					$totalPayment += $rowPayment['amount'];
					$str .= '<p class="detailPayment">
						<span class="number">'.number_format($rowPayment['amount'], 0, ',', '.').'</span>
						<span class="date">'.date('d/m/Y H:i', $rowPayment['datetime']).'</span>
					</p>';
				}
				$str .= '<p class="detailPayment">Tổng các đợt đóng: <span class="totalPayment">'.number_format($totalPayment, 0, ',', '.').'</span></p>';
				$str .= '<p class="detailPayment">Tổng chi phí c.trình: <span class="total">'.number_format($row['provisional_costs'], 0, ',', '.').'</span></p>';
				if($row['provisional_costs'] > $totalPayment){
					$debt = $row['provisional_costs'] - $totalPayment;
					$str .= '<p class="detailPayment">Còn nợ: <span class="debt">'.number_format($debt, 0, ',', '.').'</span></p>';
				}
			$str .= '</td></tr>';
			
			if(isset($_GET['LIKE_city_id'])){
				if($_GET['LIKE_city_id']==3 && $row['provisional_costs']>$totalPayment) echo $str;
				else if($_GET['LIKE_city_id']==5 && $row['provisional_costs']<=$totalPayment) echo $str;
				else if($_GET['LIKE_city_id']=='') echo $str;
			}else{
				if($row['provisional_costs']>$totalPayment) echo $str;
			}
		}
		?>
    </table>
    <div id="phantrang">
		<?php
		$urlSearch = CONS_LINK_ADMIN.'/'.$navigator['url'].'/?'.$arr['urlSearch'];
		$offSet = 5;
		$totalRows = $arr['totalRows'];
		$currentPage = $arr['currentPage'];
		$totalPages = ceil($totalRows/CONS_ADMIN_PER_PAGE);
		$data = $c->pagesList($urlSearch, $totalRows, CONS_ADMIN_PER_PAGE, $offSet, $currentPage);
		echo $data;
		?>
    </div>    
    <div style="clear:both; height:50px"></div>
</div>