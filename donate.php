<?php

echo $twig->render('donate.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);
