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
    
    //Requests landID from previous form and prepares the table for usage.   
    $landID = $_REQUEST['landID'];
    $query = "SELECT landID FROM t_land WHERE landID ='".$landID."';";            
    $result = mysqli_query($con, $query) or die ( mysqli_error());
    $row = mysqli_fetch_assoc($result);
    
    //Displays todays date when entering the record.
    $today = date("Y-m-d");
    
    //This code gets data from the form below and prepares an SQL statement using that data.
    if(isset($_POST['new']) && $_POST['new']==1)
    {
        $landID =$_REQUEST['landID'];
        $cropID =$_REQUEST['cropID'];
        $todayID =$_REQUEST['plantlandDatePlanted'];
            
        $ins_query="INSERT INTO t_plantland(landID, cropID, plantlandDatePlanted) VALUES ('$landID','$cropID','$today')";
                
        mysqli_query($con, $ins_query) or die(mysqli_error());                
    }   
?>

<!DOCTYPE html>
<html>    
<head>
    <meta charset="utf-8">
    <title>The Farm</title>   
    <link rel="stylesheet" href="adminstylesheet.css" />
</head>
        
<body>               
    <a href="land_view.php">Back</a>      
    <h1>Add Crop</h1>
                
    <form name="form" method="post" action=""> 
        <input type="hidden" name="new" value="1" />
        <p><input type="hidden" name="landID" value="<?php echo $row['landID'];?>" /></p>
        <p><input type="text" name="cropID" placeholder="Crop ID" required /></p>
        <p><input type="hidden" name="plantlandDatePlanted" value="<?php echo $today;?>"></p>
        <p><input name="submit" type="submit" value="Add" /></p>
    </form>
    
    <h1>Reference Table</h1>
    <!-- This is a simple reference table that is displayed from the databases' t_crop table. -->
    <table width="100%" border="1" style="border-collapse:collapse;">
            <thead>
                <tr>
                    <th><strong>ID</strong></th>
                    <th><strong>Crop Breed</strong></th>                   
                </tr>
            </thead>
            
            <tbody>
                <?php
                    $ref = "SELECT cropID, cropSpecies FROM t_crop";                            
                    $result = mysqli_query($con, $ref) or die ( mysqli_error());
                    while($row = $result->fetch_assoc()) 
                    {  
                 ?>
                    <tr>
                        <td><?php echo $row["cropID"]; ?></td>
                        <td><?php echo $row["cropSpecies"]; ?></td>                       
                    </tr>                    
                <?php
                    }
                ?>
<?php
?>            
</body>
</html>