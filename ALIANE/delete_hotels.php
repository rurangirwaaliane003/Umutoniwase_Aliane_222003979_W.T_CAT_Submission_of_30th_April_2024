<?php
include('database_connection.php');

// Check if HotelID is set
if(isset($_REQUEST['hotelID'])) {
    $hid = $_REQUEST['hotelID'];
    
    // Prepare and execute the DELETE statement
    $stmt = $connection->prepare("DELETE FROM hotels WHERE hotelID=?");
    $stmt->bind_param("i", $hid);
    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting data: " . $stmt->error;
    }

    $stmt->close();
} else {
    echo "hotelID is not set.";
}

$connection->close();
?>
