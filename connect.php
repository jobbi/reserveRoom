<?php 

$connect = pg_connect("host=localhost port=5432 password=15052536 user=postgres dbname=reserve") or die(pg_last_error());

		if(!$connect ){
		echo "not";
		}
		else{
		echo "�������ͼ�ҹ";
		}
		  pg_close($connection);
		?>