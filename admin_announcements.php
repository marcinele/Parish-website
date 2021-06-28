<?php

$stmt = $dbh->prepare("SELECT * FROM announcements ORDER BY announcement_id DESC");
            $stmt->execute();

$rows = [];
while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    array_push($rows, $row);
}




echo $twig->render('admin_announcements.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
    'rows' => $rows]);