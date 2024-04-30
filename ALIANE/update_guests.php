<?php
include('database_connection.php');

// Check if guest_Id is set
if(isset($_REQUEST['guestId'])) {
    $gid = $_REQUEST['guestId'];
    
    $stmt = $connection->prepare("SELECT * FROM guests WHERE guestId=?");
    $stmt->bind_param("i", $gid);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $x = $row['guestId'];
        $u = $row['firstname'];
        $y = $row['lastname'];
        $z = $row['email'];
          $p = $row['phonenumber'];
            $q = $row['password'];
    } else {
        echo "guests not found.";
    }
}
?>

<html>
<body>
    <form method="POST">
     
        <label for="gid">guestId:</label>
        <input type="number" name="gid" value="<?php echo isset($x) ? $x : ''; ?>">
        <br><br>   

        <label for="fnme">firstname:</label>
        <input type="text" name="fnme" value="<?php echo isset($y) ? $y : ''; ?>">
        <br><br>

        <label for="lnme">lastname:</label>
        <input type="text" name="lnme" value="<?php echo isset($z) ? $z : ''; ?>">
        <br><br>

        <label for="eml">email:</label>
        <input type="text" name="eml" value="<?php echo isset($w) ? $w : ''; ?>">
        <br><br>

        <label for="pn">phonenumber:</label>
        <input type="number"  name="pn" value="<?php echo isset($o) ? $o : ''; ?>"><br><br>
        <label for="pd">password:</label>
        <input type="password" id="pd" name="pd" value="<?php echo isset($p) ? $p : ''; ?>"><br><br>

        <input type="submit" name="up" value="Update">
        
    </form>
</body>
</html>

<?php
if(isset($_POST['up'])) {
    // Retrieve updated values from form
    $guestId = $_POST['gid'];
    $firstname = $_POST['fnme'];
    $lastname = $_POST['lnme'];
    $email = $_POST['eml']; 
     $phonenumber = $_POST['pn'];
      $password = $_POST['pd'];
    
    
    // Update the guests in the database
    $stmt = $connection->prepare("UPDATE guests SET guestId=? , firstname=?, lastname=?, email=?, phonenumber=?, password=?  WHERE guestId=?");
    $stmt->bind_param("sssssss", $guestId, $firstname, $lastname, $email,$phonenumber,$password ,$guestId);
    $stmt->execute();
    
    // Redirect to guests.php
    header('Location: guests.php');
    exit(); // Ensure that no other content is sent after the header redirection
}
?>
