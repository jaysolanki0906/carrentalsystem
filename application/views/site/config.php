<?php

//config.php

//Include Google Client Library for PHP autoload file
require_once 'vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('12052285982-g5d299fj69hencje75i5p3pj2bc8ppde.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('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');

//Set the OAuth 2.0 Redirect URI
$google_client->setRedirectUri('http://localhost:8012/login.php');

//
$google_client->addScope('email');

$google_client->addScope('profile');

//start session on web page
session_start();

?>