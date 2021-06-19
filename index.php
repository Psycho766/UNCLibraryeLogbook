<html>
<head><title >UNC Library eLogbook</title></head>

<body>
    <center><h1>UNC LIBRARY eLOGBOOK</h1></center>
    <br><br><br><br>

    <form method="POST">

        Student ID: <input type="text" name = "StudentID" Required>
        First Name: <input type="text" name="firstname">
        Middle Name: <input type="text" name="middlename">
        Last Name: <input type="text" name="lastname">
        <input type="submit" name="submit" value="Submit">

    </form>

<?php
include "unc_libraryDB.php";

if(isset($_POST['submit'])){
    $StudentID = $_POST['StudentID'];
    $firstname = $_POST['firstname'];
    $middlename = $_POST['middlename'];
    $lastname = $_POST['lastname'];

    $sql = "INSERT into librarylog (studentid,firstname,middlename,lastname) values
        ('$StudentID', '$firstname', '$middlename','$lastname')";

    if(mysqli_query($db,$sql)){
        echo "Log Added!";
    }
    else{
        echo "error";
    }
    
}
mysqli_close($db);
?>





</body>
<style>
body {
  background-color: gray;
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
</style>


</html>