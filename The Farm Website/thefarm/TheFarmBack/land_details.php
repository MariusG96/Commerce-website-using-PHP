<?php

    include('func_dbcon.php'); 
    
   
    // We need to use sessions, so you should always start sessions using the below code.
    session_start();
    // If the user is not logged in redirect to the login page...
    if (!isset($_SESSION['loggedin'])) 
    {
	   header('Location: admin_login.php');
	   exit();
    }
    
    // Requests state and ID from the previous form.
    $state=$_REQUEST['landStateIn'];
    $id=$_REQUEST['landID'];
?>
<!DOCTYPE html>
<html>
    
<head>
    <meta charset="utf-8">
    <title>The Farm</title>
    
    <link rel="stylesheet" href="adminstylesheet.css" />
</head>
        
<body>             
    <p><a href="land_view.php">Back</a>         
    <h1>Details</h1>
  
    <?php
    
        //If the state is Grass, the code displays the information about that specific piece of land and allows you to add and edit animals via the link      
        if($state == "Grass")
        { 
            $sql="SELECT t_grassland.landID, t_land.landLocation, t_grassland.livestockID, t_grassland.grasslandAmount, t_livestock.livestockAnimal, t_livestock.livestockBreed 
                FROM(( t_grassland 
                INNER JOIN t_livestock ON t_grassland.livestockid = t_livestock.livestockid) 
                INNER JOIN t_land ON t_grassland.landID = t_land.landID)
                WHERE t_grassland.landID = '".$id."';";
            
            $result = mysqli_query($con, $sql) or die(mysqli_error());;
            
            $addsql="SELECT landID FROM t_land WHERE landID='".$id."';";
            $addresult = mysqli_query($con, $addsql) or die(mysqli_error());
            $addrow = mysqli_fetch_assoc($addresult);
            
            ?>
            
            <a href="land_grass_add.php?landID=<?php echo $addrow['landID'];?>">Add an animal to this land</a>     
            
            <table width="100%" border="1" style="border-collapse:collapse;">
                <thead>
                    <tr>
                        <th><strong>ID</strong></th>
                        <th><strong>Location</strong></th>                
                        <th><strong>Animal ID</strong></th>
                        <th><strong>Animal</strong></th>
                        <th><strong>Breed</strong></th>
                        <th><strong>Amount</strong></th>
                        <th><strong>Edit</strong></th>
                        <th><strong>Delete</strong></th>                            
                    </tr>
                </thead>          
                
                <tbody>
                <?php while($row = mysqli_fetch_assoc($result))
                { ?>   
                    <tr>
                        <td><?php echo $row["landID"]; ?> </td>
                        <td><?php echo $row["landLocation"]; ?> </td>                
                        <td><?php echo $row["livestockID"]; ?> </td>
                        <td><?php echo $row["livestockAnimal"]; ?> </td>
                        <td><?php echo $row["livestockBreed"]; ?> </td>
                        <td><?php echo $row["grasslandAmount"]; ?> </td>
                        <td><a href="land_grass_edit.php?livestockID=<?php echo $row["livestockID"];?>">Edit</a></td>
                        <td><a href="land_grass_delete.php?livestockID=<?php echo $row["livestockID"];?>">Delete</a></td>             
                    </tr>
                <?php 
                } ?>
                </tbody>
                
            </table>
            
         
        <?php       
        } 
        else if($state == "Growing")
        //If the state is Growing, the code displays the information about that specific piece of land and allows you to plant something on that land.
        {
            $sql="SELECT t_plantland.landid, t_land.landLocation, t_plantland.cropID, t_plantland.plantlandDatePlanted, t_crop.cropSpecies 
            FROM(( t_plantland 
            INNER JOIN t_crop ON t_plantland.cropID = t_crop.cropID) 
            INNER JOIN t_land ON t_plantland.landID = t_land.landID)
            WHERE t_land.landid = '".$id."';";
            
            $result = mysqli_query($con, $sql) or die(mysqli_error());
            
            $addsql="SELECT landID FROM t_land WHERE landID='".$id."';";
            $addresult = mysqli_query($con, $addsql) or die(mysqli_error());
            $addrow = mysqli_fetch_assoc($addresult);
      
            ?>
            
            <a href="land_plant_add.php?landID=<?php echo $addrow['landID'];?>">Plant something, fella.</a>     
            
            <table width="100%" border="1" style="border-collapse:collapse;">
                <thead>
                    <tr>
                        <th><strong>ID</strong></th>
                        <th><strong>Location</strong></th>
                        <th><strong>Crop ID</strong></th>
                        <th><strong>Crop Species</strong></th>
                        <th><strong>Date Planted</strong></th>
                            
                    </tr>
                </thead>          
                
                <tbody>
                <?php while($row = mysqli_fetch_assoc($result))
                { ?>   
                    <tr>
                        <td><?php echo $row["landid"]; ?> </td>
                        <td><?php echo $row["landLocation"]; ?> </td>
                        <td><?php echo $row["cropID"]; ?> </td>
                        <td><?php echo $row["cropSpecies"]; ?> </td>
                        <td><?php echo $row["plantlandDatePlanted"]; ?> </td>
                    </tr>
                <?php 
                } ?>
                </tbody>
            </table>
        <?php
        }
        else
        //If the state is Cultivated, the code just goes back to the previous page, so nothing happens.  
        {
            header("Location: land_view.php");
        }    
    ?>            
</body>
</html>