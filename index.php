<?php
session_start();
ini_set('display_errors', 1); // Przenieść errory do jakiegoś loggera na końcu roboty
error_reporting(E_ALL);

require __DIR__ . '/vendor/autoload.php';

$loader = new \Twig\Loader\FilesystemLoader('html');
$twig = new \Twig\Environment($loader);


echo $twig->render('index.html.twig', ['post' => $_POST, 'session' => $_SESSION, 'get' => $_GET]);

if (isset($_SESSION['id']) && isset($_SESSION['email'])) {
    echo "<script> alert('CHUJ MI W DUPĘ UŻYTKOWNIK ZALOGOWANY DO KURWY') </script>";
}
else{
    echo "<script> alert('NIE DZIAŁA') </script>";
}
