<?php
$dir = dirname(__FILE__);
if (isset($_COOKIE['VERSION'])) {
	        define('VERSION', '/'.trim($_COOKIE['VERSION']));
} else {
	        define('VERSION', '/'.trim(file_get_contents($dir.'/version.txt')));
}
require_once($dir.'/version'.VERSION.'/public/index.php');
