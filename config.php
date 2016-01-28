<?php  
	if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	/** production true is for live, false for local editing **/
	/** Configuration Modified by Jesther Bas 12/16/2015 **/
	$production = true;
	if ($_SERVER['HTTP_HOST']=='localhost' || $_SERVER['HTTP_HOST']=='10.10.1.2' || $_SERVER['HTTP_HOST']=='10.10.1.17' || $_SERVER['HTTP_HOST']=='flawless.local' || $_SERVER['HTTP_HOST']=='local.flawless.com') $production = false;
	
	ob_start( 'ob_gzhandler' );
	define('_DEBUG_MODE_',TRUE);
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
		// This is for the Viiworks Office Local projects
		if($_SERVER['HTTP_HOST']=='10.10.1.17' || $_SERVER['HTTP_HOST']=='localhost'){
			define('_BASE_URL_', 'http://'.$_SERVER['HTTP_HOST'].'/flawless/');
			define('_DB_HOST_','beta');
			define('_DB_USERNAME_','root');
			define('_DB_PASSWORD_','');
			define('_DB_DATABASE_','flawless_db');
		}
		else if($_SERVER['HTTP_HOST']=='10.10.1.2'){
			define('_BASE_URL_', 'http://'.$_SERVER['HTTP_HOST'].'/flawless_git/');
			define('_DB_HOST_','beta');
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
	
			define('_BASE_URL_','http://'.$_SERVER['HTTP_HOST'].'/');
			define('_DB_HOST_','localhost');
			define('_DB_USERNAME_','viidemo_flawless');
			define('_DB_PASSWORD_','JdhEWaX=0@18');
			define('_DB_DATABASE_','viidemo_flawless_db');
	
	define('_ADMIN_BASE_','administrator');
	define('_SKIN_PATH_',FCPATH.'skin/');
	define('_CACHE_FOLDER_',APPPATH.'cache/');
	define('_UPLOAD_URL_',FCPATH.'upload/products/');
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
