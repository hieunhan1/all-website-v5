<?php
define('IMAGE_MAX_SIZE', 5); //MB
define('IMAGE_THUMB_WIDTH', 300);
define('IMAGE_THUMB_HEIGHT', 250);
define('IMAGE_MAX_WIDTH', 1200);
define('IMAGE_MAX_HEIGHT', 800);
define('IMAGE_ERROR_MOVING', 'Moving unsuccessful!');
define('IMAGE_LIMIT_SIZE', 'You have exceeded the size limit!');

define('IMAGE_URL', 'public/images/');
define('IMAGE_URL_THUMB', 'public/_thumbs/Images/');
define('IMAGE_UPLOAD_URL', '../public/images/');
define('IMAGE_UPLOAD_URL_THUMB', '../public/_thumbs/Images/');
define('IMAGE_UPLOAD_URL_TEMP', '../public/tempUpload/');

$imageFormats = array('jpg', 'png', 'gif', 'bmp', 'jpeg');
?>