<?php
require_once("Model.php");
Class Room extends Model{
	//varilable (กำหนด ตัวแปรให้กับ class โดยตั้งชื้อให้ใกล้เคียงกับ คอลัมน์ กับตารางที่เกี่ยวข้อง
	var $A_MeetingRoom_ID;
	var $name;
	var $values;
	var $qty;
	var $pic;
	var $satus;
	var $table_room="a_meetingroom";
	

	//proparties
	function getA_MeetingRoom_ID($colum){
	if($colum=="Y"){ //ถ้าเป็น Y ให้แสดงชื่อ คอลัมน์
		$result ="A_MeetingRoom_ID";
	}else{
		$result=$this->A_MeetingRoom_ID;
	}
	return $result;
	} //end function getA_MeetinRoom_ID

	function getname($Iscolum){
	
	return $this->SetVarValues($Iscolum,"name",$this->name);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	} //end function getname
	
	function getvalues($Iscolum){
	return $this->SetVarValues($Iscolum,"values",$this->values);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	} //end function getvalues
	
	function getqty($Iscolum){
	return $this->SetVarValues($Iscolum,"qty",$this->qty);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	}  //end function getqty
	
	function getpic($Iscolum){
	return $this->SetVarValues($Iscolum,"pic",$this->pic);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	}  //end function getpic
	
	function getsatus($Iscolum){
	
	return $this->SetVarValues($Iscolum,"satus",$this->satus);//ส่งค่า result กลับไปโดยใช้ฟังชันใน model
	} //end function getsatus
	
	function InsertRoom(){
		$SetColumString =$this->getname("Y").","
			.$this->getvalues("Y").","
			.$this->getqty("Y").","
			.$this->getsatus("Y")."";
		$SetValuesString=
			"'".$this->getname("N")."',"
			."'".$this->getvalues("N")."',"
			."'".$this->getqty("N")."',"
			."'".$this->getsatus("N")."'";
			
		$this->connetdb();
		$result=$this->insert_data($this->table_room,$SetColumString,$SetValuesString);
		
			
	}
	
}
?>