<?php
$to = 'arc4ace7@gmail.com';

// Database connection details
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'tms';
$table = 'tblenquiry';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $name = trim($_POST['name']);
  $email = trim($_POST['email']);
  $phone = trim($_POST['phone']);
  $subject = trim($_POST['subject']);
  $contact_message = trim($_POST['message']);

  if ($subject === '') {
    $subject = 'Contact Form Submission';
  }

  // Set Message
  $message = "Email from: " . $name . "<br />";
  $message .= "Email address: " . $email . "<br />";
  $message .= "Phone number: " . $phone . "<br />";
  $message .= "Message: <br />";
  $message .= nl2br($contact_message);
  $message .= "<br /> ----- <br /> This email was sent from your site " . url() . " contact form. <br />";

  // Set From: header
  $from =  $name . " <" . $email . ">";

  // Email Headers
  $headers = "From: " . $from . "\r\n";
  $headers .= "Reply-To: ". $email . "\r\n";
  $headers .= "MIME-Version: 1.0\r\n";
  $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

  ini_set("sendmail_from", $to); // for windows server
  $mail = mail($to, $subject, $message, $headers);

  if ($mail) {
    // Store data in the database
    $conn = mysqli_connect($host, $user, $password, $database);
    if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
    }

    $fullName = mysqli_real_escape_string($conn, $name);
    $emailId = mysqli_real_escape_string($conn, $email);
    $mobileNumber = mysqli_real_escape_string($conn, $phone);
    $subject = mysqli_real_escape_string($conn, $subject);
    $description = mysqli_real_escape_string($conn, $contact_message);

    $sql = "INSERT INTO $table (FullName, EmailId, MobileNumber, Subject, Description) VALUES ('$fullName', '$emailId', '$mobileNumber', '$subject', '$description')";

    if (mysqli_query($conn, $sql)) {
      echo "OK";
    } else {
      echo "Something went wrong. Please try again.";
    }

    mysqli_close($conn);
  } else {
    echo "Something went wrong. Please try again.";
  }
}
?>
