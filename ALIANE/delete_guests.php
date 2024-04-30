<?php
include('database_connection.php');

// Check if guestId is set
if(isset($_REQUEST['guestId'])) {
    $gid = $_REQUEST['guestId'];
    
    // Prepare and execute the DELETE statement
    $stmt = $connection->prepare("DELETE FROM guests WHERE guestId=?");
    $stmt->bind_param("i", $gid);
    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting data: " . $stmt->error;
    }

    $stmt->close();
} else {
    echo "guestId is not set.";
}

$connection->close();
?>
