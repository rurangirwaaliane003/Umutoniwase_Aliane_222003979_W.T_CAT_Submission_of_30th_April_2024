<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Linking to external stylesheet -->
  <link rel="stylesheet" type="text/css" href="style.css" title="style 1" media="screen, tv, projection, handheld, print"/>
  <!-- Defining character encoding -->
  <meta charset="utf-8">
  <!-- Setting viewport for responsive design -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Our Rooms</title>
  <style>
    /* Normal link */
    a {
      padding: 10px;
      color: white;
      background-color: pink;
      text-decoration: none;
      margin-right: 15px;
    }

    /* Visited link */
    a:visited {
      color: purple;
    }
    /* Unvisited link */
    a:link {
      color: brown; /* Changed to lowercase */
    }
    /* Hover effect */
    a:hover {
      background-color: white;
    }

    /* Active link */
    a:active {
      background-color: red;
    }

    /* Extend margin left for search button */
    button.btn {
      margin-left: 15px; /* Adjust this value as needed */
      margin-top: 4px;
    }
    /* Extend margin left for search button */
    input.form-control {
      margin-left: 1200px; /* Adjust this value as needed */

      padding: 8px;
     
    }
    section{
    padding:71px;
    border-bottom: 1px solid #ddd;
    }
    footer{
    text-align: center;
    padding: 15px;
    background-color:darkgray;
    }

  </style>
  </head>

  <header>

<body bgcolor="blue">
  <form class="d-flex" role="search" action="search.php">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  <ul style="list-style-type: none; padding: 0;">
    <li style="display: inline; margin-right: 10px;">
    <img src="./Images/arsnl.jpg" width="90" height="60" alt="Logo">
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./home.html">HOME</a>
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./about.html">ABOUT</a>
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./contact.html">CONTACT</a>
  </li>
  </li>
    
    <li style="display: inline; margin-right: 10px;"><a href="./guests.php">GUESTS</a>
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./hotels.php">HOTELS</a>
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./payments.php">PAYMENTS</a>
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./reservations.php">RESERVATION</a>
  </li>
    <li style="display: inline; margin-right: 10px;"><a href="./rooms.php">ROOMS</a>
  </li>
  
    <li class="dropdown" style="display: inline; margin-right: 10px;">
      <a href="#" style="padding: 10px; color: white; background-color: skyblue; text-decoration: none; margin-right: 15px;">Settings</a>
      <div class="dropdown-contents">
        <!-- Links inside the dropdown menu -->
        <a href="login.html">Login</a>
        <a href="register.html">Register</a>
        <a href="logout.php">Logout</a>
      </div>
    </li><br><br>
    
    
    
  </ul>

</header>
<section>

    <h1><u> Rooms Form </u></h1>
    <form method="post">
            
        <label for="rd">roomId:</label>
        <input type="number" id="rd" name="rd"><br><br>

        <label for="hid">hotelID:</label>
        <input type="number" id="hid" name="hid"><br><br>

        <label for=rn>roomNumber:</label>
        <input type="number" id="rn" name="rn" required><br><br>

        <label for="rtyp">roomType:</label>
        <input type="text" id="rtyp" name="rtyp" required><br><br>

        <label for="pc">price:</label>
        <input type="number" id="pc" name="pc" required><br><br>

        <input type="submit" name="add" value="Insert">
      

    </form>


<?php
include('database_connection.php');

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Prepare and bind the parameters
    $stmt = $connection->prepare("INSERT INTO rooms(roomId, hotelID, roomNumber, roomType,price) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $rd, $hid, $rn, $rtyp, $pc);
    // Set parameters and execute
    $rd = $_POST['rd'];
    $hid = $_POST['hid'];
    $rn = $_POST['rn'];
    $rtyp = $_POST['rtyp'];
    $pc = $_POST['pc'];
   
    if ($stmt->execute() == TRUE) {
        echo "New record has been added successfully";
    } else {
        echo "Error: " . $stmt->error;
    }
    $stmt->close();
}
$connection->close();
?>

<?php
include('database_connection.php');
// SQL query to fetch data from the rooms table
$sql = "SELECT * FROM rooms";
$result = $connection->query($sql);

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail information Of Rooms</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <center><h2>Table of Transactions</h2></center>
    <table border="5">
        <tr>
            <th>roomId</th>
            <th>hotelID</th>
            <th>roomNumber</th>
            <th>roomType</th>
            <th>price</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>
        <?php
include('database_connection.php');

        // Prepare SQL query to retrieve all rooms
        $sql = "SELECT * FROM rooms";
        $result = $connection->query($sql);

        // Check if there are any rooms
        if ($result->num_rows > 0) {
            // Output data for each row
            while ($row = $result->fetch_assoc()) {
                $rd = $row['roomId']; // Fetch the roomId
                echo "<tr>
                    <td>" . $row['roomId'] . "</td>
                    <td>" . $row['hotelID'] . "</td>
                    <td>" . $row['roomNumber'] . "</td>
                    <td>" . $row['roomType'] . "</td>
                    <td>" . $row['price'] . "</td>
                    <td><a style='padding:4px' href='delete_rooms.php?roomId=$rd'>Delete</a></td> 
                    <td><a style='padding:4px' href='update_rooms.php?roomId=$rd'>Update</a></td> 
                </tr>";
            }
        } else {
            echo "<tr><td colspan='6'>No data found</td></tr>";
        }
        // Close the database connection
        $connection->close();
        ?>
    </table>
</body>

    </section>


  
<footer>
  <center> 
    <b><h2>UR CBE BIT &copy, 2024 &reg, Designer by: @Aliane UMUTONIWASE</h2></b>
  </center>
</footer>
</body>
</html>