<?php
session_start();
error_reporting(0);
include('includes/config.php');

if(strlen($_SESSION['alogin']) == 0) {   
    header('location:index.php');
} else { 
?>
<!DOCTYPE HTML>
<html>
<head>
    <title>Wayfarer| Admin manage Users</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/morris.css" type="text/css"/>
    <!-- Graph CSS -->
    <link href="css/font-awesome.css" rel="stylesheet"> 
    <!-- jQuery -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!-- tables -->
    <link rel="stylesheet" type="text/css" href="css/table-style.css" />
    <link rel="stylesheet" type="text/css" href="css/basictable.css" />
    <script>
    function openImageWindow(imageData) {
        var imageWindow = window.open('', '_blank');
        imageWindow.document.write('<img src="data:image/jpeg;base64,' + imageData + '" />');
    }
    </script>
</head> 
<body>
    <div class="page-container">
        <!--/content-inner-->
        <div class="left-content">
            <!-- header start here -->
            <?php include('includes/header.php');?>
            <!-- header end here -->   
            <div class="clearfix"> </div>   
        </div>
        <!--/content-inner-->
        <!--/sidebar-menu-->
        <?php include('includes/sidebarmenu.php');?>
        <div class="inner-block">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="dashboard.php">Home</a><i class="fa fa-angle-right"></i>Manage Users</li>
            </ol>
            <div class="agile-grids">  
                <!-- tables -->
                <div class="agile-tables">
                    <div class="w3l-table-info">
                        <h2>Manage Users</h2>
                        <table id="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Mobile No.</th>
                                    <th>Email Id</th>
                                    <th>RegDate </th>
                                    <th>Updation Date</th>
                                    <th>ID Proof</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $sql = "SELECT * FROM tblusers";
                                $query = $dbh->prepare($sql);
                                $query->execute();
                                $results = $query->fetchAll(PDO::FETCH_OBJ);
                                $cnt = 1;
                                if($query->rowCount() > 0) {
                                    foreach($results as $result) { ?>
                                        <tr>
                                            <td><?php echo htmlentities($cnt);?></td>
                                            <td><?php echo htmlentities($result->FullName);?></td>
                                            <td><?php echo htmlentities($result->MobileNumber);?></td>
                                            <td><?php echo htmlentities($result->EmailId);?></td>
                                            <td><?php echo htmlentities($result->RegDate);?></td>
                                            <td><?php echo htmlentities($result->UpdationDate);?></td>
                                            <!-- Add ID Proof display here -->
                                            <td>
                                                <?php 
                                                // Decrypt the ID proof here
                                                $iv = $result->iv;
                                                $encryptedImageData = $result->encrypted_image_data;
                                                $key = "your_encryption_key"; // Replace with your actual encryption key
                                                $decryptedImageData = openssl_decrypt($encryptedImageData, 'aes-256-cbc', $key, 0, $iv);
                                                // Display the button to open the image in a new window
                                                echo '<button onclick="openImageWindow(\'' . base64_encode($decryptedImageData) . '\')">View</button>';
                                                ?>
                                            </td>
                                        </tr>
                                        <?php $cnt = $cnt+1;
                                    }
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--copy rights start here-->
            <?php include('includes/footer.php');?>
            <!--COPY rights end here-->
        </div>
    </div>
    <!--/sidebar-menu-->
    <!--js -->
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
<?php } ?>
