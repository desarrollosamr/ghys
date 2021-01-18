<?php

if(count($_POST)>0){
  $product = new ProductData();
  $product->name = $_POST["name"];
  $product->price_in = $_POST["price_in"];
  $product->price_out = $_POST["price_out"];
  $product->unit = $_POST["unit"];
  $product->description = $_POST["description"];
  //$product->presentation = $_POST["presentation"];
  //$product->inventary_min = $_POST["inventary_min"];
  $category_id="NULL";
  if($_POST["category_id"]!=""){ $category_id=$_POST["category_id"];}
  $inventary_min="\"\"";
  if($_POST["inventary_min"]!=""){ $inventary_min=$_POST["inventary_min"];}
  $talla_id="NULL";
  if($_POST["talla_id"]!=""){ $talla_id=$_POST["talla_id"];}  
  $color_id="NULL";
  if($_POST["color_id"]!=""){ $color_id=$_POST["color_id"];}
  $product->category_id=$category_id;
  $product->inventary_min=$inventary_min;
  $product->talla_id=$talla_id;
  $product->color_id=$color_id;
  $product->user_id = Session::getUID();

  //$product->add();

  if(isset($_FILES["image"])){
    $image = new Upload($_FILES["image"]);
    if($image->uploaded){
      $image->Process("storage/products/");
      if($image->processed){
      	echo $image->processed;
        $product->image = $image->file_dst_name;
        echo $product->image;
        $product->add_with_image();
      }
    }else{
		$product->add();
    }
  }else{
  	$product->add();
  }

if($_POST["q"]!="" || $_POST["q"]!="0"){
 $op = new OperationData();
 $op->product_id = $product->dn[1] ;
 $op->operation_type_id=OperationTypeData::getByName("entrada")->id;
 $op->q= $_POST["q"];
 $op->d = 0;
 $op->created_at = "NOW()";
 $op->sell_id="NULL";
$op->is_oficial=1;
$op->add();
}



print "<script>window.location='index.php?view=products';</script>";


}


?>