<?php
session_start();
ini_set('display_errors', 1); // Przenieść errory do jakiegoś loggera na końcu roboty
error_reporting(E_ALL);

require __DIR__ . '/vendor/autoload.php';

$loader = new \Twig\Loader\FilesystemLoader('html');
$twig = new \Twig\Environment($loader);

/*echo $twig->render('index.html.twig', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]); */

$allowed_pages = ['main', 'announcements', 'donate', 'login', 'register', 'reservations'];
$protected_pages = ['admin', 'admin_announcements', 'admin_reservations', 'add_article', 'add_reservation', 'edit_article'];

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
}