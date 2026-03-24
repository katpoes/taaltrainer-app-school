<?php
session_start();
require_once "../classes/db.php";

$lesson=$_GET["lesson"];

$message="";

if(isset($_POST["add"])){

$dutch=trim($_POST["dutch"]);
$swedish=trim($_POST["swedish"]);

if($dutch=="" || $swedish==""){

$message="Vul beide velden in";

}else{

$stmt=$pdo->prepare("INSERT INTO custom_lesson_words (lesson_id,dutch_word,swedish_word) VALUES (?,?,?)");

$stmt->execute([$lesson,$dutch,$swedish]);

$message="Woord toegevoegd";

}

}

$stmt=$pdo->prepare("SELECT * FROM custom_lesson_words WHERE lesson_id=?");
$stmt->execute([$lesson]);
$words=$stmt->fetchAll();
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Woorden toevoegen</h2>

<form method="POST">

<input name="dutch" placeholder="Nederlands">

<input name="swedish" placeholder="Zweeds">

<button class="btn" name="add">Toevoegen</button>

</form>

<p><?php echo $message; ?></p>

<h3>Woorden in deze les</h3>

<?php
foreach($words as $w){

echo "<p>".$w["dutch_word"]." - ".$w["swedish_word"]."</p>";

}
?>

<a class="btn" href="my_lessons.php">Klaar</a>

</div>