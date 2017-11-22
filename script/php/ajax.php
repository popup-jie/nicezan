<?php
$typeArr = array("jpg", "png", "gif","jpeg");//允许上传文件格式
$path = $_REQUEST['path'];
$imgName = $_REQUEST['imgName'];
$types = $path == "upload" ? "head_img" : "cover";
$path = "../../".$path."/";//上传路径

session_start();
if (isset($_POST)) {

    //记录程序执行开始时间 $start= NOW()
    $name = $_FILES['file']['name'];
    
    $size = $_FILES['file']['size'];
    //记录结束时间  $end=NOW();
    $name_tmp = $_FILES['file']['tmp_name'];
    if (empty($name)) {
        echo json_encode(array("error"=>"您还未选择图片"));
        exit;
    }
   
    //$end-$start
    $type = strtolower(substr(strrchr($name, '.'), 1)); //获取文件类型
    
    $pic_name = $imgName.time().".".$type;
    $pic_url = $path . $pic_name;//上传后图片路径+名称
    $_SESSION['imgpath'] = $pic_url;

    $ext = end(explode(".",$pic_name));
   
    if (move_uploaded_file($name_tmp, $pic_url)) { //临时文件转移到目标文件夹
      $aa=getimagesize($_SESSION['imgpath']);
      if($ext == 'gif'){
        echo json_encode(array("lastname"=>$ext,"pic"=>$pic_url));
        exit;
      }
      $ext = $ext == "png" ? '3' : ($ext == "gif" ? '1' : ($ext == "jpg" ? '2' : '2')); 
      //其值 1 为 GIF 格式、 2 为 JPEG/JPG 格式、3 为 PNG 格式
      if($aa['2'] != $ext){
        unlink($_SESSION['imgpath']);
        echo json_encode(array("error"=>"1","status"=>"0","lastname"=>" "));
        exit;
      }
      if( ($aa['0'] < 160 || $aa['1'] < 100 ) && $types == "cover"  ){ //封面
        unlink($_SESSION['imgpath']);
        echo json_encode(array("error"=>"0","status"=>"1"));
        exit;
      }
      else if( ( ($aa['0'] < 90 || $aa['1'] < 90) ) && $types == "head_img" ){ //头像
			  unlink($_SESSION['imgpath']);
			  echo json_encode(array("error"=>"0","status"=>"2"));
			  exit;
		  }
      echo json_encode(array("error"=>"0","pic"=>$pic_url,"name"=>$pic_name,"status"=>'0',"type"=>$types,"imgwidth"=>$aa['0'],"imgheight"=>$aa['1'],"src"=>$_REQUEST['path']));
    //写入数据库
    } else {
        echo json_encode(array("error"=>"上传有误，请检查服务器配置！")); 
    }
    
}
?>