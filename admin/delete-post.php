<?php  

include "config.php";

$post_id = $_GET['id'];
$cat_id = $_GET['catid'];

$sql1 = "SELECT * FROM post WHERE post_id = {$post_id};";
$result = mysqli_query($conn, $sql1) or die("Query failed : Select");

$row = mysqli_fetch_assoc($result);
//this unlink fdunction will delete the file from the folder.
unlink("upload/".$row['post_img']);

$sql = "DELETE FROM post WHERE post_id = {$post_id};";
//decreasing the count of number if post used this category with the help of this
$sql .= "UPDATE category SET post = post - 1 WHERE category_id = {$cat_id}";

if(mysqli_multi_query($conn, $sql)){
    header("location:{$hostname}/admin/post.php");
}else{
    echo "Query Failed";
}

?>