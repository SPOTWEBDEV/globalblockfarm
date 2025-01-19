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


$request = checkUrlProtocol($url);

define("HOST", "localhost");

if ($request == 'https') {
         $domain = "https://globalblockfarm.com/";
         define("USER", "ocjrgyjg_jay");
         define("PASSWORD", "ocjrgyjg_jay");
         define("DATABASE", "ocjrgyjg_jay");
} 


if($parsedUrl['scheme'] == 'http') {
         $domain = "http://localhost/investment-website/investment_jay/";
         define("USER", "");
         define("PASSWORD", "");
         define("DATABASE", "crypto");
         
}




$connection  = mysqli_connect(HOST, USER, PASSWORD, DATABASE);
$sitename = "Global Block Farm";
$siteemail = "support@ravenassetlimited.com";




session_start();

error_reporting(E_ALL);
ini_set('display_errors', 1);

?>