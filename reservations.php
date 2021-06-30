<?php

if (isset($_POST['chosenDate'])) {
    $date = $_POST['chosenDate'];
    $stmt = $dbh->prepare("SELECT * FROM masses WHERE date = :date");
    $stmt->execute([':date' => $date]);
    $all_hours = "";
    $all_dates = array();
    while ($masses = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $actual_data = array();
        array_push($actual_data, $masses['id'], $masses['date'], $masses['hour'], $masses['author']);
        $all_hours = $all_hours . " " . substr($masses['hour'], 0, 5);
        array_push($all_dates, $masses['date']);
    }
    echo print_r($all_hours);
    exit;
}

if (isset($_POST['actualDate']) && isset($_POST['actualTime'])) {
    $date = $_POST['actualDate'];
    $hour = $_POST['actualTime'];
    $stmt = $dbh->prepare("SELECT * FROM masses WHERE date = :date AND hour = :hour");
    $stmt->execute([':date' => $date, ':hour' => $hour]);
    $picked_mass = $stmt->fetch(PDO::FETCH_ASSOC);
    $id = $picked_mass['id'];
    echo print_r($id);
    exit;
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    echo"<script> console.log($id) </script>";
}

echo $twig->render('reservations.html.twig', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET]);

