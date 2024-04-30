<?php
include('database_connection.php');

// Check if roomId is set
if(isset($_REQUEST['roomId'])) {
    $rd = $_REQUEST['roomId'];
    
    // Prepare and execute the DELETE statement
    $stmt = $connection->prepare("DELETE FROM rooms WHERE roomId=?");
    $stmt->bind_param("i", $rd);
    if ($stmt->execute()) {
        echo "Record deleted successfully.";
    } else {
        echo "Error deleting data: " . $stmt->error;
    }

    $stmt->close();
} else {
    echo "roomId is not set.";
}

$connection->close();
?>
