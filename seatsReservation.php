<?php

$counter = 0;
$actual_link = '';

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

// FINAL POSTS
if (isset($_POST['finalPostTaken'])) {
    $counter = 1;
    $all_data = $_POST['finalPostTaken'];
    foreach($all_data as $item){
        $taken_column = $item[0];
        $taken_x = $item[1];
        $taken_y = $item[2];
        $user = $_SESSION['username'];

        $stmt = $dbh->prepare("INSERT INTO taken_places (id, taken_column, taken_x, taken_y, user)
                                         VALUES (:id, :taken_column, :taken_x, :taken_y, :user)");
        $stmt->execute([':id' => $id, ':taken_column' => $taken_column, ':taken_x' => $taken_x,
            ':taken_y' => $taken_y, ':user' => $user]);
    }
}

if (isset($_POST['finalPostForbidden'])) {
    $counter = 1;
    $all_data = $_POST['finalPostForbidden'];
    foreach ($all_data as $item) {
        $taken_column = $item[0];
        $taken_x = $item[1];
        $taken_y = $item[2];
        $user = $_SESSION['username'];

        $stmt = $dbh->prepare("INSERT INTO forbidden_places (id, taken_column, taken_x, taken_y)
                                         VALUES (:id, :taken_column, :taken_x, :taken_y)");
        $stmt->execute([':id' => $id, ':taken_column' => $taken_column, ':taken_x' => $taken_x,
            ':taken_y' => $taken_y]);
    }
}

if (isset($_POST['firstPostTakenPlaces'])) {
    $actual_link = $_POST['firstPostTakenPlaces'];
    $counter = 1;
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
    $counter = 1;
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

if($counter == 0) {
    echo $twig->render('seatsReservation.html.twig', [
        'post' => $_POST,
        'session' => $_SESSION,
        'get' => $_GET,
        'date' => $date,
        'hour' => $hour,
        'author' => $author,
        'link' => $actual_link]);
}