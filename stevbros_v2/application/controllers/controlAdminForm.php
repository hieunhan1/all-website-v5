<?php
class controlAdminForm{
	public function displayTable($label, $data, $class='label', $id=NULL){
		if($id!=NULL) $id='id=" '.$id.'"';
		if($label=='') $label='&nbsp;';
		$str = '<tr'.$id.'><td class="'.$class.'">'.$label.'</td><td class="labelData">'.$data.'</td></tr>';
		return $str;
	}
	public function displayTableColspan($data, $class='label', $id=NULL){
		if($id!=NULL) $id='id=" '.$id.'"';
		$str = '<tr'.$id.'><td colspan="2">'.$data.'</td></tr>';
		return $str;
	}
	public function displayDiv($label, $field){
		$str='<div class="adField">';
		if($label!='')
			$str.='<div class="label">'.$label.'</div><div class="field">'.$field.'</div>';
		else
			$str.='<div class="field2">'.$field.'</div>';
		$str.='<div class="clear1"></div></div>';
		return $str;
	}
	
	public function properties($properties){ # $properties = array()
		$str = '';
		for($i=0; $i<count($properties); $i++){
			$str .= $properties[$i]['propertie'].'="'.$properties[$i]['value'].'" ';
		}
		return $str;
	}
	
	public function inputText($name, $value, $class, $properties=NULL, $others=NULL){
		$strPro='';
		if($properties!=NULL){
			$strPro = $this->properties($properties);
		}
		$str = '<input type="text" name="'.$name.'" value="'.$value.'" id="'.$name.'" class="'.$class.'" '.$strPro.' />'.$others;
		return $str;
	}
	
	public function inputHidden($name, $value, $class='', $properties=NULL, $others=NULL){
		$strPro='';
		if($properties!=NULL){
			$strPro = $this->properties($properties);
		}
		$str = '<input type="hidden" name="'.$name.'" value="'.$value.'" id="'.$name.'" class="'.$class.'" '.$strPro.' />'.$others;
		return $str;
	}
	
	public function textArea($name, $value, $class, $properties=NULL, $others=NULL){
		$strPro='';
		if($properties!=NULL){
			$strPro = $this->properties($properties);
		}
		$str = '<textarea name="'.$name.'" id="'.$name.'" '.$strPro.' class="'.$class.'" >'.$value.'</textarea>'.$others;
		return $str;
	}
	
	public function inputRadio($name, $values, $valueCheck, $class, $view=0, $others=NULL){ # $values=array()
		$str='';
		if($view==0) $view=' &nbsp; &nbsp; '; else $view='<br />';
		foreach($values as $value){
			if($value['id']!=$valueCheck) $checked=''; else $checked='checked="checked"';
			$str .= '<span class="span"><input type="radio" name="'.$name.'" id="'.$name.$value['id'].'" class="'.$class.'" value="'.$value['id'].'" '.$checked.' /> '.$value['name'].$view.'</span>';
		}
		$str .= $others;
		return $str;
	}
	
	public function inputCheckbox($name, $values, $valueCheck, $class, $view=1, $others=NULL){ # $values=array()
		$str='';
		if($view==1) $view='<br />'; else $view=' &nbsp; &nbsp; ';
		foreach($values as $value){
			if(!preg_match("/,{$value['id']},/i", $valueCheck)) $checked=''; else $checked='checked="checked"';
			$str .= '<span class="span"><input type="checkbox" name="'.$name.'" id="'.$name.$value['id'].'" class="'.$class.'" value="'.$value['id'].'" '.$checked.' /> '.$value['name'].$view.'</span>';
		}
		$str .= $others;
		return $str;
	}
	
	public function select($name, $values, $valueCheck, $class, $properties=NULL, $others=NULL){ # $values=array()
		$strPro='';
		if($properties!=NULL){
			$strPro = $this->properties($properties);
		}
		$str = '<select name="'.$name.'" id="'.$name.'" class="'.$class.'" '.$strPro.'>';
		foreach($values as $value){
			if($value['id']!=$valueCheck) $checked=''; else $checked='selected="selected"';
			$str .= '<option value="'.$value['id'].'" '.$checked.'>'.$value['name'].'</option>';
		}
		$str .= '</select>'.$others;
		return $str;
	}
	
	public function inputButton($name, $value, $class, $properties=NULL, $others=NULL){
		$strPro='';
		if($properties!=NULL){
			$strPro = $this->properties($properties);
		}
		$str = '<input type="button" name="'.$name.'" value="'.$value.'" id="'.$name.'" class="'.$class.'" '.$strPro.' />'.$others;
		return $str;
	}
	
	public function btnCancel($name, $label='Hủy'){
		if(isset($_SESSION['linkBack'])) $link=$_SESSION['linkBack'];
		else $link=CONS_LINK_ADMIN;
		$properties = array();
		$properties[] = array('propertie'=>'onClick', 'value'=>'window.location.href=\''.$link.'\'');
		return $this->inputButton($name, $label, 'adBtnLarge bgColorGray corner8', $properties);
	}
	
	public function inputSubmit($name, $value, $class, $properties=NULL, $others=NULL){
		$strPro='';
		if($properties!=NULL){
			$strPro = $this->properties($properties);
		}
		$str = '<input type="submit" name="'.$name.'" value="'.$value.'" id="'.$name.'" class="'.$class.'" '.$strPro.' />'.$others;
		return $str;
	}
	
	public function ckeditorFull($name, $dir='js/'){
		$str = "<script>
		CKEDITOR.replace( '{$name}', {
			uiColor: '#E1E1E1',
			height: 400,
			filebrowserWindowWidth: '80%',
			filebrowserWindowHeight: '70%',
			toolbar:
			[
			['Source','-','Maximize','ShowBlocks','-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
			['Undo','Redo','-','Find','Replace','-','RemoveFormat'],
			['Link','Unlink','Iframe'],
			['Image','Flash', 'Video', 'Table'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
			'/',
			['Styles','Format','Font','FontSize'],
			['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['TextColor','BGColor','-','HorizontalRule','Smiley','SpecialChar','PageBreak']
			]
			});
		</script>";
		return $str;
	}
	
	public function ckeditorStandard($name, $dir='js/'){
		$str = "<script>
		CKEDITOR.replace( '{$name}', {
			uiColor: '#E1E1E1',
			height: 250,
			filebrowserWindowWidth: '80%',
			filebrowserWindowHeight: '70%',
			toolbar:
			[
			['Source','-','Maximize','ShowBlocks','PasteText','PasteFromWord','RemoveFormat'],
			['Link','Unlink','Iframe'],
			['Image','Flash', 'Video', 'Table'],
			['NumberedList','BulletedList','-','Outdent','Indent'],
			['TextColor','BGColor','-','HorizontalRule','SpecialChar','PageBreak'],
			['Format','Font','FontSize'],
			['Bold','Italic','Underline'],
			['JustifyLeft','JustifyCenter','JustifyRight'],
			]
			});
		</script>";
		return $str;
	}

	public function ckeditorBasic($name, $other=NULL){
		$str = "<script>
		CKEDITOR.replace( '{$name}', {
			uiColor: '#E1E1E1',
			toolbar: [
				['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-','RemoveFormat','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent',".$other."],
			]
		});
		</script>";
		return $str;
	}
}