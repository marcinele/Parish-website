<?php

echo $twig->render('login.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);

session_start();

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

if (isset($_POST['logoutSubmit'])) {
    unset($_SESSION['id']);
    unset($_SESSION['email']);
    echo "<script> location.href='../'; </script>";
}

if (isset($_POST['loginSubmit'])) {
    $stmt = $dbh->prepare("SELECT * FROM users WHERE email = :email");
    $stmt->execute([':email' => $_POST['loginEmail']]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($user) {
        // UWAGA, TO WYPISYWANIE NIE DZIAŁA, TRZEBA NAPRAWIĆ, OGÓLNIE TO PRZECHODZENIE MIĘDZY PHP I HTML TO JAKAŚ PAŁĄ
        if (password_verify($_POST['password'], $user['password'])) {
            $_SESSION['id'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['username'] = $user['username'];
            echo "<script> alert('Poprawnie zalgowano.') </script>";

        } else {
            echo "<script> alert('Podano niepoprawne hasło.') </script>";
        }
    } else {
        echo "<script> alert('Podany email jest niepoprawny.') </script>";
    }
    echo "<script> location.href='../'; </script>";
}

