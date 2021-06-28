<?php
$post = false;
$saved = false;

if(isset($_GET['id'])){
	$id = $_GET['id'];
}else{
	echo 'id not set';
	exit();
}

if( isset($_POST['title']) && isset($_POST['subtitle']) && isset($_POST['content'])){
	$title = $_POST['title'];
	$subtitle = $_POST['subtitle'];
	$content = $_POST['content'];
	$post = true;
}

if($post){
	try{
		$stmt = $dbh->prepare('UPDATE announcements SET title = :title, subtitle = :subtitle, content = :content WHERE announcement_id = :id');
	$stmt->execute([':id' => $id, ':title' => $title, ':subtitle' => $subtitle, ':content' => $content]);
	$saved = true;
	} catch (PDOException $e){
		$saved = false;
	} 
}

$stmt = $dbh->prepare("SELECT * FROM announcements WHERE announcement_id = :id");
$stmt->execute([':id' => $id]);
$article = $stmt->fetch(PDO::FETCH_ASSOC);
//$article['content'] = htmlspecialchars($article['content'], ENT_QUOTES | ENT_HTML401, 'UTF-8');

echo $twig->render('edit_article.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
	'article' => $article,
	'saved' => $saved,
	'post' => $post]);
