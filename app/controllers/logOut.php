<?php
    if (isset($_GET['logout']) && $_GET['logout'] == true) {
        unset($_SESSION['logged_in']);
        unset($_SESSION['id']);
        unset($_SESSION['name']);
        unset($_SESSION['email']);
        unset($_SESSION['password']);
        unset($_SESSION['wallet']);
        unset($_SESSION['ref_id']);
        unset($_SESSION['referree']);
        echo "<script> window.location.href = '../profile/login.php' </script>";
    }
?>