<?php
/**
 * Created by PhpStorm.
 * User: king
 * Date: 02/04/2017
 * Time: 00:07
 */

//including the database connection file
include("../connection/db.php");

if (isset($_GET['aid'])) {

    $aid=$_GET['aid'];

    $result = mysqli_query($con, "DELETE FROM user_attendance WHERE attendance_id=$aid");

    header("Location:attendance.php");

}


if (isset($_GET['id'])) {

//getting id of the data from url
    $id = $_GET['id'];

//deleting the row from table
    $result = mysqli_query($con, "DELETE FROM login_table WHERE login_id=$id");
//$result = mysqli_query($con, "DELETE FROM login_table WHERE login_username=$id");

//redirecting to the display page (index.php in our case)
    header("Location:index.php");
}

?>