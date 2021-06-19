<?php
    $db = mysqli_connect("localhost", "root","","unc_librarydb");
    if(!$db){
        die("connection failed: " . mysqli_connect_error());
    }


?>