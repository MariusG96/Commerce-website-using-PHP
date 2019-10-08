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
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>The Farm</title>
    <link rel="stylesheet" href="adminstylesheet.css" />
</head>

<body>
    <div class="form">
        <p><a href="admin_home.php">Home</a> 
        <h2>View Land Details</h2>
        <table width="100%" border="1" style="border-collapse:collapse;">
            <thead>
                <tr>
                    <th><strong>ID</strong></th>
                    <th><strong>Size</strong></th>
                    <th><strong>Date Purchased</strong></th>
                    <th><strong>Location ID</strong></th>
                    <th><strong>State</strong></th>
                    <th><strong>Details</strong></th>
                    <th><strong>Change State</strong></th>
                </tr>
            </thead>
            
            <tbody>
                <!-- table with an SQL statement which displays all the pieces of land and shows what is happening there -->
                <?php
                    $sql="SELECT landID, landSize, landStateIn, landLocation, landDatePurchased FROM t_land ORDER BY landID asc;";                            
                    $result = $con->query($sql);
                    while($row = $result->fetch_assoc()) 
                    {  
                 ?>
                    <tr>
                        <td><?php echo $row["landID"]; ?></td>
                        <td><?php echo $row["landSize"].'Ha'; ?></td>
                        <td><?php echo $row["landDatePurchased"]; ?></td>
                        <td><?php echo $row["landLocation"]; ?></td>
                        <td><?php echo $row["landStateIn"]; ?></td>
                        <td><a href="land_details.php?landID=<?php echo $row["landID"]?>&landStateIn=<?php echo $row["landStateIn"];?>">Details</a></td>
                        <td><a href="land_changestate.php?landID=<?php echo $row["landID"]?>&landStateIn=<?php echo $row["landStateIn"];?>">Change State</a></td>
                    </tr>                    
                <?php
                    }
                ?> 
            </tbody>
        </table>
    </div>
</body>
</html>