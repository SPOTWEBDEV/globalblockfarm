<?php
    $id =  $_SESSION['id']; 
    $fetchUser = mysqli_query($connection, "SELECT * FROM `users` WHERE `id` = '$id'");
    // $fetchKyc = mysqli_query($connection, "SELECT * FROM `kyc` WHERE `user_id` = '$id'");
    // $kycDetails = mysqli_fetch_assoc($fetchKyc);
    $userDetails = mysqli_fetch_assoc($fetchUser);
?>