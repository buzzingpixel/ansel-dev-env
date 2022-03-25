<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$projDir = dirname(__DIR__, 4);

require_once $projDir . '/vendor/autoload.php';

require_once $projDir . '/dumper.php';

$config['site_license_key'] = '';
// ExpressionEngine Config Items
// Find more configs and overrides at
// https://docs.expressionengine.com/latest/general/system-configuration-overrides.html

$config['app_version'] = '6.1.6';
$config['encryption_key'] = '2372db8ab84dff9c4f63f5d06908947a678e4dff';
$config['session_crypt_key'] = 'be41b9fc80c5a8013b6eee4f526a7868188f5987';
$config['database'] = array(
	'expressionengine' => array(
		'hostname' => 'ansel-dev-env-db',
		'database' => 'anselee',
		'username' => 'anselee',
		'password' => 'secret',
		'dbprefix' => 'exp_',
		'char_set' => 'utf8mb4',
		'dbcollat' => 'utf8mb4_unicode_ci',
		'port'     => ''
	),
);
$config['show_ee_news'] = 'y';
$config['share_analytics'] = 'y';

$config['base_url'] = 'http://' . $_SERVER['HTTP_HOST'] . '/';
$config['base_path'] = dirname(__DIR__, 3) . '/';

// EOF
