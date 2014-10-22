<?php
require_once("SQL.php");//เรียกใช้ คลาส File SQL
Class Model extends SQL{//สืบทอดฟังก์ชันมาจาก คลาส SQL
	function connetdb(){//function connetion
		require_once("Connect.php");
		$conn=new Connection;
	return $conn->connectdb();
	}
	
	function SetVarValues($Iscolum,$colum,$values){
	if($Iscolum=="Y"){
		$result =$colum;
	}else{
		
		$result=$values;
	}
	return $result;
	} //end function SetVarValues
}//end class

?>