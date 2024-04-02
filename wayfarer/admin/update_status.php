<!--This Code is to make sure that the admin can edit the Status field-->
<?php
session_start();
include('includes/config.php');

if (strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
} else {
    if (isset($_POST['id']) && isset($_POST['status'])) {
        $id = intval($_POST['id']);
        $status = $_POST['status'];

        $sql = "UPDATE tblemergency SET status = :status WHERE id = :id";
        $query = $dbh->prepare($sql);
        $query->bindParam(':status', $status, PDO::PARAM_STR);
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $count = $query->rowCount();

        if ($count > 0) {
            $msg = "Status updated successfully";
        } else {
            $error = "Failed to update status";
        }
    }
    header('location:manageEmergency.php');
}
?>
