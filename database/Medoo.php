<?php

require_once '../vendor/autoload.php';

use Medoo\Medoo;

$medoo_db = new Medoo([
    'type'      => 'mysql',
    'host'      => 'localhost',
    'database'  => 'deped',
    'username'  => 'root',
    'password'  => '',
]);
