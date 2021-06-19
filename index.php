<html>
<head><title >UNC Library eLogbook</title></head>

<body>
    <center><h1>UNC LIBRARY eLOGBOOK</h1></center>
    <br><br><br><br>

    <form method="POST">
        Student ID: <input type="text" name = "StudentID" Required>
        First Name: <input type="text" name="firstname" >
        Middle Name: <input type="text" name="middlename" >
        Last Name: <input type="text" name="lastname">
        Department: <input type="text" name="department">
        <input type="submit" name="submit" value="Submit">
    </form>

<?php
include "unc_libraryDB.php";

if(isset($_POST['submit'])){
    $StudentID = $_POST['StudentID'];
    $firstname = $_POST['firstname'];
    $middlename = $_POST['middlename'];
    $lastname = $_POST['lastname'];
    $department = $_POST['department'];

    $sql = "INSERT into librarylog (studentid,firstname,middlename,lastname,department) values
        ('$StudentID', '$firstname', '$middlename','$lastname','$department')";

    if(mysqli_query($db,$sql)){
       
    }
    else{
        echo "error";
    }
}
mysqli_close($db);
?>
<?php
include "unc_libraryDB.php";


$sql = "SELECT studentid,firstname,middlename,lastname,department,date from librarylog ORDER BY date desc";
$result = $db->query($sql);

echo "<table>";

echo "<tr>";
    echo "<th>";
    echo "Student Number";
    echo "</th>";
    echo "<th>";
    echo "First Name";
    echo "</th>";
    echo "<th>";
    echo "Middle Name";
    echo "</th>";
    echo "<th>";
    echo "Last Name";
    echo "</th>";
    echo "<th>";
    echo "Date";
    echo "</th>";
    echo "<th>";
    echo "Department";
    echo "</th>";
    echo "</tr>"; 
if($result->num_rows > 0){
  while($row = $result->fetch_assoc()){
    
    echo "<tr>";
    echo "<td>";
    echo $row['studentid'];
    echo "</td>";
    echo "<td>";
    echo $row['firstname'];
    echo "</td>";
    echo "<td>";
    echo $row['middlename'];
    echo "</td>";
    echo "<td>";
    echo $row['lastname'];
    echo "</td>";
    echo "<td>";
    echo $row['date'];
    echo "</td>";
    echo "<td>";
    echo $row['department'];
    echo "</td>";
    echo "</tr>";
  }
echo "</table>";
}

else{
  echo "0 result";
}

$db->close();


?>
</body>
<style>
body {
  background-color: teal;
}

form{
    color:white;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}
table {
  font-family: arial, sans-serif;
  color: white;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #red;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>


</html>