<?php

use ReCaptcha\ReCaptcha;

$isBot = True;
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

$info ='';
if (isset($_POST['registerSubmit']) && $isBot == False) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $repeated_password = $_POST['repeated_password'];
    $password_hash = password_hash($password, PASSWORD_DEFAULT);
    if (preg_match('/^[\w]+@([\w-]+\.)+[\w-]{2,4}$/D', $email)) {
        try {
            $stmt = $dbh->prepare("INSERT INTO users (id, username, email, password, created)
                                         VALUES (null, :username, :email, :password, NOW())");
            $stmt->execute([':username' => $username, ':email' => $email, ':password' => $password_hash]);
            $info = 'Successfully registered! ';
        } catch (PDOException $e) {
            $info = 'Email address is already taken!';
        }
    } else {
        $info = 'Incorrect email address!';
    }
}

$public_key = $config['recaptcha_public'];

echo $twig->render('register.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
    'info' => $info]);