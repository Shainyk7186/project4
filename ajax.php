<?php
include("config.php");
$sql = mysql_query("SELECT sum(price) as price,year FROM crop_details WHERE state_id = '".$_POST['state']."' AND crop_id  = '".$_POST['crop']."' GROUP BY year");

$actual = array();
while($detials =  mysql_fetch_assoc($sql)){
	$temp = array();
	$temp['year'] = $detials['year'];
	$temp['price'] = number_format($detials['price'],2,".",".");;	
	$actual[] = $temp;
}
echo json_encode($actual);
?>