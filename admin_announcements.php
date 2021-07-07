<?php

$isDelete = false;
$delete_id = 0;
$deleted = false;
$selectStatus = false;
$temp = false;

if(isset($_GET['delete'])){
    $delete_id = $_GET['delete'];
    $isDelete = true;
}

if($isDelete){
    try{
        $stmt = $dbh->prepare("DELETE FROM announcements WHERE announcement_id = :id");
        $stmt->execute([':id' => $delete_id]);
        $deleted = true;
    } catch (PDOException $e){
        $deleted = false;
    }
}

$stmt = $dbh->prepare("SELECT * FROM announcements ORDER BY announcement_id DESC");
try{
    $stmt->execute();
    $selectStatus = true;
} catch(PDOException $e){
    $selectStatus = false;
    print($e);
}


$rows = [];
while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
    $row['title'] = htmlspecialchars($row['title'], ENT_QUOTES | ENT_HTML401, 'UTF-8');
    $row['subtitle'] = htmlspecialchars($row['subtitle'], ENT_QUOTES | ENT_HTML401, 'UTF-8');
    array_push($rows, $row);
}




echo $twig->render('admin_announcements.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
    'rows' => $rows,
    'isDelete' => $isDelete,
    'deleted' => $deleted,
    'selectStatus' => $selectStatus]);