<?php  
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	/** production true is for live, false for local editing **/
	/** Configuration Modified by Jesther Bas 12/16/2015 **/
	
	/** IP BLOCK FOR LOCAL DEVELOPERS **/
	$ip_local = array(
		"localhost", "10.10.1.2", "10.10.1.12", "10.10.1.17", "10.10.1.5", "192.168.1.106", "127.0.0.1", "10.10.1.231", "10.10.1.4"
	);
	
	$production = true;
	if( in_array($_SERVER['HTTP_HOST'], $ip_local) ) $production = false;
	
	// define('_DEBUG_MODE_',TRUE);
	if ($production) {
		// Do modification on database on this part
		if ( $_SERVER['HTTP_HOST']=='69.175.35.82' ) {
			// Direct Server IP open Configuration
			define('_BASE_URL_','http://'.$_SERVER['HTTP_HOST'].'/~flawless/');
			define('_DB_HOST_','localhost');
			define('_DB_USERNAME_','');
			define('_DB_PASSWORD_','');
			define('_DB_DATABASE_','');
		}
		else if ( $_SERVER['HTTP_HOST']=='flawless.viiworksdemo.com' ){
			// Staging Configuration
			define('_BASE_URL_','http://'.$_SERVER['HTTP_HOST'].'/');
			define('_DB_HOST_','localhost');
			define('_DB_USERNAME_','viidemo_flawless');
			define('_DB_PASSWORD_','JdhEWaX=0@18');
			define('_DB_DATABASE_','viidemo_flawless_db');
		}
		else {
			// Change this to Live Configuration
			define('_BASE_URL_','http://'.$_SERVER['HTTP_HOST'].'/');
			define('_DB_HOST_','localhost');
			define('_DB_USERNAME_','');
			define('_DB_PASSWORD_','');
			define('_DB_DATABASE_','');
		}
	}
	else {
		// Getting the URL Segments
		$_SERVER['REQUEST_URI_PATH'] = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
		$segments = explode('/', $_SERVER['REQUEST_URI_PATH']);
		
		// This is for the Viiworks Office Local projects
		if( in_array($_SERVER['HTTP_HOST'], $ip_local) ){
			define('_DB_HOST_', ($_SERVER['HTTP_HOST'] == 'localhost' ? 'localhost' : '10.10.1.4'));
			define('_BASE_URL_', 'http://'.$_SERVER['HTTP_HOST'].'/'.$segments[1].'/');
			define('_DB_USERNAME_','root');
			define('_DB_PASSWORD_','');
			define('_DB_DATABASE_','flawless_db');
		}
		else {
			define('_BASE_URL_', 'http://'.$_SERVER['HTTP_HOST'].'/');
			define('_DB_HOST_','localhost');
			define('_DB_USERNAME_','root');
			define('_DB_PASSWORD_','');
			define('_DB_DATABASE_','flawless_db');
		}
	}
	
	define('_ADMIN_BASE_','administrator');
	define('_SKIN_PATH_',FCPATH.'skin/');
	define('_CACHE_FOLDER_',APPPATH.'cache/');
	define('_UPLOAD_URL_',FCPATH.'upload/products/');
	define('_PDF_LOCATION_', 'upload/pdf/');
	define('_UPLOAD_LOGO_URL_',FCPATH.'upload/merchant/');
	define('_COLUMN_IDENTIFIER_','clmn_');
	define('_WHERE_IDENTIFIER_','whr_');
	define('_ADMIN_THEME_','aceadmin');
	define('_DB_PREFIX_','vii_');
	define('_PRODUCTION_', TRUE);
	define('_URI_PROTOCOL_','REQUEST_URI');
	define('_ENABLE_QUERY_STRING_',FALSE);
	define('_ACTIVE_DB_','live');
	define('_THEME_','vii_flawless');
	
?>
