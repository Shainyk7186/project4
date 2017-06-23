<?php
mysql_connect("localhost","root","");
mysql_select_db("assignment");
function array_to_csv($array, $header_row = true, $col_sep = ",", $row_sep = "\n", $qut = '"') {
		if (!is_array($array) || !isset($array[0]) || !is_array($array[0])) { return false; }
		$output = '';
		if ($header_row) {
			foreach ($array[0] as $key => $val) {
				$key = str_replace($qut, "$qut$qut", $key);
				$output .= "$col_sep$qut$key$qut";
			}
			$output = substr($output, 1)."\n";
		}
		foreach ($array as $key => $val) {
			$tmp = '';
			foreach ($val as $cell_key => $cell_val) {
				$cell_val = str_replace($qut, "$qut$qut", $cell_val);
				$tmp .= "$col_sep$qut$cell_val$qut";
			}
			$output .= substr($tmp, 1).$row_sep;
		}
		return base64_encode($output);
	}
?>