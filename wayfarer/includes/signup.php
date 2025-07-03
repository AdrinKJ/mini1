<?php
error_reporting(0);

if(isset($_POST['submit'])) {
    // Check if file was uploaded without errors
    if(isset($_FILES["image"]) && $_FILES["image"]["error"] == 0) {
        // Read the image file into memory
        $imageData = file_get_contents($_FILES["image"]["tmp_name"]);

        // Encrypt the image data using OpenSSL library
        $key = "your_encryption_key"; // Change this to your encryption key
        $iv = random_bytes(16); // Generate a random initialization vector
        $encryptedImageData = openssl_encrypt($imageData, 'aes-256-cbc', $key, 0, $iv);

        // Assign form values to variables
        $fname = $_POST['fname'];
        $mnumber = $_POST['mobilenumber'];
        $email = $_POST['email'];
        $password = md5($_POST['password']);

        // Prepare SQL query
        $sql = "INSERT INTO tblusers (FullName, MobileNumber, EmailId, Password, encrypted_image_data, iv)
                VALUES (:fname, :mnumber, :email, :password, :encryptedImageData, :iv)";
        $query = $dbh->prepare($sql);

        // Bind parameters
        $query->bindParam(':fname', $fname, PDO::PARAM_STR);
        $query->bindParam(':mnumber', $mnumber, PDO::PARAM_STR);
        $query->bindParam(':email', $email, PDO::PARAM_STR);
        $query->bindParam(':password', $password, PDO::PARAM_STR);
        $query->bindValue(':encryptedImageData', $encryptedImageData, PDO::PARAM_LOB); 
        $query->bindValue(':iv', $iv, PDO::PARAM_LOB);

        // Execute query
        $query->execute();
        $errorInfo = $query->errorInfo();

        // Check for errors
        if($errorInfo[0] !== PDO::ERR_NONE) {
            // Handle the error, for example, display it or log it
            echo "Error executing query: " . $errorInfo[2];
        }

        // Get last inserted ID
        $lastInsertId = $dbh->lastInsertId();

        // Redirect based on success or failure
        if($lastInsertId) {
            $_SESSION['msg'] = "You are successfully registered. Now you can login.";
            header('location:thankyou.php');
        } else {
            $_SESSION['msg'] = "Something went wrong. Please try again.";
            header('location:thankyou.php');
        }
    } else {
        echo "An error occurred while uploading the file.";
    }
}
?>

<!-- JavaScript for checking email availability -->
<script>
function checkAvailability() {
    $("#loaderIcon").show();
    $.ajax({
        url: "check_availability.php",
        data: 'emailid=' + $("#email").val(),
        type: "POST",
        success: function(data) {
            $("#user-availability-status").html(data);
            $("#loaderIcon").hide();
        },
        error: function() {}
    });
}
</script>

<!-- Modal for user registration -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <section>
                <div class="modal-body modal-spa">
                    <div class="login-grids">
                        <div class="login">
                            <div class="login-left">
                                <ul>
                                    <li><a class="fb" href="#"><i></i>Facebook</a></li>
                                    <li><a class="goog" href="#"><i></i>Google</a></li>
                                </ul>
                            </div>
                            <div class="login-right">
                                <form name="signup" method="post" enctype="multipart/form-data">
                                    <h3>Create your account</h3>

                                    <input type="text" value="" placeholder="Full Name" name="fname" autocomplete="off" required="">
                                    <input type="text" value="" placeholder="Mobile number" maxlength="10" name="mobilenumber" autocomplete="off" required="">
                                    <input type="text" value="" placeholder="Email id" name="email" id="email" onBlur="checkAvailability()" autocomplete="off" required="">
                                    <span id="user-availability-status" style="font-size:12px;"></span>
                                    <input type="password" value="" placeholder="Password" name="password" required="">

                                    <p style="font-size:12px;">
                                        <b style="font-size:14px;">Upload Your Image for ID Verification</b>
                                        <input type="file" id="image" name="image" required>
                                        (JPEG only, less than 65KB, size: 2 x 2 inches or 35 x 45 mm @ 300 DPI)<br><br>
                                    </p>
                                    <input type="submit" name="submit" id="submit" value="CREATE ACCOUNT">
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <p>By logging in you agree to our <a href="page.php?type=terms">Terms and Conditions</a> and <a href="page.php?type=privacy">Privacy Policy</a></p>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
