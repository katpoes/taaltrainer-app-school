<?php
session_start();
require_once "../classes/db.php";

if(!isset($_SESSION["user_id"])){

header("Location: login.php");
exit;

}

$mode = rand(1,3);

/* woord ophalen */

if(!isset($_POST["word_id"])){

$stmt=$pdo->query("SELECT * FROM words ORDER BY RAND() LIMIT 1");
$data=$stmt->fetch();

}else{

$stmt=$pdo->prepare("SELECT * FROM words WHERE id=?");
$stmt->execute([$_POST["word_id"]]);
$data=$stmt->fetch();

}

$feedback="";

/* antwoord controleren */

if(isset($_POST["answer"])){

$user = strtolower(trim($_POST["answer"]));
$correct = strtolower(trim($_POST["correct"]));

if($user == $correct){

$feedback="Goed!";

}else{

$feedback="Fout! Correct: ".$correct;

}

}

/* multiple choice opties */

$stmt=$pdo->query("SELECT swedish_word FROM words ORDER BY RAND() LIMIT 3");
$options=$stmt->fetchAll();

$options[]=["swedish_word"=>$data["swedish_word"]];

shuffle($options);

?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<?php

/* ---------------- LEARN MODE ---------------- */

if($mode == 1 && !isset($_POST["answer"])){

echo "<h2>Nieuw woord</h2>";

echo "<h3>".$data["dutch_word"]."</h3>";

echo "<p>Zweeds: <b>".$data["swedish_word"]."</b></p>";

echo "<p>".$data["example_nl"]."</p>";
echo "<p>".$data["example_sv"]."</p>";

echo '
<form method="POST">

<input type="hidden" name="word_id" value="'.$data["id"].'">

<button class="btn">Oefenen</button>

</form>
';

}

/* ---------------- MULTIPLE CHOICE ---------------- */

elseif($mode == 2){

echo "<h2>Multiple choice</h2>";

echo "<p>Wat is <b>".$data["dutch_word"]."</b> in het Zweeds?</p>";

echo '<form method="POST">';

echo '<input type="hidden" name="word_id" value="'.$data["id"].'">';
echo '<input type="hidden" name="correct" value="'.$data["swedish_word"].'">';

foreach($options as $opt){

echo '<button class="btn option" name="answer" value="'.$opt["swedish_word"].'">'.$opt["swedish_word"].'</button>';

}

echo '</form>';

}

/* ---------------- TYPE MODE ---------------- */

else{

echo "<h2>Typ het woord</h2>";

echo "<p>".$data["dutch_word"]."</p>";

echo '

<form method="POST">

<input type="hidden" name="word_id" value="'.$data["id"].'">

<input type="hidden" name="correct" value="'.$data["swedish_word"].'">

<input name="answer">

<button class="btn">Controleer</button>

</form>

';

}

/* feedback */

if($feedback){

echo "<p>".$feedback."</p>";

echo '<a class="btn" href="lesson.php">Volgende vraag</a>';

}

?>

<a href="../index.php">Terug</a>

</div>