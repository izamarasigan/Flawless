<?php  if (!defined("BASEPATH")) exit("No direct script access allowed");

$route["treatment/laserrfandothers/laserhairremoval"] = "pages/index";
$route["treatment/microdermabrasion/nanopowerpeel"] = "pages/index";
$route["products/beautykits/flawlesswhiteningkit"] = "pages/index";
$route["products/beautykits"] = "pages/index";
$route["products/individualproducts"] = "pages/index";
$route["treatment/laserrfandothers"] = "pages/index";
$route["treatment/microdermabrasion"] = "pages/index";
$route[""] = "pages/index";
$route["error"] = "pages/error";
$route["faqs"] = "faqs/index";
$route["faqs/(.*)"] = "faqs/$1";

$route["news"] = "news/index";
$route["news/(.*)"] = "news/$1";

$route["contactus"] = "contactus/index";
$route["contactus/(.*)"] = "contactus/$1";

$route["testimonial"] = "testimonial/index";
$route["testimonial/(.*)"] = "testimonial/$1";

$route["products"] = "pages/index";
$route["about"] = "pages/index";
$route["flawlessbestsellers"] = "pages/index";
$route["treatment"] = "pages/index";
$route["homepagelifestyle"] = "pages/index";


?>