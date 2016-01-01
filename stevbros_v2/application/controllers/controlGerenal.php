<?php
class controlGerenal{
	public $_model;
	public function __construct(){
		$this->_model = new modelGerenal;
	}
	
	public function cacheBegin(){
		$bd = (float) array_sum(explode(' ', microtime()));
		$page = 'http://'. $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		$pathfile = CONS_CACHE_URL_FILE . md5($page) . '.' . CONS_CACHE_EXT;
		$file_created = (file_exists($pathfile)) ? filemtime($pathfile) : 0;
		if ( (time() - CONS_CACHE_TIME) < $file_created ) {
			readfile($pathfile);
			$kt = (float) array_sum(explode(' ', microtime()));
			//echo "Xử lý trong cache: ". sprintf("%.5f", ($kt-$bd))." giây";
			ob_end_flush();
			return true;
		}else
			return false;
	}
	
	public function cacheEnd(){
		$page = 'http://'. $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		$pathfile = CONS_CACHE_URL_FILE . md5($page) . '.' . CONS_CACHE_EXT;
		$fp = fopen($pathfile, 'w');
		fwrite($fp, ob_get_contents());
		fclose($fp);
		ob_end_flush();
	}
	
	public function webType($id=NULL){
		$data = $this->_model->_listWebType();
		if($id!=NULL) return $data[$id];
		else return $data;
	}
	
	public function tagHead($title, $des, $key, $image, $url='', $sitename='', $robots='INDEX,FOLLOW'){
		$arr = array(
			'title'=>strip_tags($title),
			'des'=>strip_tags($des),
			'key'=>strip_tags($key),
			'img'=>strip_tags($image),
			'url'=>strip_tags($url),
			'sitename'=>$sitename,
			'robots'=>$robots,
		);
		return $arr;
	}
	
	public function currentPage($link){
		$row = $this->_model->_headerIDAlias($link);
		if(count($row)==0) return false;
		
		$typeMenu = $this->webType($row['type_id']);
		
		if($row['img']=='')
			$img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
		else
			$img = IMAGE_URL.$row['img'];
		
		if($row['url']=='')
			$url=CONS_BASE_URL.'/'.$row['name_alias'];
		else
			$url=$row['url'];
		
		if($row['parent']==0 && $row['menu_id']=='')
			$root[]=array(
				'id'=>$row['id'],
				'name'=>$row['name'],
				'name_alias'=>$row['name_alias'],
				'url'=>$row['url'],
				'title'=>$row['title'],
			);
		else if($row['menu_id']!=''){
			$menu_id = explode(',', $row['menu_id']);
			$menu_id = $menu_id[count($menu_id)-2];
			$root = $this->_model->_headerRoot($menu_id);
		}else 
			$root = $this->_model->_headerRoot($row['parent']);
			
		$arr = array(
			'id'=>$row['id'],
			'name'=>$row['name'],
			'name_alias'=>$row['name_alias'],
			'title'=>$row['title'],
			'description'=>$row['description'],
			'tags'=>$row['tags'],
			'url'=>$url,
			'img'=>$img,
			'lang'=>$row['lang'],
			'properties'=>$row['properties'],
			'menu_id'=>$row['menu_id'],
			'datetime'=>$row['datetime'],
			'typeID'=>$typeMenu['id'],
			'type'=>$typeMenu['type'],
			'table'=>$typeMenu['_table'],
			'rootID'=>$root[0]['id'],
			'rootName'=>$root[0]['name'],
			'rootAlias'=>$root[0]['name_alias'],
			'rootUrl'=>$root[0]['url'],
			'rootTitle'=>$root[0]['title'],
		);
		return $arr;
	}
	
	public function getSubMenu($lang, $parent, $position){
		$arr = array(
			'lang' => $lang,
			'parent' => $parent,
			'position_id' => $position,
		);
		$data = $this->_model->_headerData($arr);
		$view='';
		if(count($data)>0){
			$view.='<ul>';
			foreach($data as $row){
				if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
				$view .= '<li><a href="'.$url.'" title="'.$row['title'].'">'.$row['name'].'</a>';
				$view .= $this->getSubMenu($lang, $row['id'], $position);
				$view .= '</li>';
			}
			$view .= '</ul>';
		}
		return $view;
	}
	
	public function navigator($lang, $parent, $arr=NULL){
		if(!$arr) $arr=array();
		if($parent==0){
			if($lang==CONS_DEFAULT_LANG) $arr[] = array('name'=>'Trang chủ', 'url'=>'/', 'title'=>'');
			else $arr[] = array('name'=>'Home', 'url'=>'/'.$lang, 'title'=>'');
			return array_reverse($arr);
		}
		
		$row = $this->_model->_headerIDAlias($parent);
		if($row['url']=='') $url=$row['name_alias']; else $url=$row['url'];
		$arr[] = array(
			'name'=>$row['name'],
			'url'=>$url,
			'title'=>$row['title']
		);
		$arr = $this->navigator($lang, $row['parent'], $arr);
		return $arr;
	}
	public function viewNavigator($lang, $id){
		$i=0;
		$str='<div id="navigator">';
		$data = $this->navigator($lang, $id);
		foreach($data as $row){
			$i++;
			if($i!=1)
				$str.='<span>&gt;&gt;</span><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
			else
				$str.='<a href="'.$row['url'].'" id="naviHome" class="allIcon">&nbsp;</a>';
		}
		$str.='</div>';
		return $str;
	}
	
	public function pagesList($url, $totalRows, $perPage, $offSet, $currentPage){
		$str=''; $firstPage=''; $lastPage='';
		$totalPages = ceil($totalRows/$perPage);
		if($totalPages<=1) return false;
		if($totalPages<$currentPage) return false;
		
		if($currentPage-$offSet < 1) $i=1; else $i=$currentPage-$offSet;
		if($currentPage+$offSet<=$totalPages) $j=$currentPage+$offSet; else $j=$totalPages;
		
		if($currentPage > $offSet+1) $firstPage='<a href="'.$url.'/1">1</a>';
		if($currentPage > $offSet+2) $firstPage .= '<span class="space">..</span>';
		if($currentPage < $totalPages-$offSet) $lastPage='<a href="'.$url.'/'.$totalPages.'">'.$totalPages.'</a>';
		if($currentPage < $totalPages-$offSet-1) $lastPage = '<span class="space">..</span>'.$lastPage;
		
		for($i; $i<=$j; $i++){
			if($i!=$currentPage) $str.='<a href="'.$url.'/'.$i.'">'.$i.'</a>';
			else $str.='<span class="current">'.$i.'</span>';
		}
		
		return $firstPage.$str.$lastPage;
	}
	
	public function headerMenu($menu_id){
		$menu_id = explode(',', $menu_id);
		$menu_id = $menu_id[count($menu_id)-2];
		return $this->_model->_headerIDAlias($menu_id);
	}
	
	public function logo($lang){
		$arr = array(
			'lang' => $lang,
			'parent' => 0,
			'position_id' => 14,
			'order'=>'`_order`',
		);
		$data = $this->_model->_headerData($arr);
		return $data;
	}
}
?>