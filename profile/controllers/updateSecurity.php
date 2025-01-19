<?php
session_start();
include('../config/config.php');
include('../controllers/userDetails.php');
if (isset($_POST['upd_hash'])) {
    $old = $_POST['old'];
    $new = $_POST['new'];
    $new_rep = $_POST['new_rep'];

    if ($old == $userDetails['password']) {
        if (!empty($old) && !empty($new) && !empty($new_rep) && $new == $new_rep) {
            $update_current_user = mysqli_query($connection, "UPDATE `users` SET `password`='$new' WHERE `id` =  $id");
            if ($update_current_user) {
                echo "<script> window.location.href = '../profile.php' </script>";
            } else {
                echo "AN ERROR OCCURED HERE";
            }
        }
    } else {
        echo "Password Mismatch";
    }
}
