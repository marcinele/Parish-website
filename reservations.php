<?php

echo $twig->render('reservations.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);
