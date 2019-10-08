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
    
    // Requests landID from previous form   
    $landID = $_REQUEST['landID'];

    
    // This code is ready to collect information from the forms using input name and then form a SQL query using that data.
    if(isset($_POST['new']) && $_POST['new']==1)
    {
        $landID =$_REQUEST['landID'];
        $animal =$_REQUEST['animalID'];
        $amount =$_REQUEST['amount'];
            
        $ins_query="INSERT INTO t_grassland(landID, livestockID, grasslandAmount) VALUES ('$landID','$animal','$amount')";
                
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
    <h1>Add Animals to Land</h1>
    
    <?php
    $query = "SELECT landID FROM t_land WHERE landID ='".$landID."';";            
    $result = mysqli_query($con, $query) or die ( mysqli_error());
    $row = mysqli_fetch_assoc($result);
    ?>
                
    <form name="form" method="post" action=""> 
        <input type="hidden" name="new" value="1" />
        <p><input type="hidden" name="landID" value="<?php echo $row['landID'];?>" /></p>
        <p><input type="text" name="animalID" placeholder="Animal ID" required /></p>
        <p><input type="text" name="amount" placeholder="Amount" required /></p>
        <p><input name="submit" type="submit" value="Add" /></p>
    </form>
    
    <h1>Reference Table</h1>
    <!-- This is a simple reference table that displays all the records in the t_livestock table. -->
    <table width="100%" border="1" style="border-collapse:collapse;">
            <thead>
                <tr>
                    <th><strong>ID</strong></th>
                    <th><strong>Animal</strong></th>
                    <th><strong>Breed</strong></th>                   
                </tr>
            </thead>
            
            <tbody>
                <?php
                    $ref = "SELECT livestockID, livestockAnimal, livestockBreed, livestockDateAcquired FROM t_livestock";                            
                    $result = mysqli_query($con, $ref) or die ( mysqli_error());
                    while($row = $result->fetch_assoc()) 
                    {  
                 ?>
                    <tr>
                        <td><?php echo $row["livestockID"]; ?></td>
                        <td><?php echo $row["livestockAnimal"]; ?></td>
                        <td><?php echo $row["livestockBreed"]; ?></td>                        
                    </tr>                    
                <?php
                    }
                ?>
<?php
?>            
</body>
</html>