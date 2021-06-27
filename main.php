<?php

echo $twig->render('main.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);
