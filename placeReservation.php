<?php

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $stmt = $dbh->prepare("SELECT * FROM masses WHERE id = :id");
    $stmt->execute([':id' => $id]);
    $picked_mass = $stmt->fetch(PDO::FETCH_ASSOC);
    $date = $picked_mass['date'];
    $hour = $picked_mass['hour'];
    $author = $picked_mass['author'];
}

echo $twig->render('placeReservation.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
    'date' => $date,
    'hour' => $hour,
    'author' => $author,]);
