<?php
    if (isset($_GET['logout']) && $_GET['logout'] == true) {
        unset($_SESSION['id']);
        echo "<script> window.location.href = 'https://globalblockfarm.com/app/login.php' </script>";
    }
?>