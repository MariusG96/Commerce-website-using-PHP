<?php

//fetch_data.php

include('pdodbcon.php');

//Gather data from the database products which have the status of "1" this is a sort of a way of telling the database to select all the active items.

if(isset($_POST["action"]))
{
 $query = "
  SELECT * FROM t_products WHERE status = '1'
 ";
 if(isset($_POST["type"]))
 {
  $type_filter = implode("','", $_POST["type"]);
  $query .= "
   AND type IN('".$type_filter."')
  ";
 }
 
 // prepare the products to be displayed. 
 
 $statement = $con->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 $total_row = $statement->rowCount();
 $output = '';
 if($total_row > 0)
 {
 
    // each of the products will be displayed and will have this style, taken from bootstrap.
  foreach($result as $row)
  {
   $output .= '
    <div class="col-sm-4 col-lg-3 col-md-3">   
      <div style="border:0px solid #ccc; border-radius:5px; padding:; margin-bottom:15px; height:180px; ">
        <div style="border:0px solid #ccc; height:100px;">
          <img src="image/'. $row['image'] .'" style="width:100px;height:100px;border-radius:20%;display:block;margin-left:auto;margin-right:auto;">
        </div>
        <div style="border:0px solid #ccc; height:auto; width:188px; position:absolute;">
            <h4 align="center"><strong>'.$row['name'] .'</strong></h4>
            <h5 style="text-align:center;" class="text-danger" >'. $row['price'] .'</h5>
        </div>
      </div>
    </div>
   ';
  }
 }
 else
 {
  $output = '<h3>No Data Found</h3>';
 }
 echo $output;
}



?>