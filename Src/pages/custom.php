<?php
session_start();
require_once "../classes/db.php";

if(isset($_POST["add"])){

$dutch=$_POST["dutch"];
$swedish=$_POST["swedish"];

$stmt=$pdo->prepare("INSERT INTO custom_words(user_id,dutch_word,swedish_word) VALUES (?,?,?)");

$stmt->execute([$_SESSION["user_id"],$dutch,$swedish]);

}

$stmt=$pdo->prepare("SELECT * FROM custom_words WHERE user_id=?");
$stmt->execute([$_SESSION["user_id"]]);

$words=$stmt->fetchAll();
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Eigen woorden</h2>

<form method="POST">

<input name="dutch" placeholder="Nederlands woord">

<input name="swedish" placeholder="Zweeds woord">

<button name="add" class="btn">Toevoegen</button>

</form>

<h3>Jouw woorden</h3>

<?php

foreach($words as $word){

echo "<p>".$word["dutch_word"]." - ".$word["swedish_word"]."</p>";

}

?>

</div>