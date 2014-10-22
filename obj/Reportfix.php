<?php
require_once("Model.php");
Class Reportfix extends Model{
	//varilable (กำหนด ตัวแปรให้กับ class โดยตั้งชื้อให้ใกล้เคียงกับ คอลัมน์ กับตารางที่เกี่ยวข้อง
	var $no;
	var $datereportfix;
	var $timereportfix;
	var $select_reserve;
	var $description_report;
	var $status;
	var $table_room="form_reportfix";
	

	//proparties
	function no($colum){
	if($colum=="Y"){ //ถ้าเป็น Y ให้แสดงชื่อ คอลัมน์
		$result ="no";
	}else{
		$result=$this->no;
	}
	return $result;
	} //end function getA_MeetinRoom_ID

	function getdatereportfix($Iscolum){
	
	return $this->SetVarValues($Iscolum,"datereportfix",$this->datereportfix);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	} //end function getname
	
	function gettimereportfix($Iscolum){
	return $this->SetVarValues($Iscolum,"timereportfix",$this->timereportfix);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	} //end function getvalues
	
	function getselect_reserve($Iscolum){
	return $this->SetVarValues($Iscolum,"select_reserve",$this->select_reserve);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	}  //end function getqty
	
	function getdescription_report($Iscolum){
	return $this->SetVarValues($Iscolum,"description_report",$this->description_report);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	}  //end function getpic
	
	function getstatus($Iscolum){
	
	return $this->SetVarValues($Iscolum,"status",$this->status);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	} //end function getsatus
	
	function InsertReport(){
		$SetColumString =$this->getdatereportfix("Y").","
			.$this->gettimereportfix("Y").","
			.$this->getselect_reserve("Y").","
			.$this->getdescription_report("Y").","
			.$this->getstatus("Y")."";
		$SetValuesString=
			"'".$this->getdatereportfix("N")."',"
			."'".$this->gettimereportfix("N")."',"
			."'".$this->getselect_reserve("N")."',"
			."'".$this->getdescription_report("N")."',"
			."'".$this->getstatus("N")."'";
			
		$this->connetdb();
		$result=$this->insert_data($this->table_room,$SetColumString,$SetValuesString);
		
			
	}
	
}
?>