<?php
class AbonosData {
	public static $tablename = "abonos";
	
	//public function AbonosData(){
		//$this->created_at = "NOW()";
	//}
	
	public function add(){
		$sql = "insert into ".self::$tablename." (sell_id,fecha,monto_e,monto_t1,monto_t2,user_id,created_at) ";
		$sql .= "values ($this->sell_id,'$this->fecha',$this->monto_e,$this->monto_t1,$this->monto_t2,$this->user_id,$this->created_at)";

		return Executor::doit($sql);
	}


	public static function delById($id){
		$sql = "delete from ".self::$tablename." where id=$id";
		Executor::doit($sql);
	}

	public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		Executor::doit($sql);
	}

	public function update_abono(){
		$sql = "update ".self::$tablename." set monto_e=$this->monto_e,monto_t1=$this->monto_t1,monto_t2=$this->monto_t2 where id=$this->id";

		Executor::doit($sql);
	}	 
	public static function getById($id){
		 $sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		$found = null;
		$data = new AbonosData();
		while($r = $query[0]->fetch_array()){
			$data->id = $r['id'];
			$data->user_id = $r['user_id'];
			$data->sell_id = $r['sell_id'];
			$data->created_at = $r['created_at'];
			$data->monto_t2 = $r['monto_t2'];
			$data->monto_e = $r['monto_e'];
			$data->monto_t1 = $r['monto_t1'];
			$data->fecha = $r['fecha'];
			$found = $data;
			break;
		}
		return $found;
	}

	public static function getByReserva($id){
		$sql = "select * from ".self::$tablename." where sell_id=$id order by created_at desc";
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AbonosData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->sell_id = $r['sell_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$array[$cnt]->monto_t2 = $r['monto_t2'];
			$array[$cnt]->monto_e = $r['monto_e'];
			$array[$cnt]->monto_t1 = $r['monto_t1'];
			$array[$cnt]->fecha = $r['fecha'];
			$cnt++;
		}
		return $array;
	}

	public static function getAbonosByDate($start,$end){
		$sql = "select * from ".self::$tablename." where (date(created_at) >= \"$start\" and date(created_at) <= \"$end\") order by created_at desc";
		if($start == $end){
		$sql="select * from ".self::$tablename." where date(created_at) = \"$start\" order by created_at desc";
		}
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AbonosData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->sell_id = $r['sell_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$array[$cnt]->monto_t2 = $r['monto_t2'];
			$array[$cnt]->monto_e = $r['monto_e'];
			$array[$cnt]->monto_t1 = $r['monto_t1'];
			$array[$cnt]->fecha = $r['fecha'];
			$cnt++;
		}
		return $array;
	}
	
	public static function getAllByPage($start_from,$limit){
		$sql = "select * from ".self::$tablename." where id<=$start_from limit $limit";
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AbonosData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->person_id = $r['person_id'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$array[$cnt]->monto_e = $r['monto_e'];
			$array[$cnt]->monto_t = $r['monto_t'];
			$array[$cnt]->Abonoser = $r['Abonoser'];
			$cnt++;
		}
		return $array;
	}

}

?>