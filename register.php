<?php

include("config.inc.php");

use ReCaptcha\ReCaptcha;

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

$isBot = True;

if (isset($_POST['registerSubmit']) && $isBot == False) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $repeated_password = $_POST['repeated_password'];
    if ($password == $repeated_password) {
        $password_hash = password_hash($password, PASSWORD_DEFAULT);
    }
    else{
        $password_hash = 'popraw hasło pajacu';
    }
    header("Location: https://s103.labagh.pl/?page=register");
    if (preg_match('/^[\w]+@([\w-]+\.)+[\w-]{2,4}$/D', $email)) {
        try {
            // UWAGA, TO WYPISYWANIE NIE DZIAŁA, TRZEBA NAPRAWIĆ, OGÓLNIE TO PRZECHODZENIE MIĘDZY PHP I HTML TO JAKAŚ PAŁĄ
            $stmt = $dbh->prepare("INSERT INTO users (id, username, email, password, created)
                                         VALUES (null, :username, :email, :password, NOW())");
            $stmt->execute([':username' => $username, ':email' => $email, ':password' => $password_hash]);
            print '<span style="color: green;">Konto zostało założone.</span>';
        } catch (PDOException $e) {
            print '<span style="color: red;">Podany adres email jest już zajęty.</span>';
        }
    } else {
        print '<p style="font-weight: bold; color: red;"> Niepoprawny email.</p>';
    }
}

if (isset($_POST['g-recaptcha-response'])) {
    $captcha = $_POST['g-recaptcha-response'];
    $secretKey = $config['recaptcha_private'];
    $ip = $_SERVER['REMOTE_ADDR'];
    $url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($secretKey) . '&response=' . urlencode($captcha);
    $response = file_get_contents($url);
    $responseKeys = json_decode($response, true);
    if ($responseKeys["success"]) {
        $isBot = False;
    } else {
        $isBot = True;
    }
}
$public_key = $config['recaptcha_public'];