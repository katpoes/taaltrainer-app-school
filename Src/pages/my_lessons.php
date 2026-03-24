<?php
session_start();
require_once "../classes/db.php";

$stmt=$pdo->prepare("SELECT * FROM custom_lessons WHERE user_id=?");
$stmt->execute([$_SESSION["user_id"]]);

$lessons=$stmt->fetchAll();
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Mijn lessen</h2>

<?php

if(!$lessons){

echo "Je hebt nog geen lessen.";

}

foreach($lessons as $l){

echo '<a class="btn" href="play_custom.php?id='.$l["id"].'">'.$l["lesson_name"].'</a>';

}

?>

<a class="btn" href="custom_lesson.php">Terug</a>

</div>