
<?php
include("connect.php");


$query=pg_query("INSERT INTO form_reserve (nameuser) VALUES ('".$_POST["surname_db"]."')");
			if($query){
				echo "Add Profile Complete";
			}else{
				echo "error";
			}


		
?>