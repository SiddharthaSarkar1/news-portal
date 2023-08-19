<?php

include "config.php";

if($_SESSION["user_role"] == 0){
    header("location:{$hostname}/admin/post.php");
}

$catid = $_GET['id'];

$sql = "DELETE FROM `category` WHERE category_id = '$catid'";

if(mysqli_query($conn, $sql)){
    header("location:{$hostname}/admin/category.php");
}else{
    echo "<p style='color:red;text-align:center;margin: 10px 0;'>Unable to delete user record.</p>";
}


?>