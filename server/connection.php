<?php
function checkUrlProtocol($url)
{
    // Parse the URL to get the scheme
    $parsedUrl = parse_url($url);

    // Check if the scheme exists and if it's http or https
    if (isset($parsedUrl['scheme'])) {
        return $parsedUrl['scheme'];
    } else {
        return 'invalid'; // Invalid URL if no scheme is found
    }
}

// Automatically get the current URL
$currentUrl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") 
              . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];

// Get the protocol from the current URL
$request = checkUrlProtocol($currentUrl);

// Default configurations
define("HOST", "localhost");


// Set configurations based on protocol
if ($request == 'https') {
    $domain = "https://globalblockfarm.com/";
    define("USER", "ocjrgyjg_jay");
    define("PASSWORD", "ocjrgyjg_jay");
    define("DATABASE", "ocjrgyjg_jay");
} elseif ($request == 'http') {
    $domain = "http://localhost/investment-website/investment_jay/";
    define("USER", "root");
    define("PASSWORD", "");
    define("DATABASE", "jay");
}

// Database connection
$connection = mysqli_connect(HOST, USER, PASSWORD, DATABASE);

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Site configurations
$sitename = "Global Block Farm";
$siteemail = "support@ravenassetlimited.com";

// Start session and enable error reporting

error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();
?>
