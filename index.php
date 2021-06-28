<?php
session_start();
ini_set('display_errors', 1); // Przenieść errory do jakiegoś loggera na końcu roboty
error_reporting(E_ALL);
require __DIR__ . '/vendor/autoload.php';

$loader = new \Twig\Loader\FilesystemLoader('html');
$twig = new \Twig\Environment($loader);


$allowed_pages = ['main', 'announcements', 'donate', 'login', 'register', 'reservations'];
$protected_pages = ['admin', 'admin_announcements', 'admin_reservations', 'add_article', 'add_reservation', 'edit_article'];


include("config.inc.php");

if (isset($config) && is_array($config)) {

    try {
        $dbh = new PDO('mysql:host=' . $config['db_host'] . ';dbname=' . $config['db_name'] . ';charset=utf8mb4', $config['db_user'], $config['db_password']);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        print "Nie mozna polaczyc sie z baza danych: " . $e->getMessage();
        exit();
    }

} else {
    exit("Nie znaleziono konfiguracji bazy danych.");
}



if( isset($_GET['page']) && in_array($_GET['page'], $allowed_pages) ){
    $page = $_GET['page'];
    if(file_exists($page . '.php')){
        include($page . '.php');
    } else {
        print 'Dany plik nie istnieje!';
    }

} else if(isset($_GET['page']) && in_array($_GET['page'], $protected_pages)){
    $page = $_GET['page'];
    if(file_exists($page . '.php')){
        include($page . '.php');
    } else {
        print 'Dany plik nie istnieje!';
    }
} else{
    include('main.php');
} if (isset($_POST['logoutSubmit'])) {
    unset($_SESSION['id']);
    unset($_SESSION['email']);
    echo "<script> window.location.href = '/main' </script>";
}