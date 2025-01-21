<?php

;

include('../server/connection.php');
include('controllers/authFy.php');
// PREPARE USERS DETAILS;
include('controllers/userDetails.php');
//  FOR INVESTMENT MATURITY
include('controllers/invMTR_CTR.php');
// Log out the mother force;
include('controllers/logOut.php');

$user_identity = $userDetails['id'];




$sql = mysqli_query($connection,"SELECT sum(amount) AS trading_balance FROM investments where user_id = '$user_identity' AND `status` = 0");
// $sql = mysqli_query($connection,"SELECT sum(amount) AS trading_balance FROM investments where user_id = '$user_identity'");

while($row = mysqli_fetch_array($sql)){
    $trading_balance = $row['trading_balance'];
}


$querypromo = "SELECT promo_won FROM users WHERE id = '$user_identity'";
$resultpromo = mysqli_query($connection, $querypromo);


if ($resultpromo) {
$row = mysqli_fetch_assoc($resultpromo);
$promo_won = $row['promo_won'];
}

 ?>
 



<!DOCTYPE html>
<html lang="en" dir="ltr" data-nav-layout="vertical" data-theme-mode="light" data-header-styles="light" data-menu-styles="dark" data-toggled="close">

<head>
    <!-- Meta Data -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <!-- Favicon -->
    <link rel="icon" href="./assets/images/brand-logos/favicon.ico" type="image/x-icon" />
    <!-- Choices JS -->
    <script src="./assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>
    <!-- Main Theme Js -->
    <script src="./assets/js/main.js"></script>
    <!-- Bootstrap Css -->
    <link id="style" href="./assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Style Css -->
    <link href="./assets/css/styles.min.css" rel="stylesheet" />
    <!-- Icons Css -->
    <link href="./assets/css/icons.css" rel="stylesheet" />
    <!-- Node Waves Css -->
    <link href="./assets/libs/node-waves/waves.min.css" rel="stylesheet" />
    <!-- Simplebar Css -->
    <link href="./assets/libs/simplebar/simplebar.min.css" rel="stylesheet" />
    <!-- Color Picker Css -->
    <link rel="stylesheet" href="./assets/libs/flatpickr/flatpickr.min.css" />
    <link rel="stylesheet" href="./assets/libs/@simonwep/pickr/themes/nano.min.css" />
    <!-- Choices Css -->
    <link rel="stylesheet" href="./assets/libs/choices.js/public/assets/styles/choices.min.css" />
    <!-- <meta name="theme-color" content="#e7ecef" /> -->
    
   
    <meta name="google" content="notranslate">
    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({
                pageLanguage: 'en',
                includedLanguages: 'en,es,fr,de,it', // Add the languages you want to support
                layout: google.translate.TranslateElement.InlineLayout.SIMPLE
            }, 'google_translate_element');
        }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>



    <title>Dashboard - Home</title>

</head>

<body>
    <!-- Switcher -->
<?php include('./includes/switcher.php') ?>
    <!-- End Switcher -->

<div class="page">
        <!-- app-header -->
        <?php include('./includes/header.php') ?>
        <!-- /app-header -->
        
        <!-- Nah the app sidebar be this -->
        <!-- Start::app-sidebar -->
        <?php include('./includes/sidebar.php') ?>
        <!-- Start::app-sidebar -->
        <!-- OMOR NAH HERE WHERE SIDEBAR ENDED OOO -->
        <!-- End::app-sidebar -->

        <!-- Start::app-content -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

         <div class="main-content app-content">
            <div class="container-fluid">
                <!-- Page Header -->
                <div class="d-md-flex d-block align-items-center justify-content-between my-4 page-header-breadcrumb">
                    <h1 class="page-title fw-semibold fs-18 mb-0">Profile</h1>
                    <div class="ms-md-1 ms-0">
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Profile</li>
                            </ol>
                        </nav>
                    </div>
                </div> <!-- Page Header Close -->
                <!-- Start::row-1 -->
                <div class="row">
                    <div class="col-xxl-4 col-xl-12">
                        <div class="card custom-card overflow-hidden">
                            <div class="card-body p-0">
                                <div class="d-sm-flex align-items-top p-4 border-bottom border-block-end-dashed" style="background: url('./assets/images/bg.jpg') center / cover;">
                                    <div>
                                        <span class="avatar avatar-xxl avatar-rounded online me-3" style="height: 5rem; width: 5rem;">
                                            <?php
                                            if (strlen($userDetails['profile_image']) > 3) {
                                            ?>
                                                <img src="./profiles/<?php echo $userDetails['profile_image'] ?>" alt="img" style="height: 100%; width: 100%; object-fit: cover;" class="rounded-circle" />
                                            <?php } else { ?>
                                                <img src="./assets/images/faces/9.jpg" style="height: 100%; width: 100%; object-fit: cover;" alt="">
                                            <?php } ?>
                                        </span>
                                    </div>
                                    <div class="flex-fill main-profile-info">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <h6 class="fw-semibold mb-1 text-fixed-white"><?php echo $userDetails['name'] ?></h6>
                                            <!-- <button class="btn btn-light btn-wave">
                                                <i class="ri-add-line me-1 align-middle d-inline-block"></i>
                                                Follow
                                            </button> -->
                                        </div>
                                        <p class="mb-1 text-muted text-fixed-white op-7"><?php echo $userDetails['email'] ?></p>
                                        <p class="fs-12 text-fixed-white mb-4 op-5">
                                            <span class="me-3">
                                                <!-- <i class="ri-building-line me-1 align-middle"></i>Georgia</span> <span> -->
                                                <i class="ri-map-pin-line me-1 align-middle"></i><?php   ?></span>
                                        </p>
                                        <!-- <div class="d-flex mb-0">
                                            <div class="me-4">
                                                <p class="fw-bold fs-20 text-fixed-white text-shadow mb-0">113</p>
                                                <p class="mb-0 fs-11 op-5 text-fixed-white">Projects</p>
                                            </div>
                                            <div class="me-4">
                                                <p class="fw-bold fs-20 text-fixed-white text-shadow mb-0">12.2k</p>
                                                <p class="mb-0 fs-11 op-5 text-fixed-white">Followers</p>
                                            </div>
                                            <div class="me-4">
                                                <p class="fw-bold fs-20 text-fixed-white text-shadow mb-0">128</p>
                                                <p class="mb-0 fs-11 op-5 text-fixed-white">Following</p>
                                            </div>
                                        </div> -->
                                    </div>

                                </div>
                                <!-- <div class="p-4 border-bottom border-block-end-dashed">
                                    <div class="mb-4">
                                        <p class="fs-15 mb-2 fw-semibold">Professional Bio :</p>
                                        <p class="fs-12 text-muted op-7 mb-0"><?php  ?> </p>
                                    </div>
                                </div> -->
                                <div class="p-4 border-bottom border-block-end-dashed">
                                    <p class="fs-15 mb-2 me-4 fw-semibold">Contact Information :</p>
                                    <div class="text-muted">
                                        <p class="mb-2"> <span class="avatar avatar-sm avatar-rounded me-2 bg-light text-muted"> <i class="ri-mail-line align-middle fs-14"></i> </span> <?php echo $userDetails['email'] ?> </p> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-8 col-xl-12">
                        <div class="row">
                            <div class="col-xl-8 col-xl-"> 
                                <div class="card custom-card">
                                    <div class="card-header">
                                        <div class="card-title"> Personal Info </div>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <div class="d-flex flex-wrap align-items-center">
                                                    <div class="me-2 fw-semibold"> Name : </div> <span class="fs-12 text-muted"><?php echo $userDetails['name'] ?></span>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="d-flex flex-wrap align-items-center">
                                                    <div class="me-2 fw-semibold"> Email : </div> <span class="fs-12 text-muted"><?php echo $userDetails['email'] ?></span>
                                                </div>
                                            </li> 
                                            <li class="list-group-item">
                                                <div class="d-flex flex-wrap align-items-center">
                                                    <div class="me-2 fw-semibold"> Country : </div> <span class="fs-12 text-muted"><?php echo $userDetails['country'] ?></span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-xl-6">
                        <div class="card custom-card">
                            <div class="card-header justify-content-between">
                                <div class="card-title"> Edit Your Details </div>
                            </div>
                            <form action="./controllers/updateDetails.php" method="POST" class="card-body">
                                <div class="mb-3">
                                    <label for="form-text" class="form-label fs-14 text-dark">Name</label>
                                    <input type="text" class="form-control" name="name" value="<?php  ?>" id="form-text" placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="form-password" class="form-label fs-14 text-dark">Bio</label>
                                    <input type="text" class="form-control" name="bio" value="<?php  ?>" id="form-password" placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="form-password" class="form-label fs-14 text-dark">Country</label>
                                    <input type="text" class="form-control" name="country" value="<?php ?>" id="form-password" placeholder="">
                                </div>
                                <div class="mb-3">
                                    <label for="form-password" class="form-label fs-14 text-dark">Mobile Number</label>
                                    <input type="text" class="form-control" name="mobile" value="<?php ?>" id="form-password" placeholder="">
                                </div>
                                <button class="btn btn-primary" type="submit" name="update_user">SUBMIT TO UPDATE ACCOUNT DETAIL</button>
                            </form>
                        </div>
                    </div> -->


                    <div class="row">
                        <div class="col-xl-12">
                            <div class="row">
                                <div class="col-xl-12">
                                    <form action="./controllers/saveprofilePicture.php" method="POST" enctype="multipart/form-data" class="card custom-card p-2">
                                        <div class="card-header">
                                            <div class="card-title">Update Account profile picture </div>
                                        </div>
                                        <div class="mb-3">
                                            <input class="form-control" type="file" name="image" accept="image/png,image/jpeg,image/gif">
                                        </div>
                                        <button class="btn btn-primary" type="submit" name="save_profile">UPLOAD PROFILE</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End::row-1 -->
                <!-- Start:: row-2 -->
                <div class="row" style="display: none;">
                    <div class="col-xl-12">
                        <div class="card custom-card">
                            <div class="card-header">
                                <div class="card-title"> Dropzone </div>
                            </div>
                            <div class="card-body">
                                <form data-single="true" method="post" action="https://httpbin.org/post" class="dropzone"></form>
                            </div>
                        </div>
                    </div>
                </div> <!-- End:: row-2 -->
            </div>
        </div>
        <?php include('./includes/popin_with.php') ?>
        <!-- <div class="scrollToTop">
            <span class="arrow"><i class="ri-arrow-up-s-fill fs-20"></i></span>
        </div> -->
        <div id="responsive-overlay"></div>
        <!-- Popper JS -->
        <script src="./assets/libs/@popperjs/core/umd/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="./assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Defaultmenu JS -->
        <script src="./assets/js/defaultmenu.min.js"></script>
        <!-- Node Waves JS-->
        <script src="./assets/libs/node-waves/waves.min.js"></script>
        <!-- Sticky JS -->
        <script src="./assets/js/sticky.js"></script>
        <!-- Simplebar JS -->
        <script src="./assets/libs/simplebar/simplebar.min.js"></script>
        <script src="./assets/js/simplebar.js"></script>
        <!-- Color Picker JS -->
        <script src="./assets/libs/@simonwep/pickr/pickr.es5.min.js"></script>
        <!-- Apex Charts JS -->
        <script src="./assets/libs/apexcharts/apexcharts.min.js"></script>
        <!-- Crypto-Dashboard JS -->
        <script src="./assets/js/crypto-dashboard.js"></script>
        <!-- Custom-Switcher JS -->
        <script src="./assets/js/custom-switcher.min.js"></script>
        <!-- Custom JS -->
        <script src="./assets/js/custom.js"></script>
</body>

</html>