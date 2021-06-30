<?php

echo $twig->render('login.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);

if (isset($_POST['loginSubmit'])) {
    $stmt = $dbh->prepare("SELECT * FROM users WHERE email = :email");
    $stmt->execute([':email' => $_POST['loginEmail']]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($user) {
        if (password_verify($_POST['password'], $user['password'])) {
            $_SESSION['id'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['permissions'] = $user['permissions'];
            echo "<script> window.location.href = '/main' </script>";
        } else {
            echo "<script> alert('Podano niepoprawne hasło.') </script>";
        }
    } else {
        echo "<script> alert('Podany email jest niepoprawny.') </script>";
    }
}

