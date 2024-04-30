<?php
include('database_connection.php');

// Check if roomId is set
if(isset($_REQUEST['roomId'])) {
    $rd = $_REQUEST['roomId'];
    
    $stmt = $connection->prepare("SELECT * FROM rooms WHERE roomId=?");
    $stmt->bind_param("i", $rd);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $x = $row['roomId'];
        $u = $row['hotelID'];
        $y = $row['roomNumber'];
        $z = $row['roomType'];
        $w = $row['price'];
    } else {
        echo "rooms not found.";
    }
}
?>

<html>
<body>
    <form method="POST">
        <label for="rd">roomId:</label>
        <input type="number" name="rd" value="<?php echo isset($u) ? $u : ''; ?>">
        <br><br>

        <label for="hid">hotelID:</label>
        <input type="number" name="hid" value="<?php echo isset($v) ? $v : ''; ?>">
        <br><br>

        <label for="rn">roomNumber:</label>
        <input type="number" name="rn" value="<?php echo isset($y) ? $y : ''; ?>">
        <br><br>

        <label for=rtyp>roomType:</label>
        <input type="text" name="rtyp" value="<?php echo isset($z) ? $z : ''; ?>">
        <br><br>

        <label for="pc">price:</label>
        <input type="number" name="pc" value="<?php echo isset($w) ? $w : ''; ?>">
        <br><br>
        <input type="submit" name="up" value="Update">
        
    </form>
</body>
</html>

<?php
if(isset($_POST['up'])) {
    // Retrieve updated values from form
    $roomId = $_POST['rd'];
    $hotelID = $_POST['hid'];
    $roomNumber = $_POST['rn'];
    $roomType = $_POST['rtyp'];
    $price = $_POST['pc'];
    
    // Update the rooms in the database
    $stmt = $connection->prepare("UPDATE rooms SET roomId=?, hotelID=?, roomNumber=?, roomType=?, price=? WHERE roomId=?");
    $stmt->bind_param("ssssss", $roomId, $hotelID, $roomNumber, $roomType, $price, $roomId);
    $stmt->execute();
    
    // Redirect to rooms.php
    header('Location: rooms.php');
    exit(); // Ensure that no other content is sent after the header redirection
}
?>
