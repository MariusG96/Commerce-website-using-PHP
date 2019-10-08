<?php 
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    
    include('functions/pdodbcon.php'); 
?>
<!DOCTYPE html>
<html lang="en">

<head>
    
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content ="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>The Farm</title>
    <!-- jqueries and bootstraps -->
    <script src="js/jquery-1.10.2.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href = "css/jquery-ui.css" rel = "stylesheet">
    <!-- Custom CSS -->
    <link rel ="stylesheet" type="text/css" href="frontstyle.css" />
    
    
</head>
<body>
    <?php include('functions/navlink.php'); ?>
    <div class ="container">
    
        <div class="row">
        <br />
        <h2 align="center">Products</h2>
        <br />
            <div class="col-md-3">
                <div class="list-group">
                    <h3> Produce Type <h3>
                    <div style="height: auto; overflow-y: auto; overflow-x: hidden;">
                
                    <?php
                        //Selects all the records with status of 1
                        $query = "SELECT DISTINCT(type) FROM t_products WHERE status = '1' ORDER BY ID DESC";
                        $statement = $con->prepare($query);
                        $statement->execute();
                        $result = $statement->fetchAll();
                        foreach($result as $row)
                        {
                    ?>
                        <!-- CSS div for checkbox list that gets all the types from the database and displays it there. -->
                        <div class="list-group-item checkbox">   
                            <label><input type="checkbox" class="common_selector type" value="<?php echo $row['type']; ?>"  > <?php echo $row['type']; ?></label>
                        </div>   
                    <?php
                        }
                    ?>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
            	<br />
                <div class="row filter_data">

                </div>
            </div>
        </div>
    </div> 
<script>

//AJAX script for the product form
$(document).ready(function(){

    filter_data();

    function filter_data()
    {
        $('.filter_data').html('<div id="loading" style="" ></div>');
        var action = 'fetch_data';
        var type = get_filter('type');
        $.ajax({
            url:"functions/fetch_data.php",
            method:"POST",
            data:{action:action, type:type, },
            success:function(data){
                $('.filter_data').html(data);
            }
        });
    }

    function get_filter(class_name)
    {
        var filter = [];
        $('.'+class_name+':checked').each(function(){
            filter.push($(this).val());
        });
        return filter;
    }

    $('.common_selector').click(function(){
        filter_data();
    });

});
</script>    
</body>
</html>
