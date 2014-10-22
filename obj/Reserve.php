<?php
require_once("Model.php");
Class Reserve extends Model{
	//varilable  
	var $id_user;
	var $nameuser;
	var $subject;
	var $namepresident;
	var $people;
	var $amount;
	var $select_reserve;
	var $datefrom;
	var $timefrom;
	var $timeto;
	var $description;
	var $table_room="form_reserve";
	

	//proparties
	function getid_user($colum){
	if($colum=="Y"){ 
		$result ="id_user";
	}else{
		$result=$this->id_user;
	}
	return $result;
	} //end function getA_MeetinRoom_ID

	function getnameuser($Iscolum){
	
	return $this->SetVarValues($Iscolum,"nameuser",$this->nameuser);
	} //end function getname
	
	function getsubject($Iscolum){
	return $this->SetVarValues($Iscolum,"subject",$this->subject);
	} //end function getvalues
	
	function getnamepresident($Iscolum){
	return $this->SetVarValues($Iscolum,"namepresident",$this->namepresident);
	}  //end function getqty
	
	function getpeople($Iscolum){
	return $this->SetVarValues($Iscolum,"people",$this->people);
	}  //end function getpic
	
	function getamount($Iscolum){
	
	return $this->SetVarValues($Iscolum,"amount",$this->amount);
	} //end function getsatus
	function getselect_reserve($Iscolum){
	
	return $this->SetVarValues($Iscolum,"select_reserve",$this->select_reserve);
	} //end function getsatus
	
	function getdatefrom($Iscolum){
	
	return $this->SetVarValues($Iscolum,"datefrom",$this->datefrom);
	} 
	
	function gettimefrom($Iscolum){
	
	return $this->SetVarValues($Iscolum,"timefrom",$this->timefrom);
	} 
	
	function gettimeto($Iscolum){
	
	return $this->SetVarValues($Iscolum,"timeto",$this->timeto);
	} 
	
	function getdescription($Iscolum){
	
	return $this->SetVarValues($Iscolum,"description",$this->description);
	}
	
	
	function InsertReserve(){
		$SetColumString =$this->getnameuser("Y").","
			.$this->getsubject("Y").","
			.$this->getnamepresident("Y").","
			.$this->getpeople("Y").","
			.$this->getamount("Y").","
			.$this->getselect_reserve("Y").","
			.$this->getdatefrom("Y").","
			.$this->gettimefrom("Y").","
			.$this->gettimeto("Y").","
			.$this->getdescription("Y")."";
		$SetValuesString=
			"'".$this->getnameuser("N")."',"
			."'".$this->getsubject("N")."',"
			."'".$this->getnamepresident("N")."',"
			."'".$this->getpeople("N")."',"
			."'".$this->getamount("N")."',"
			."'".$this->getselect_reserve("N")."',"
			."'".$this->getdatefrom("N")."',"
			."'".$this->gettimefrom("N")."',"
			."'".$this->gettimeto("N")."',"
			."'".$this->getdescription("N")."'";
			
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