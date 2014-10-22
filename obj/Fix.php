<?php
require_once("Model.php");
Class Fix extends Model{

	//varilable  
	var $id_user;
	var $no;
	var $namefix;
	var $datefix;
	var $timefix;
	var $select_reserve;
	var $tool1;
	var $description1;
	var $tool2;
	var $description2;
	var $tool3;
	var $description3;
	var $tool4;
	var $description4;
	var $tool5;
	var $description5;
	var $table_room="fix";
	

	//proparties
	function getid_user($colum){
	if($colum=="Y"){ 
		$result ="id_user";
	}else{
		$result=$this->id_user;
	}
	return $result;
	} //end function getA_MeetinRoom_ID
	
	function getno($colum){
	if($colum=="Y"){ 
		$result ="no";
	}else{
		$result=$this->no;
	}
	return $result;
	}

	function getnamefix($Iscolum){
	
	return $this->SetVarValues($Iscolum,"namefix",$this->namefix);
	} //end function getname
	
	function getdatefix($Iscolum){
	return $this->SetVarValues($Iscolum,"datefix",$this->datefix);
	} //end function getvalues
	
	function gettimefix($Iscolum){
	return $this->SetVarValues($Iscolum,"timefix",$this->timefix);
	}  //end function getqty
	
	function getselect_reserve($Iscolum){
	return $this->SetVarValues($Iscolum,"select_reserve",$this->select_reserve);
	}  //end function getpic
	
	function gettool1($Iscolum){
	
	return $this->SetVarValues($Iscolum,"tool1",$this->tool1);
	} //end function getsatus
	
	function getdescription1($Iscolum){
	
	return $this->SetVarValues($Iscolum,"description1",$this->description1);
	} //end function getsatus
	
	function gettool2($Iscolum){
	
	return $this->SetVarValues($Iscolum,"tool2",$this->tool2);
	} //end function getsatus
	
	function getdescription2($Iscolum){
	
	return $this->SetVarValues($Iscolum,"description2",$this->description2);
	} //end function getsatus
	
	function gettool3($Iscolum){
	
	return $this->SetVarValues($Iscolum,"tool3",$this->tool3);
	} //end function getsatus
	
	function getdescription3($Iscolum){
	
	return $this->SetVarValues($Iscolum,"description3",$this->description3);
	} //end function getsatus
	
	function gettool4($Iscolum){
	
	return $this->SetVarValues($Iscolum,"tool4",$this->tool4);
	} //end function getsatus
	
	function getdescription4($Iscolum){
	
	return $this->SetVarValues($Iscolum,"description4",$this->description4);
	} //end function getsatus
	
	function gettool5($Iscolum){
	
	return $this->SetVarValues($Iscolum,"tool5",$this->tool5);
	} //end function getsatus
	
	function getdescription5($Iscolum){
	
	return $this->SetVarValues($Iscolum,"description5",$this->description5);
	} //end function getsatus
	
	function InsertFix(){
		$SetColumString =$this->getnamefix("Y").","
			.$this->getdatefix("Y").","
			.$this->gettimefix("Y").","
			.$this->getselect_reserve("Y").","
			.$this->gettool1("Y").","
			.$this->getdescription1("Y").","
			.$this->gettool2("Y").","
			.$this->getdescription2("Y").","
			.$this->gettool3("Y").","
			.$this->getdescription3("Y").","
			.$this->gettool4("Y").","
			.$this->getdescription4("Y").","
			.$this->gettool5("Y").","
			.$this->getdescription5("Y")."";
		$SetValuesString=
			"'".$this->getnamefix("N")."',"
			."'".$this->getdatefix("N")."',"
			."'".$this->gettimefix("N")."',"
			."'".$this->getselect_reserve("N")."',"
			."'".$this->gettool1("N")."',"
			."'".$this->getdescription1("N")."',"
			."'".$this->gettool2("N")."',"
			."'".$this->getdescription2("N")."',"
			."'".$this->gettool3("N")."',"
			."'".$this->getdescription3("N")."',"
			."'".$this->gettool4("N")."',"
			."'".$this->getdescription4("N")."',"
			."'".$this->gettool5("N")."',"
			."'".$this->getdescription5("N")."'";
			
		$this->connetdb();
		$result=$this->insert_data($this->table_room,$SetColumString,$SetValuesString);
		
			
	}
		function select_reserve(){// Select Data This Class By ID (1 Data)
		$this->connetdb();
		$SqlCondition.=" order by id_user desc limit 1";
		$result=$this->select_data($this->table_room,' * ',$SqlCondition);
       if(!$result){
        echo pg_error();
    	exit();
		}
	  $fetch=pg_fetch_array($result);
	  //Set Value From Column Data To Varriable Class
	 	$this->user_id=$fetch[$this->getid_user($this->Iscolum)]; 
		$this->nameuser=$fetch[$this->getnameuser($this->Iscolum)];
		$this->subject=$fetch[$this->getsubject($this->Iscolum)];
		$this->namepresident=[$this->getnamepresident($this->Iscolum)];
		$this->people=[$this->getpeople($this->Iscolum)];
		$this->amount=$fetch[$this->getamount($this->Iscolum)];
		$this->select_reserve=$fetch[$this->getselect_reserve($this->Iscolum)];
		$this->datefrom=$fetch[$this->getdatefrom($this->Iscolum)];
		$this->timefrom=$fetch[$this->gettimefrom($this->Iscolum)];
		$this->timeto=$fetch[$this->gettimeto($this->Iscolum)];
		$this->description=$fetch[$this->getdescription($this->Iscolum)];
	
		

	//,$joindata," WHRER ".$this->getuser_id($this->colum)."=".$user_id,""
	 	//"SElECT ".$field." FROM(".$tablename.") JOIN ".$joindata." WHERE 1=1".$expression;
		
	}

	 //return $result;h
 
	
}
?>