function sendEmergency() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showLocation);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

function showLocation(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;

    // Retrieve the email ID from the server-side
    const email = "<?php echo getEmail(); ?>";

    // Display the location to the user (you can customize this as needed)
    alert("It seems you have tapped the emergency button. Help is on the way.\nYour location: Latitude " + latitude + ", Longitude " + longitude);

    // Send the location and user information to the server using an API call
    sendLocationToServer(latitude, longitude, email);
}

function sendLocationToServer(latitude, longitude, username, email) {
    // Send the data to the server using an AJAX request
    $.ajax({
        type: 'POST',
        url: 'location_details.php',
        data: { latitude: latitude, longitude: longitude, username: username, email: email },
        success: function(response) {
            console.log(response);
        },
        error: function(xhr, status, error) {
            console.log(error);
        }
    });
}