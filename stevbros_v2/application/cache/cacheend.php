<?php
$kt = (float) array_sum(explode(' ', microtime()));
echo "Lần đầu: ". sprintf("%.4f", ($kt-$bd))." giây<br>";

$cachedir = CONS_CACHE_URL_FILE; 
$cacheext = 'ch'; 
$page = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; 
$pathfile = $cachedir . md5($page) . '.' . $cacheext; 
$fp = fopen($pathfile, 'w'); 
fwrite($fp, ob_get_contents());
fclose($fp); 
ob_end_flush(); 
