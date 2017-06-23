<?php
include("config.php")
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff(res) {
		  //alert(res);
		  var obj = jQuery.parseJSON(res);
		  var len = Object.keys(obj).length;
		  var dataRows = [['Year', 'Price']];
		  for (var i = 0; i < len; i++) {
      dataRows.push([obj[i]['year'], obj[i]['price']]);
    }
        var data = new google.visualization.arrayToDataTable(dataRows);

        var options = {
          title: 'Chess opening moves',
          width: 500,
          legend: { position: 'none' },
          /*chart: { title: 'Chess opening moves',
                   subtitle: 'popularity by percentage' },*/
          bars: 'verticle', // Required for Material Bar Charts.
          axes: {
            x: {
              0: { side: 'bottom', label: 'Year'} // Top x-axis.
            }
          },
          bar: { groupWidth: "50%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        chart.draw(data, options);
      };
</script>
</head>

<body>
<div style="width:100%;">
<div style="width:50%; float:left;">
<div id="top_x_div" style="width: 500px; height: 500px;"></div>
</div>
<div style="width:50%; float:left;">
<form name="test">
<div style="margin-top:50px;">
<label>Crop</label>
<select name="crop" id="crop">
<?php
$crop_sql = mysql_query("SELECT * FROM crops");
while($crop_details = mysql_fetch_assoc($crop_sql)){
?>
<option value="<?php echo $crop_details['id'];?>"><?php echo $crop_details['name'];?></option>
<?php
}
?>
</select>
</div>
<div style="margin-top:50px;">
<label>State</label>
<select name="state" id="state">
<?php
$state_sql = mysql_query("SELECT * FROM states");
while($state_details = mysql_fetch_assoc($state_sql)){
?>
<option value="<?php echo $state_details['id'];?>"><?php echo $state_details['name'];?></option>
<?php
}
?>
</select>
</div>
</form>
</div>
</div>
</body>
<script src="jquery.1.7.2.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
$(window).load(function() {
      var crop = $("#crop").val();
	 var state = $("#state").val();

    //make the ajax call
    $.ajax({
        url: 'ajax.php',
        type: 'POST',
        data: {crop : crop,state : state},
        success: function(response) {
			drawStuff(response);
			
            console.log("Data sent!");
        }
    });
});
$(document).ready(function(){
	
$("#crop").change(function() {
	//alert("here");
    //get the selected value
    var crop = $("#crop").val();
	 var state = $("#state").val();

    //make the ajax call
    $.ajax({
        url: 'ajax.php',
        type: 'POST',
        data: {crop : crop,state : state},
        success: function(response) {
			drawStuff(response);
			
            console.log("Data sent!");
        }
    });
});
$("#state").change(function() {
	//alert("here");
    //get the selected value
    var crop = $("#crop").val();
	 var state = $("#state").val();

    //make the ajax call
    $.ajax({
        url: 'ajax.php',
        type: 'POST',
        data: {crop : crop,state : state},
        success: function(response) {
			drawStuff(response);
			
            console.log("Data sent!");
        }
    });
});
});
</script>
</html>