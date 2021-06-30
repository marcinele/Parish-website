<?php

echo $twig->render('main_admin.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);