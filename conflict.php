<?php include("config.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Conflict</h2>
     <?php
	 $sql1 = mysql_query("SELECT * FROM csv_import group by email");
	$j=1;
	while($details1 = mysql_fetch_assoc($sql1)){
		$x = array();
		$x['Id'] = $j;
		$x['Name'] = $details1['name'];
		$x['Email'] = $details1['email'];
		$x['Address'] = $details1['address'];
		$exportArray[] = $x;
		$j++;
	}
	 ?>        
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
      </tr>
    </thead>
    <tbody>
    <?php
	$b64e = array_to_csv($exportArray);
					if($b64e != false) {
						?>
                        <div style="float:right;">
						<form style="margin-top:10px; float:right;" action="export.php" taret="_blank" method="POST" ><input type="hidden" name="data" 
                        value="<?php echo $b64e; ?>" /><button class="small green" name="export">Export</button></form>
                        </div>
                        <?php
					}
	?>
    <?php 
	$sql = mysql_query("SELECT * FROM csv_import  group by email");
	$i=1;
	while($details = mysql_fetch_assoc($sql)){
		$x = array();
		$x['Id'] = $i;
		$x['Name'] = $details['name'];
		$x['Email'] = $details['email'];
		$x['Address'] = $details['address'];
		$exportArray[] = $x;
	?>
      <tr>
      	<td><?php echo $i;?></td>
        <td><?php echo $details['name'];?></td>
        <td><?php echo $details['email'];?></td>
        <td><?php echo $details['address'];?></td>
      </tr>
      <?php $i++; } ?>
    </tbody>
  </table>
</div>

</body>
</html>
