<?php
Class SQL{
	Public function SQL_Query($sql){//function สำหรับคำสั่ง SQL
		$query=pg_query($sql);
		return $query;
		
	} //end function SQL_Query
	public function insert_data($tablename,$field,$values){ //function insert sql
	$sql= "INSERT INTO ".$tablename."(".$field.") VALUES (".$values.")";
	//echo $sql;exit();
	return $this->SQL_Query($sql);
		
	} //end function insert
	public function delete_data($tablename,$expression){ //funtion delete
	$sql="DELETE FROM ".$tablename."  WHERE 1=1 ".$expression;
	return $this->SQL_Query($sql);
	} //end function delete
	
	public function select_data($tablename,$field,$expression){ //funtion select
	$sql="SElECT ".$field." FROM ".$tablename." order by".$expression ;
	//echo $sql; exit();
	return $this->SQL_Query($sql);
		
	}//end funtion select344
	public function update_data($tablename,$values,$expression){//function update
	$sql="UPDATE ".$tablename."set".$values."WHERE 1=1".$expression;
	return $this->SQL_Query($ql);
	}//end funtion update
	
	
}//end class
	?>