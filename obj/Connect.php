<?php
Class Connection{
	function connectdb(){//ฟังก์ชันสำหรับเรียกใช้การเชื่อมต่อฐานข้อมูล
	
	$connect = pg_connect("host=localhost port=5432 password=adempiere user=adempiere dbname=etcdev") or die(pg_last_error()); //คำสั่งเชื่อมต่อฐานข้อมูล
	
		
		if(!$connect ){
		echo "not";
		exit();
		pg_query("SET NAMES tis620");
			pg_query("SET character_set_client = tis620");
		pg_query("SET character_set_connection = tis620");
		pg_query("SET character_set_database = utf8");
		pg_query("SET character_set_results = tis620");
		pg_query("SET character_set_server = tis620");
		pg_query("SET character_set_system = utf8");
		pg_query("SET collation_connection = tis620_thai_ci");
		pg_query("SET collation_database = tis620_thai_ci");
		pg_query("SET collation_server = tis620_thai_ci");
		pg_close($connection);
	}
	
		
	
		} //จบฟังก์ชันการเชื่อมต่อ
}//จบคลาสการเชื่อมต่อ

?>