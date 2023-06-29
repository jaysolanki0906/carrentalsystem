<?php

defined('BASEPATH') OR exit('No direct script access allowed'); 

$CI =& get_instance();
$CI->load->database();

$config['googleplus']['application_name'] = 'Car Rental System';
$config['googleplus']['client_id']        = '12052285982-g5d299fj69hencje75i5p3pj2bc8ppde.apps.googleusercontent.com';
$config['googleplus']['client_secret']    = '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';
$config['googleplus']['redirect_uri']     = 'http://localhost:8012/car_rental_system/en/Googlelogin/';
$config['googleplus']['api_key']          = 'AIzaSyD5ZjgQ3teXdjqoqItIHOeCcKRpGnHEJls';//'dovbs2-189812';
$config['googleplus']['scopes']           = array();

