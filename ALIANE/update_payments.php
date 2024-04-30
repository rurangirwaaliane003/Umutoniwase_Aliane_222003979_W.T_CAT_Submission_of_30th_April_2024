<?php
include('database_connection.php');

// Check if paymentid is set
if(isset($_REQUEST['paymentid'])) {
    $pid = $_REQUEST['paymentid'];
    
    $stmt = $connection->prepare("SELECT * FROM payments WHERE paymentid=?");
    $stmt->bind_param("i", $pid);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $x = $row['paymentid'];
        $u = $row['reservationid'];
        $y = $row['amount'];
        $z = $row['paymentdate'];
    } else {
        echo "Payment not found.";
    }
}
?>

<html>
<body>
    <form method="POST">

        <label for="pid">paymentid:</label>
        <input type="number" name="pid" value="<?php echo isset($v) ? $v : ''; ?>">
        <br><br>
        <label for="rid">reservationid:</label>
        <input type="number" name="rid" value="<?php echo isset($u) ? $u : ''; ?>">
        <br><br>

        <label for="Amnt">amount:</label>
        <input type="number" name="Amnt" value="<?php echo isset($y) ? $y : ''; ?>">
        <br><br>

        <label for=Paydt>paymentdate:</label>
        <input type="date" name="Paydt" value="<?php echo isset($z) ? $z : ''; ?>">
        <br><br>

        <input type="submit" name="up" value="Update">
        
    </form>
</body>
</html>

<?php
if(isset($_POST['up'])) {
    // Retrieve updated values from form
    $paymentid = $_POST['pid'];
    $reservationid = $_POST['rid'];
    $amount = $_POST['Amnt'];
    $paymentdate = $_POST['Paydt'];
    
    // Update the payments in the database
    $stmt = $connection->prepare("UPDATE payments SET paymentid=?,reservationid=?, amount=?, paymentdate=? WHERE paymentid=?");
    $stmt->bind_param("sssss",$paymentid ,$reservationid, $amount, $paymentdate, $paymentid);
    $stmt->execute();
    
    // Redirect to payments.php
    header('Location: payments.php');
    exit(); // Ensure that no other content is sent after the header redirection
}
?>
