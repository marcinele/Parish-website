<?php

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $stmt = $dbh->prepare("SELECT * FROM masses WHERE id = :id");
    $stmt->execute([':id' => $id]);
    $picked_mass = $stmt->fetch(PDO::FETCH_ASSOC);
    $date = $picked_mass['date'];
    $hour = $picked_mass['hour'];
    $hour = substr($hour, 0, -3);
    $author = $picked_mass['author'];
    /*//Tablica na miejsca, które są zajęte
    $stmt = $dbh->prepare("SELECT * FROM taken_places WHERE id = :id");
    $stmt->execute([':id' => $id]);
    $taken_seats = $stmt->fetch(PDO::FETCH_ASSOC);*/
}

if (isset($_POST['firstPostTakenPlaces'])) {
    $stmt = $dbh->prepare("SELECT * FROM taken_places WHERE id = :id");
    $stmt->execute([':id' => $id]);
    $taken_places = array();
    while ($places = $stmt->fetch(PDO::FETCH_ASSOC)){
        $actual = array();
        array_push($actual, $places['taken_Column'], $places['taken_x'], $places['taken_y']);
        array_push($taken_places, $actual);
    }
    echo JSON_encode($taken_places);
    exit;
}

if (isset($_POST['firstPostForbiddenPlaces'])) {
    $stmt = $dbh->prepare("SELECT * FROM forbidden_places WHERE id = :id");
    $stmt->execute([':id' => $id]);
    $forbidden_places = array();
    while ($places = $stmt->fetch(PDO::FETCH_ASSOC)){
        $actual = array();
        array_push($actual, $places['taken_Column'], $places['taken_x'], $places['taken_y']);
        array_push($forbidden_places, $actual);
    }
    echo JSON_encode($forbidden_places);
    exit;
}

echo $twig->render('placeReservation.html.twig', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
    'date' => $date,
    'hour' => $hour,
    'author' => $author,
    /*'taken_seats' => $taken_seats*/]);
