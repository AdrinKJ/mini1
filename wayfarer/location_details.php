<?php
// Start or resume the session
session_start();

// Function to retrieve the email ID of the logged-in user
function getEmail() {
    // Check if the user is logged in and the email is stored in the session
    if (isset($_SESSION['login'])) {
        return $_SESSION['login'];
    } else {
        return "Guest"; // Return an empty string if the email is not set
    }
}

// Retrieve the latitude, longitude, username, and email values sent from the client
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];
$email = getEmail();

// Database configuration
$host = 'localhost';
$dbUsername = 'root';
$dbPassword = '';
$dbName = 'tms';
$tableName = 'tblemergency';
 
// Connect to the database
$conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

// Check the database connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare the SQL query to insert the location and user information into the table
$sql = "INSERT INTO $tableName (latitude, longitude, email) VALUES ('$latitude', '$longitude', '$email')";

// Execute the SQL query
if ($conn->query($sql) === TRUE) {
    echo "Location stored successfully";
} else {
    echo "Error storing location: " . $conn->error;
}

// Close the database connection
$conn->close();
?>
