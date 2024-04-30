<?php
include('database_connection.php');
// Check if HotelID is set
if(isset($_REQUEST['hotelID'])) {
    $hid = $_REQUEST['hotelID'];
    
    $stmt = $connection->prepare("SELECT * FROM hotels WHERE hotelID=?");
    $stmt->bind_param("i", $hid);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $x = $row['hotelID'];
        $u = $row['hotelName'];
        $y = $row['location'];
        $z = $row['password'];
        $p = $row['emailId'];
    } else {
        echo "hotels not found.";
    }
}
?>

<html>
<body>
    <form method="POST">
        <label for="hid">hotelID:</label>
        <input type="number" name="hid" value="<?php echo isset($u) ? $u : ''; ?>">
        <br><br>

        <label for="hname">hotelName:</label>
        <input type="text" name="hname" value="<?php echo isset($u) ? $u : ''; ?>">
        <br><br>

        <label for="loc">location:</label>
        <input type="text" name="loc" value="<?php echo isset($y) ? $y : ''; ?>">
        <br><br>

        <label for=psw>password:</label>
        <input type="password" name="psw" value="<?php echo isset($z) ? $z : ''; ?>">
        <br><br>

        <label for="eid">emailId:</label>
        <input type="text" name="eid" value="<?php echo isset($p) ? $p : ''; ?>">
        <br><br>
        <input type="submit" name="up" value="Update">
        
    </form>
</body>
</html>

<?php
if(isset($_POST['up'])) {
    // Retrieve updated values from form
    $hotelID = $_POST['hid'];
    $hotelName = $_POST['hname'];
    $location = $_POST['loc'];
    $password = $_POST['psw'];
    $emailId = $_POST['eid'];
    
    // Update the hotels in the database
    $stmt = $connection->prepare("UPDATE hotels SET hotelID=?, hotelName=?, location=?, password=?, emailId=? WHERE hotelID=?");
    $stmt->bind_param("ssssss", $hotelID, $hotelName, $location, $password, $emailId,  $hotelID);
    $stmt->execute();
    
    // Redirect to hotels.php
    header('Location: hotels.php');
    exit(); // Ensure that no other content is sent after the header redirection
}
?>
