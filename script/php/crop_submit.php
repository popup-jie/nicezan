<?php

$pic_name=$_POST['pic_name'];
$imgName = $_POST['imgName'];
$type = $_POST['type'];
$x=$_POST['x'];
$y=$_POST['y'];
$w=$_POST['w'];
$h=$_POST['h'];
$path=$_POST['path'];
if($path == "upload"){
	$targ_w = $targ_h = 90;
}
else{
	$targ_w = 160;
	$targ_h = 100;
}
include_once("jcrop_image.class.php");
$filep="../../".$path."/";
$crop=new jcrop_image($filep, $pic_name,$x,$y,$w,$h,$targ_w,$targ_h,$imgName,$type);
$file=$crop->crop();
unset($file);

?>