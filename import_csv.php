<?php 
include("config.php");
if(isset($_FILES["file"]["name"]))
{
	//echo "here1";



$filename=$_FILES["file"]["name"];
//$ext=substr($filename,strrpos($filename,"."),(strlen($filename)-strrpos($filename,".")));
$move = "./";
//move_uploaded_file($_FILES['file']['tmp_name'], $move.$filename);
//we check,file must be have csv extention
//if($ext=="csv")
//{
	if(move_uploaded_file($_FILES['file']['tmp_name'], $move.$filename)){
  $file = fopen($filename, "r");
         while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
         { if($emapData[0] !=''){
            $sql = "INSERT into csv_import(name,email,address) values('$emapData[0]','$emapData[1]','$emapData[2]')";
            mysql_query($sql);
		 }
         }
         fclose($file);
         echo "CSV File has been successfully Imported.";
	}



}
?>