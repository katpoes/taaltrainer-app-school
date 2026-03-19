<?php
session_start();
require_once "../classes/db.php";

if(isset($_POST["create"])){

$stmt=$pdo->prepare("INSERT INTO custom_lessons (user_id,lesson_name) VALUES (?,?)");

$stmt->execute([
$_SESSION["user_id"],
$_POST["name"]
]);

$lesson_id=$pdo->lastInsertId();

header("Location: add_words.php?lesson=".$lesson_id);
exit;

}
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Nieuwe les maken</h2>

<form method="POST">

<input name="name" placeholder="Les naam">

<button class="btn" name="create">Les maken</button>

</form>

<a href="custom_lesson.php">Terug</a>

</div>