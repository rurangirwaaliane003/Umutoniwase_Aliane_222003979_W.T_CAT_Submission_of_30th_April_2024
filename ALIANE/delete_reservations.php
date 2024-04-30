<?php
include('database_connection.php');

// Check if reservationid is set
if(isset($_REQUEST['reservationid'])) {
    $rid = $_REQUEST['reservationid'];
    
    // Prepare and execute the DELETE statement
    $stmt = $connection->prepare("DELETE FROM reservations WHERE reservationid=?");
    $stmt->bind_param("i", $rid);
    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting data: " . $stmt->error;
    }

    $stmt->close();
} else {
    echo "reservationid is not set.";
}

$connection->close();
?>
