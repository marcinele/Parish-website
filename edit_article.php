<?php
$post = false;
$saved = false;
$target_dir = "Images/uploads/";
$target_file;
$defaultImg = "Images/uploads/default.jpg";

// 0 - image not valid
// 1 - image valid
// 2 - image valid, but exists

$imgValidation = 0;

// 0 - no new article
// 1 - new article but not saved
// 2 - new article that should has been saved

$new = 0;
if(isset($_GET['id'])){
	$id = $_GET['id'];
}else if( isset($_GET['new']) ){
	$new = 1;
} else {

	echo 'id not set';
	exit();
}

if( isset($_POST['title']) && isset($_POST['subtitle']) && isset($_POST['content'])){
	$title = $_POST['title'];
	$subtitle = $_POST['subtitle'];
	$content = $_POST['content'];

	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	$check = getimagesize($_FILES['fileToUpload']['tmp_name']);
	if($check !== false){
		$imgValidation = 1;

		if(file_exists($target_file)){
			$imgValidation = 2;
		}

		if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
			$imgValidation = 0;
		}

	} else {
		$imgValidation = 0;
	}

	$post = true;
}


if($post){
	if($new == 1){
		if($imgValidation == 0){
			$target_file = $defaultImg;
		} else if ($imgValidation == 1){
			move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],
				$target_file);
		}

		try{
			$stmt = $dbh->prepare('INSERT INTO announcements (user_id, title, subtitle, content, created, updated,  likes, pathToImg) VALUES (1, :title, :subtitle, :content, NOW(), NOW(),0, :pathToImg)');

			$stmt = $dbh->prepare('INSERT INTO announcements (user_id, title, subtitle, content, created,  likes, pathToImg) VALUES (1, :title, :subtitle, :content, NOW(), 0, :pathToImg)');
			$stmt->execute([':title' => $title, ':subtitle' => $subtitle, ':content' => $content, ':pathToImg' => $target_file]);
			$saved = true;
			$new = 2;
		} catch (PDOException $e){
			$saved = false;
			$new = 1;
		} 
	} else if($new == 0){
		if ($imgValidation == 1){
			move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],
				$target_file);
			try{
				$stmt = $dbh->prepare('UPDATE announcements SET title = :title, subtitle = :subtitle, content = :content, updated = NOW(), pathToImg = :pathToImg WHERE announcement_id = :id');
				$stmt->execute([':id' => $id, ':title' => $title, ':subtitle' => $subtitle, ':content' => $content, 'pathToImg' => $target_file]);
				$saved = true;
			} catch (PDOException $e){
				$saved = false;
			} 
		} else if ($imgValidation == 2) {
			try{
				$stmt = $dbh->prepare('UPDATE announcements SET title = :title, subtitle = :subtitle, content = :content, updated = NOW(), pathToImg = :pathToImg WHERE announcement_id = :id');
				$stmt->execute([':id' => $id, ':title' => $title, ':subtitle' => $subtitle, ':content' => $content, 'pathToImg' => $target_file]);
				$saved = true;
			} catch (PDOException $e){
				$saved = false;
			}
		} else {
			try{
			$stmt = $dbh->prepare('UPDATE announcements SET title = :title, subtitle = :subtitle, content = :content, updated = NOW() WHERE announcement_id = :id');
			$stmt->execute([':id' => $id, ':title' => $title, ':subtitle' => $subtitle, ':content' => $content]);
			$saved = true;
			} catch (PDOException $e){
				$saved = false;
			} 
		}
		
	}
}

$article;

if($new == 1){
	$article = [
			'title' => 'Tytuł',
			'subtitle' => 'Podtytuł',
			'content' => 'Treść'
		];
} else if ($new == 1 && $post){
	$article = [
			'title' => $title,
			'subtitle' => $subtitle,
			'content' => $content
		];
} else if ($new == 2){
	$stmt = $dbh->prepare("SELECT * FROM announcements ORDER BY announcement_id DESC");
	$stmt->execute();
	$article = $stmt->fetch(PDO::FETCH_ASSOC);
} else {
	$stmt = $dbh->prepare("SELECT * FROM announcements WHERE announcement_id = :id");
	$stmt->execute([':id' => $id]);
	$article = $stmt->fetch(PDO::FETCH_ASSOC);
	$article['title'] = htmlspecialchars($article['title'], ENT_QUOTES | ENT_HTML401, 'UTF-8');
	$article['subtitle'] = htmlspecialchars($article['subtitle'], ENT_QUOTES | ENT_HTML401, 'UTF-8');
}
//$article['content'] = htmlspecialchars($article['content'], ENT_QUOTES | ENT_HTML401, 'UTF-8');

/*print("img: " . $imgValidation);
print("saved: " . $saved);
print("post: " . $post);
print("new: " . $new);
*/

}
//$article['content'] = htmlspecialchars($article['content'], ENT_QUOTES | ENT_HTML401, 'UTF-8');

echo $twig->render('edit_article.html', [
    'post' => $_POST,
    'session' => $_SESSION,
    'get' => $_GET,
	'article' => $article,
	'saved' => $saved,
	'post' => $post,
	'new' => $new,
	'imgValidation' => $imgValidation]);
