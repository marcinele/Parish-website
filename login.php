<?php

if (isset($_POST['loginEmail']) && isset($_POST['password'])) {
    $output = 0;
    $stmt = $dbh->prepare("SELECT * FROM users WHERE email = :email");
    $stmt->execute([':email' => $_POST['loginEmail']]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($user) {
        if (password_verify($_POST['password'], $user['password'])) {
            $_SESSION['id'] = $user['id'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['permissions'] = $user['permissions'];
            $output = 1;
        } else {
            $output = 2;
        }
    } else {
        $output = 3;
    }
    echo $output;
    exit;
}

echo $twig->render('login.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);