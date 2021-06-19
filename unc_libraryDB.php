<?php
    $db = mysqli_connect("localhost", "root","","unc_libraryDB")
    if(!db){
        die("connection failed: " . mysqli_connect_error());
    }
    
?>