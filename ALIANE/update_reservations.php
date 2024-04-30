<?phpinclude('database_connection.php');
// Check if reservationid is set
if(isset($_REQUEST['reservationid'])) {
    $rid = $_REQUEST['reservationid'];
    
    $stmt = $connection->prepare("SELECT * FROM reservations WHERE reservationid=?");
    $stmt->bind_param("i", $rid);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $x = $row['reservationid'];
        $u = $row['guestId'];
        $y = $row['roomId'];
        $z = $row['checkInDate'];
        $w = $row['checkOutDate'];
    } else {
        echo "reservations not found.";
    }
}
?>

<html>
<body>
    <form method="POST">
        <label for="rid">reservationid:</label>
        <input type="number" name="rid" value="<?php echo isset($x) ? $x : ''; ?>">
        <br><br>

        <label for="gid">guestId:</label>
        <input type="number" name="gid" value="<?php echo isset($u) ? $u : ''; ?>">
        <br><br>

        <label for=rd>roomId:</label>
        <input type="number" name="rd" value="<?php echo isset($y) ? $y : ''; ?>">
        <br><br>

        <label for="cd">checkInDate:</label>
        <input type="date" name="cd" value="<?php echo isset($z) ? $z : ''; ?>">
        <br><br>

        <label for="id">checkOutDate:</label>
        <input type="date" name="id" value="<?php echo isset($w) ? $w : ''; ?>">
        <br><br>

        <input type="submit" name="up" value="Update">
        
    </form>
</body>
</html>

<?php
if(isset($_POST['up'])) {
    // Retrieve updated values from form
    $reservationid = $_POST['rid'];
    $guestId = $_POST['gid'];
    $roomId = $_POST['rd'];
    $checkInDate = $_POST['cd'];
    $checkOutDate = $_POST['id'];
    
    // Update the reservations in the database
    $stmt = $connection->prepare("UPDATE reservations SET reservationid=?, guestId=?, roomId=?, checkInDate=?, checkOutDate=? WHERE reservationid=?");
    $stmt->bind_param("ssssss",$reservationid, $guestId, $roomId, $checkInDate,$checkOutDate, $reservationid);
    $stmt->execute();
    
    // Redirect to reservations.php
    header('Location: reservations.php');
    exit(); // Ensure that no other content is sent after the header redirection
}
?>
