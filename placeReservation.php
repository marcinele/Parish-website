<?php

echo $twig->render('placeReservation.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);
