<?php

if(isset($_GET['show'])){
    $id = $_GET['show'];

    $selectStatus = false;

    $stmt = $dbh->prepare("SELECT * FROM announcements WHERE announcement_id = :announcement_id");
    try{
        $stmt->execute([':announcement_id' => $id]);
        $selectStatus = true;
    } catch(PDOException $e){
        $selectStatus = false;
    }

    $row;

    if($selectStatus){
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if(count($row) > 0){
            $selectStatus = true;
        } else {
            $selectStatus = false;
        }
    }


    echo $twig->render('announcement_show.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
    'row' => $row,
    'selectStatus' => $selectStatus]);

} else{

    $selectStatus = false;

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
        array_push($rows, $row);
    }




    echo $twig->render('announcements.html', [
        'post' => $_POST,
        'session' => $_SESSION,
        'get' => $_GET,
        'rows' => $rows,
        'selectStatus' => $selectStatus]);
}
