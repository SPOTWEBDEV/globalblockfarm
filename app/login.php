<?php include('../server/connection.php');








?>
<!DOCTYPE html><!-- saved from url=(0014)about:internet -->
<html lang="en" dir="ltr" data-nav-layout="vertical" data-vertical-style="overlay" data-theme-mode="light" data-header-styles="light" data-menu-styles="light" data-toggled="close">

<head><!-- Meta Data -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <link rel="icon" href="./assets/images/brand-logos/favicon.ico" type="image/x-icon"> <!-- Main Theme Js -->
    <script src="./assets/js/authentication-main.js"></script> <!-- Bootstrap Css -->
    <link id="style" href="./assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet"> <!-- Style Css -->
    <link href="./assets/css/styles.min.css" rel="stylesheet"> <!-- Icons Css -->
    <link href="./assets/css/icons.min.css" rel="stylesheet">
    <script src="./assets/js/main.js"></script>
    <script src="./controllers/sweetalert2.all.min.js"></script>

</head>

<body>
    <?php
    
    
    if (isset($_POST['authUser'])) {
        $email = mysqli_real_escape_string($connection, $_POST['email']);
        $pass = mysqli_real_escape_string($connection, $_POST['pass']);

        if (!empty($email) && !empty($pass)) {

            $query = mysqli_query($connection, "SELECT * FROM `users` WHERE  `email` = '$email' AND `password` = '$pass'");
            if (mysqli_num_rows($query) > 0) {
                $getDetails = mysqli_fetch_assoc($query);
                
                
                if($getDetails['restriction'] == 'no'){
                    $_SESSION['logged_in'] = 'true';
                $_SESSION['id'] = $getDetails['id'];
                $url = $domain .'app/index.php';
                
                echo "<script> Swal.fire('Authenticated','Account Login Successfull' ,'success')</script>";
                echo "<script>setTimeout( ()=> { window.open('$url','_self')}, 1000)</script>";
                // echo "<script>Swal.fire('Warning','Your account has been restricted, possibly due to suspicious activity. Please contact support for assistance.','warning')</script>";
                }else{
                    echo "<script>Swal.fire('Warning','Your account has been restricted, possibly due to suspicious activity. Please contact support for assistance.','warning')</script>";
                }
                
                
                 
            } else {
                $url = $domain .'profile/login.php';
                echo "<script>Swal.fire('Warning','Login Error','warning')</script>"; 
               
            }
        } else {
          
            echo "<script>Swal.fire('Warning','You have an input error','warning')</script>";
            // echo "<script> setTimeout(()=> { window.location.href = '../../profile/login.php'},1000) </script>";
        }
    }
    
    
    ?>
    <!-- NAH HERE WEY SIGN UP DEY OOO NO FORGET -->
    <div class="container">
        <div class="row justify-content-center align-items-center authentication authentication-basic h-100">
            <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-6 col-sm-8 col-12">
                <div class="my-5 d-flex justify-content-center">
                    <a href="../index.php">
                        
                        <!-- <img style="height:100px" src="<?php echo $domain ?>/assets/RALblack.png" alt="logo" class="desktop-logo"> -->
                        <!-- <img src="./assets/images/brand-logos/Aximtrade Pro logo b.png" alt="logo" class="desktop-dark">  -->
                   
                        <!-- <img src="../content/dam/onexp/global/icons/Coke-company-logo-black.svg" alt="logo" class="desktop-logo">
                        <img src="../content/dam/onexp/global/icons/Coke-company-logo-black.svg" alt="logo" class="desktop-dark"> -->
                    </a>
                </div>
                <div class="card custom-card">
                    <form  method="POST" class="card-body p-5">
                        <p class="h5 fw-semibold mb-2 text-center">Welcome Back</p>
                        <p class="mb-4 text-muted op-7 fw-normal text-center">Sign In</p>
                        <div class="row gy-3">
                            <div class="col-xl-12">
                                <label for="signin-username" class="form-label text-default">Eamil Address</label>
                                <input type="text" name="email" class="form-control form-control-lg" id="signin-username" placeholder="john@gmail.com">
                            </div>
                            <div class="col-xl-12 mb-2">
                                <label for="signin-password" class="form-label text-default d-block">Password<a href="reset-password-basic.html" class="float-end text-danger">Forget password ?</a></label>
                                <div class="input-group">
                                    <input type="password" name="pass" class="form-control form-control-lg" id="signin-password" placeholder="password"> <button class="btn btn-light" type="button" onclick="createpassword('signin-password',this)" id="button-addon2"><i class="ri-eye-off-line align-middle"></i></button>
                                </div>
                                <div class="mt-2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck1"> <label class="form-check-label text-muted fw-normal" for="defaultCheck1"> Remember password ? </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-12 d-grid mt-2">
                                <button class="btn btn-lg btn-primary" name="authUser">SIGN IN</button>
                            </div>
                        </div>
                        <div class="text-center my-3 authentication-barrier"> <span>OR</span> </div>
                        <div class="text-center">
                            <p class="fs-12 text-muted mt-3">Dont have an account? <a href="register.php" class="text-primary">Sign Up</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Custom-Switcher JS -->
    <script src="./assets/js/custom-switcher.min.js"></script> <!-- Bootstrap JS -->
    <script src="./assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script> <!-- Show Password JS -->
    <script src="./assets/js/show-password.js"></script>
</body>

</html>