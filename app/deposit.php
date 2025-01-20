<?php
session_start();
include('../server/connection.php');
include('controllers/authFy.php');
// PREPARE USERS DETAILS;
include('controllers/userDetails.php');

//  FOR INVESTMENT MATURITY
include('controllers/invMTR_CTR.php');
// Log out the mother force;
include('controllers/logOut.php');

// include('controllers/investCTR.php');


$sql1 = mysqli_query($connection,"SELECT * FROM payment_method where network = 'Bitcoin'");

 $bitcoin_wallet = mysqli_fetch_array($sql1);

 $sql2 = mysqli_query($connection,"SELECT * FROM payment_method where network = 'Etheruem'");

 $etheruem_wallet = mysqli_fetch_array($sql2);

 $sql3 = mysqli_query($connection,"SELECT * FROM payment_method where network = 'BNB'");

 $BNB_wallet = mysqli_fetch_array($sql3);

 $sql4 = mysqli_query($connection,"SELECT * FROM payment_method where network = 'USDT(trc20)'");

 $usdt_trc20_wallet = mysqli_fetch_array($sql4);

 $sql5 = mysqli_query($connection,"SELECT * FROM payment_method where network = 'Dogecoin'");

 $usdt_erc20_wallet = mysqli_fetch_array($sql5);

 
 


?>

<!DOCTYPE html>
<!-- saved from url=(0014)about:internet -->
<html lang="en" dir="ltr" data-nav-layout="vertical" data-theme-mode="light" data-header-styles="light" data-menu-styles="dark" data-toggled="close">

<head>
    <!-- Meta Data -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Deposit</title>
    <meta name="Description" content="Bootstrap Responsive Admin Web Dashboard HTML5 Template" />
    <meta name="Author" content="Spruko Technologies Private Limited" />
    <meta name="keywords" content="admin,admin dashboard,admin panel,admin template,bootstrap,clean,dashboard,flat,jquery,modern,responsive,premium admin templates,responsive admin,ui,ui kit." />
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

    <script src="./jquery-3.6.0.min.js"></script>
    <script src="./sweetalert2.all.min.js"></script>
</head>

<body>
    <!-- Start Switcher -->
    <?php include('./includes/switcher.php') ?>
    <!-- End Switcher -->
    <div class="page">
        <!-- app-header -->
        <?php include('./includes/header.php') ?>
        <!-- /app-header -->
        <!-- Start::app-sidebar -->
        <?php include('./includes/sidebar.php') ?>
        
        <!-- End::app-sidebar -->
        <!-- Start::app-content -->

        <div class="main-content app-content">
            <div class="container-fluid">
                <!-- Page Header -->
                <div class="d-md-flex d-block align-items-center justify-content-between my-4 page-header-breadcrumb">
                    <h1 class="page-title fw-semibold fs-18 mb-0">DEPOSIT</h1>
                    <div class="ms-md-1 ms-0">
                        <nav>
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    Deposit
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- Page Header Close -->
                <!-- Start::row-1 -->
                <form action="controllers/depoCTR.php" method="POST"  enctype="multipart/form-data" class="row">
                    <input type="hidden" name="user" value="<?php echo $id ?>">
                    <div class="col-xl-6">
                        <div class="card custom-card">
                            <div class="card-header">
                                <div class="card-title">Select Deposit Method</div>
                            </div>
                            <div class="card-body">
                                <select onchange="displayAddr(this)" name="method" class="js-example-placeholder-single js-states form-control">
                                    <option value="USDT(Trc20)" selected="">USDT(Trc20)</option>
                                    <option value="BNB" >BNB (Bep20)</option>
                                    <option value="Ethereum">Ethereum (Erc20)</option>
                                    <option value="BTC(Bitcoin)">BTC(Bitcoin)</option>
                                    <option value="Litecoin">Litecoin</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="card custom-card">
                            <div class="card-body">
                                <div class="d-flex align-items-top justify-content-between mb-4">
                                    <div class="flex-fill d-flex align-items-top">
                                        <div class="me-2">
                                            <span class="avatar avatar-md text-secondary border bg-light"><i class="ti ti-user-circle fs-18"></i></span>
                                        </div>
                                        <div class="flex-fill">
                                            <p class="fw-semibold fs-14 mb-0">Payment Address</p>
                                            <!-- <p class="mb-0 text-muted fs-12 op-7">Elitr at gubergren sit sed.</p> -->
                                        </div>
                                    </div>
                                    <div><a id="copyBtn" class="dropdown-item btn btn-primary">Copy</a>
                                        <!-- <a href="javascript:void(0);" data-bs-toggle="dropdown" class="btn btn-icon btn-sm btn-light"><i class="ti ti-dots"></i></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <button id="copyBtn" class="dropdown-item">COPY ADDRESS</button>
                                            </li>
                                        </ul> -->
                                    </div>
                                </div>
                                <label for="input-label" class="form-label">Wallet Address</label>
                                <input type="text" id="copyBoard" value="TD5MbRawgv3VfviELuAn92D9NgyKbWFwgi" class="form-control" id="input-label" placeholder="" readonly>
                            </div>
                        </div>
                        <script>
                            const copyBoard = document.querySelector('#copyBoard');
                            const copyBtn = document.querySelector('#copyBtn');

                            function displayAddr(addr) {
                                console.log(addr.value)
                                switch (addr.value) {
                                    case "BNB":
                                        copyBoard.value = '0xf2421f970Ed26c2aF52f90996c02c3FaaFBa1582'
                                        break
                                    case "Ethereum":
                                        copyBoard.value = '0xf2421f970Ed26c2aF52f90996c02c3FaaFBa1582'
                                        break
                                    case "BTC(Bitcoin)":
                                        copyBoard.value = 'bc1qx8xzpu8vwh4j2ktuyg8lacuxwf64d9haq4pqut'
                                        break
                                    case "USDT(Trc20)":
                                        copyBoard.value = 'TD5MbRawgv3VfviELuAn92D9NgyKbWFwgi'
                                        break
                                    case "Litecoin":
                                        copyBoard.value = 'ltc1qx60x8k4jgtq6a7dn3p2xcqtdaavg22mqla6n0v'
                                        break
                                    default:
                                        break
                                }
                            }

                            (function() {
                                "use strict";

                                function copyToClipboard(elem) {
                                    var target = elem;

                                    // select the content
                                    var currentFocus = document.activeElement;

                                    target.focus();
                                    target.setSelectionRange(0, target.value.length);

                                    // copy the selection
                                    var succeed;

                                    try {
                                        succeed = document.execCommand("copy");
                                        alert('Successfully copied wallet address');
                                    } catch (e) {
                                        console.warn(e);

                                        succeed = false;
                                    }

                                    // Restore original focus
                                    if (currentFocus && typeof currentFocus.focus === "function") {
                                        currentFocus.focus();
                                    }

                                    if (succeed) {
                                        // $(".copied").animate({ top: -25, opacity: 0 }, 700, function () {
                                        // $(this).css({ top: 0, opacity: 1 });
                                        // });

                                        // document.querySelector('#copyButton i').innerHTML = 'copied';
                                        setTimeout(() => {
                                            document.querySelector('#copyBtn').innerHTML = 'Copy';
                                        }, 800)
                                    }

                                    return succeed;
                                }

                                copyBtn.onclick = function() {
                                    copyToClipboard(copyBoard);
                                };
                            })();
                        </script>
                    </div>
                      
                    <div class="col-xl-6">
                        <div class="card custom-card">
                            <div class="card-header justify-content-between">
                                <div class="card-title"> Submit Payment</div>
                                <div class="prism-toggle">
                                </div>
                            </div>
                            <div  class="card-body">
                                <div class="form-floating mb-2">
                                    <input type="text" name="amount" class="form-control" id="floatingInput" placeholder="amount sent">
                                    <label for="floatingInput">Amount Sent</label>
                                </div>
                                <!--<div class="form-floating mb-3">-->
                                <!--    <input type="file" name="snapshot" class="form-control" id="floatingInput" placeholder="amount sent">-->
                                <!--    <label for="floatingInput">Upload Snapshot</label>-->
                                <!--</div>-->
                                <div class="form-floating mt-3">
                                    <button class="btn btn-secondary" name="make_depo" type="submit">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!--End::row-1 -->
            </div>
        </div>

        <?php 
            $brs = 0;
            while ($brs < 17) {
                echo '<br>';
                $brs++;
            }
        ?>









        <!-- End::app-content -->
        <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="input-group">
                            <a href="javascript:void(0);" class="input-group-text" id="Search-Grid"><i class="fe fe-search header-link-icon fs-18"></i></a>
                            <input type="search" class="form-control border-0 px-2" placeholder="Search" aria-label="Username" />
                            <a href="javascript:void(0);" class="input-group-text" id="voice-search"><i class="fe fe-mic header-link-icon"></i></a>
                            <a href="javascript:void(0);" class="btn btn-light btn-icon" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fe fe-more-vertical"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#">Separated link</a></li>
                            </ul>
                        </div>
                        <div class="mt-4">
                            <p class="font-weight-semibold text-muted mb-2">
                                Are You Looking For...
                            </p>
                            <span class="search-tags"><i class="fe fe-user me-2"></i>People<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a></span>
                            <span class="search-tags"><i class="fe fe-file-text me-2"></i>Pages<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a></span>
                            <span class="search-tags"><i class="fe fe-align-left me-2"></i>Articles<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a></span>
                            <span class="search-tags"><i class="fe fe-server me-2"></i>Tags<a href="javascript:void(0)" class="tag-addon"><i class="fe fe-x"></i></a></span>
                        </div>
                        <div class="my-4">
                            <p class="font-weight-semibold text-muted mb-2">
                                Recent Search :
                            </p>
                            <div class="p-2 border br-5 d-flex align-items-center text-muted mb-2 alert">
                                <a href="notifications.html"><span>Notifications</span></a>
                                <a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
                            </div>
                            <div class="p-2 border br-5 d-flex align-items-center text-muted mb-2 alert">
                                <a href="alerts.html"><span>Alerts</span></a>
                                <a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
                            </div>
                            <div class="p-2 border br-5 d-flex align-items-center text-muted mb-0 alert">
                                <a href="mail.html"><span>Mail</span></a>
                                <a class="ms-auto lh-1" href="javascript:void(0);" data-bs-dismiss="alert" aria-label="Close"><i class="fe fe-x text-muted"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="btn-group ms-auto">
                            <button class="btn btn-sm btn-primary-light">Search</button>
                            <button class="btn btn-sm btn-primary">Clear Recents</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
    </div>
    <div class="scrollToTop">
        <span class="arrow"><i class="ri-arrow-up-s-fill fs-20"></i></span>
    </div>
    <div id="responsive-overlay"></div>    

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