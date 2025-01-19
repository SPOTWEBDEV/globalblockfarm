<?php

define("HOST","localhost");
define("USER","ocjrgyjg_jay");
define("PASSWORD","ocjrgyjg_jay");
define("DATABASE","ocjrgyjg_jay");

$db_con = mysqli_connect(HOST, USER, PASSWORD, DATABASE);
$sitename = "Raven Asset Limited";
$siteemail = "support@ravenassetlimited.com";
// $domain = "http://localhost/investment-website/investment_jay/";
$domain = "https://ravenassetlimited.com";

session_start();

error_reporting(E_ALL); // Report all PHP errors
ini_set('display_errors', 1); // Display errors on the screen
?>
