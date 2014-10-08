<?php

include ("connect.php");
$query=pg_query("INSERT INTO fix (namefix) VALUES ('".$_POST["namefix_db"]."')");
			if($query){
				echo "Add  Complete";
			}else{
				echo "error";
			}

?>
