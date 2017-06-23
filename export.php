<?php
	include 'config.php';
	
	
	
	if(isset($_POST['data']) && !empty($_POST['data'])) {
		$data  = base64_decode($_POST['data']);
		header("Content-type: text/csv");
		header("Content-Disposition: attachment; filename=".time()."_export.csv");
		header("Pragma: no-cache");
		header("Expires: 0");
		echo $data;
	}
?>