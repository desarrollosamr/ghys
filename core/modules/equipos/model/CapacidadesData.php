<?php
class AjustesData {
	public static $tablename = "ajustes";

	public function AjustesData(){

		$this->date = "";
		$this->type = "";
		$this->article = "";
		$this->quantity = "";
		//$this->created_at = "NOW()";
	}

	public function getProduct(){ return ProductData::getById($this->article);}
	public function getType(){ return AjustesTypeData::getById($this->type);}
	public function getColor(){ return ColorData::getById($this->color_id);}

	public function add(){
		$sql = "insert into ".self::$tablename." (date,type,article,quantity,user_id,created_at) ";
		$sql .= "values ('$this->date',$this->type,$this->article,$this->quantity,$this->user_id,$this->created_at)";
		$this->dn = Executor::doit($sql);
	}

	public static function delById($id){
		$sql = "delete from ".self::$tablename." where id=$id";
		Executor::doit($sql);
	}
	public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		Executor::doit($sql);
	}

// partiendo de que ya tenemos creado un objecto AjustesData previamente utilizamos el contexto
	public function update(){
		$sql = "update ".self::$tablename." set date=\"$this->date\",type=\"$this->type\",article=\"$this->article\",quantity=\"$this->quantity\" where id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		$sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		$found = null;
		$data = new AjustesData();
		while($r = $query[0]->fetch_array()){
			$data->id = $r['id'];
			$data->date = $r['date'];
			$data->type = $r['type'];
			$data->article = $r['article'];
			$data->quantity = $r['quantity'];
			$data->user_id = $r['user_id'];
			$data->created_at = $r['created_at'];
			$found = $data;
			break;
		}
		return $found;
	}

	public static function getAll(){
		$sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->quantity = $r['quantity'];
			$array[$cnt]->user_id = $r['user_id'];
			$cnt++;
		}
		return $array;
	}

	public static function getAllByDate($start,$end){
 		$sql = "select * from ".self::$tablename." where date(date) >= \"$start\" and date(date) <= \"$end\" order by created_at desc";
		if($start == $end){
		 $sql = "select * from ".self::$tablename." where date(date) = \"$start\" order by created_at desc";
		}

		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->quantity = $r['quantity'];
			$array[$cnt]->user_id = $r['user_id'];
			$cnt++;
		}
		return $array;
	}
	

	public static function getAllByDateOfficialBP($product, $start,$end){
 		$sql = "select * from ".self::$tablename." where date(date) >= \"$start\" and date(date) <= \"$end\" and article=$product order by created_at desc";
		if($start == $end){
		 $sql = "select * from ".self::$tablename." where date(date) = \"$start\"  and article=$product order by created_at desc";
		}
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$cnt++;
		}
		return $array;
	}

	public static function getAllByDateOfficialBS($tipo, $start,$end){
 		$sql = "select * from ".self::$tablename." where date(created_at) >= \"$start\" and date(created_at) <= \"$end\" and type=$tipo order by created_at desc";
		if($start == $end){
		 $sql = "select * from ".self::$tablename." where date(created_at) = \"$start\"  and sell_id=$venta order by created_at desc";
		}
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$cnt++;
		}
		return $array;
	}


////////////////////////////////////////////////////////////////////
	public static function getQYesF($date){
		$type=0;
		$Ajustess = self::getAllByProductId($date);
		$input_id = AjustesTypeData::getByName("entrada")->id; 
		$output_id = AjustesTypeData::getByName("salida")->id;
		foreach($Ajustess as $Ajustes){
			if($Ajustes->user_id==$input_id or $Ajustes->user_id==3){ $type+=$Ajustes->type; }
			else if($Ajustes->user_id==$output_id or $Ajustes->user_id==4 or $Ajustes->user_id==5){  $type+=(-$Ajustes->type); }
		}
		// print_r($data);
		return $type;
	}
	
	public static function getQNoF($date,$quantity){
		$type = self::getQ($date,$quantity);
		$f = self::getQYesF($date,$quantity);
		return $type-$f;
	}

	public static function getAllByProductId($article){
		$sql = "select * from ".self::$tablename." where article=$article  order by created_at desc";
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$cnt++;
		}
		return $array;
	}

	public static function getAllProductsBySellId($sell_id){
		$sql = "select * from ".self::$tablename." where sell_id=$sell_id order by created_at desc";
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$cnt++;
		}
		return $array;
	}

	public static function getOutputByProductId($date){
		$sql = "select * from ".self::$tablename." where date=$date and user_id=2 order by created_at desc";
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$cnt++;
		}
		return $array;
	}

////////////////////////////////////////////////////////////////////

	public static function getInputByProductId($date){
		$sql = "select * from ".self::$tablename." where date=$date and user_id=1 order by created_at desc";
		$query = Executor::doit($sql);
		$array = array();
		$cnt = 0;
		while($r = $query[0]->fetch_array()){
			$array[$cnt] = new AjustesData();
			$array[$cnt]->id = $r['id'];
			$array[$cnt]->date = $r['date'];
			$array[$cnt]->type = $r['type'];
			$array[$cnt]->article = $r['article'];
			$array[$cnt]->user_id = $r['user_id'];
			$array[$cnt]->created_at = $r['created_at'];
			$cnt++;
		}
		return $array;
	}

}

?>