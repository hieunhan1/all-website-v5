<?php
class pageAdmin{
	public $_model;
	public function __construct(){
		$this->_model = new modelAdmin;
		$this->adminType();
	}
	
	public function language(){
		if(!isset($_SESSION['adminLang']))
			$_SESSION['adminLang']=CONS_DEFAULT_LANG;
		else
			if(isset($_GET['lang'])) $_SESSION['adminLang']=$_GET['lang'];
		return $_SESSION['adminLang'];
	}
	
	public function adminType(){
		if(!isset($_SESSION['adminType']))
			$_SESSION['adminType']=1;
		else
			if(isset($_GET['adminType'])) $_SESSION['adminType']=$_GET['adminType'];
	}
	
	public function listViewCatalogAdmin(){
		$adminRole = $_SESSION['adminRole'];
		$arr = array();
		$data = $this->_model->_listAdmin($_SESSION['adminType']);
		foreach($data as $row){
			if(array_key_exists($row['id'], $adminRole)){
				$arr[] = array(
					'id'=>$row['id'],
					'name'=>$row['name'],
					'url'=>$row['url'],
					'table'=>$row['_table'],
					'parameter'=>$row['parameter'],
					'img'=>$row['img'],
					'ajax'=>$row['ajax'],
				);
			}
		}
		return $arr;
	}
	
	public function checkRule($idRule, $listRule){
		if(preg_match("/,{$idRule},/i", $listRule)) return true;
		else return false;
	}
	
	public function strSearch(&$urlSearch){
		$str='';
		$fields = array_keys($_GET);
		$values = array_values($_GET);
		$total = count($fields);
		for($i=0; $i<$total; $i++){
			if($fields[$i]!='page' && $fields[$i]!='lang'){
				$value = $this->_model->_removeDauNhay($values[$i]);
				if($value!=''){
					if(!preg_match("/^LIKE_/i", $fields[$i]) && !preg_match("/^REJECT_/i", $fields[$i])){
						$field = $this->_model->_removeDauNhay($fields[$i]);
						$str .= " AND `{$field}`='{$value}' ";
					}else if(preg_match("/^LIKE_/i", $fields[$i])){
						$field = str_replace('LIKE_', '', $fields[$i]);
						$field = $this->_model->_removeDauNhay($field);
						$str .= " AND `{$field}` LIKE '%{$value}%' ";
					}
					$urlSearch .= "&{$fields[$i]}={$value}";
				}
			}
		}
		if($urlSearch!='') $urlSearch=''.ltrim($urlSearch, '&');
		
		return $str;
	}
	
	public function selectFromAll(&$arr){
		if(isset($_GET['page']) && $_GET['page']>0) $page=$_GET['page']; else $page=1;
		settype($page, "int");
		$startRow = ($page - 1) * CONS_ADMIN_PER_PAGE;
		$strSearch = $this->strSearch($urlSearch);
		
		$where='';
		if(isset($arr['lang'])) $where = " `lang`='{$arr['lang']}' ";
		$where .= $strSearch;
		$where = ltrim($where, ' AND');
		if(isset($arr['where'])) $where.=$arr['where'];
		
		if(!isset($arr['order'])) $order = " `id` DESC "; else $order = " {$arr['order']}, `id` DESC ";
		
		$arrSQL = array(
			'select'=>$arr['select'],
			'from'=>$arr['table'],
			'where'=>$where,
			'order'=>$order,
			'limit'=>array($startRow, CONS_ADMIN_PER_PAGE),
		);
		$data = $this->_model->_select($arrSQL);
		
		$arrSQL2 = array(
			'select'=>$arr['select'],
			'from'=>$arr['table'],
			'where'=>$where,
		);
		$data2 = $this->_model->_select($arrSQL2);
		$totalRows = count($data2);
		
		$arr = array(
			'currentPage'=>$page,
			'totalRows'	=>$totalRows,
			'startRow'	=>$startRow,
			'urlSearch'=>$urlSearch
		);
		return $data;
	}
	
	public function pagesList($url, $totalRows, $perPage, $offSet, $currentPage){
		$str=''; $firstPage=''; $lastPage='';
		$totalPages = ceil($totalRows/$perPage);
		if($totalPages<=1) return false;
		if($totalPages<$currentPage) return false;
		
		if($currentPage-$offSet < 1) $i=1; else $i=$currentPage-$offSet;
		if($currentPage+$offSet<=$totalPages) $j=$currentPage+$offSet; else $j=$totalPages;
		
		if($currentPage > $offSet+1) $firstPage='<a href="'.$url.'&page=1">1</a>';
		if($currentPage > $offSet+2) $firstPage .= '<span class="space">..</span>';
		if($currentPage < $totalPages-$offSet) $lastPage='<a href="'.$url.'&page='.$totalPages.'">'.$totalPages.'</a>';
		if($currentPage < $totalPages-$offSet-1) $lastPage = '<span class="space">..</span>'.$lastPage;
		
		for($i; $i<=$j; $i++){
			if($i!=$currentPage) $str.='<a href="'.$url.'&page='.$i.'">'.$i.'</a>';
			else $str.='<span class="current">'.$i.'</span>';
		}
		
		return $firstPage.$str.$lastPage;
	}
	
	public function viewTableHtml($table){
		$str = '<div id="tableName" style="display:none">'.$table.'</div>';
		return $str;
	}
	
	public function viewFormSearch($arr){
		$str='';
		$all = array();
		for($i=0; $i<count($arr); $i++){
			$all[$arr[$i]['name']] = '';
			if($arr[$i]['type']=='text')
				$str.='<input type="text" name="'.$arr[$i]['name'].'" value="'.$arr[$i]['value'].'" class="txt" placeholder="'.$arr[$i]['other'].'">';
			else if($arr[$i]['type']=='select'){
				$option='';
				$values = $arr[$i]['value'];
				for($j=0; $j<count($values); $j++){
					if(isset($values[$j])){
						if($values[$j]['id'] != $arr[$i]['other']) $check=''; else $check='selected="selected"';
						$option .= '<option value="'.$values[$j]['id'].'" '.$check.'>'.$values[$j]['name'].'</option>';
					}
				}
				$str.='<select class="select" name="'.$arr[$i]['name'].'">'.$option.'</select>';
			}
		}
		
		$hidden='';
		$fields = array_keys($_GET);
		$values = array_values($_GET);
		for($i=0; $i<count($fields); $i++){
			if(!isset($all[$fields[$i]]) && $fields[$i]!='page')
				$hidden .= '<input type="hidden" name="'.$fields[$i].'" value="'.$values[$i].'" />';
		}
		
		$str = '<div id="search"><form action="" method="get">'.$hidden.$str.'<input type="button" name="btnSearch" value="Tìm kiếm" class="btn" onclick="submit()"></form></div>';
		return $str;
	}
	
	public function createEditData($table, &$arrAction, &$rowDetail){
		if(isset($_GET['id'])) $id=$_GET['id']; else $id=0;
		settype($id,'int');
		if($id==0){
			$lable = CONS_BTN_CREATE;
			$disabled = '';
			$type = 1; /*create*/
			$change = '';/*change_alias*/
		}else{
			$lable = CONS_BTN_UPDATE;
			$disabled = array('propertie'=>'disabled', 'value'=>'disabled');
			$type = 2; /*update*/
			$change = '1';
			$rowDetail = $this->_model->_viewEditDetail($table, $id);
		}
		$arrAction = array(
			'lable'=>$lable,
			'disabled'=>$disabled,
			'change'=>$change
		);
		
		return $id;
	}
	
	/*menu web_header*/
	public function selectFromHeaderMenu($lang, $where=''){
		$strSearch = $this->strSearch($urlSearch);
		if($lang != '') $where = "AND `lang`='{$lang}' ";
		
		$where .= $strSearch;
		
		$data = $this->_model->_menuList(0, '', NULL, $where);
		return $data;
	}
	public function menuList($lang, $where=NULL){
		if($where==NULL) $where=" AND `lang`='{$lang}' AND `properties`=1 ";
		else $where=" AND `lang`='{$lang}' AND `properties`=1 AND ({$where})";
		$data = $this->_model->_menuList(0, '', NULL, $where);
		return $data;
	}
	/*end menu web_header*/
	
	/*other*/
	public function messageChange($message, $change=''){
		$str='<span class="adNotes">'.$message.'</span>';
		if($change==1) $str = '<a href="javascript:;" class="adBtnSmall bgColorBlue1 adChange">Thay đổi</a>'.$str;
		return $str;
	}
	
	public function viewDateTime($time){
        return date('Y-m-d H:i', $time);
	}
	/*end other*/
}
include_once('config/configAdmin.php');
$c = new pageAdmin;
$lang = $c->language();
$navigator = $c->_model->_navigator($arrUrl['link']);
$_SESSION['currentPageAdmin'] = $navigator['id'];
$table = $navigator['_table'];

$error='';
if(isset($_POST['btnLogin']) && !isset($_SESSION['adminID'])){
	$cUser = new controlUsers;
	$user = trim($_POST['username']);
	$pass = $_POST['password'];
	
	$error = $cUser->login($user, $pass);
	if($error==1){
		$_SESSION['adminRole'] = $cUser->_model->_listRole($_SESSION['adminID']);
	}
}

if(isset($_SESSION['adminID'])){
	include_once('view/admin.php');
}else{
	include_once('view/admin_login.php');
}