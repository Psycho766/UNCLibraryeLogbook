<html>
<head><title >UNC Library eLogbook</title></head>

<body>
    <center><h1>UNC LIBRARY eLOGBOOK</h1></center>
    <br><br><br><br>
<?php
include "unc_libraryDB.php";
if(isset($_GET['StudentID'])){

  $StudentID = $_GET['StudentID'];

  $query = "SELECT * from student where studentid = '$StudentID'";
  query_run = mysqli_query($db,$query);

}
?>
    <form method="GET">

        Student ID: <input type="text" name = "StudentID" Required>
        <input type="submit" name="load" value="Load">
        First Name: <input type="text" name="firstname" value = "<?php if(isset($_GET['firstname'])) echo $_GET['firstname'];?>">
        Middle Name: <input type="text" name="middlename" value = "<?php if(isset($_GET['middlename'])) echo $_GET['middlename'];?>">
        Last Name: <input type="text" name="lastname" value = "<?php if(isset($_GET['lastname'])) echo $_GET['lastname'];?>">
        <input type="submit" name="submit" value="Submit">

    </form>

<?php
include "unc_libraryDB.php";

if(isset($_GET['submit'])){
    $StudentID = $_GET['StudentID'];
    $firstname = $_GET['firstname'];
    $middlename = $_GET['middlename'];
    $lastname = $_GET['lastname'];

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