<?php
session_start();
require_once "../classes/db.php";

if(!isset($_SESSION["user_id"])){
header("Location: login.php");
exit;
}

$feedback = "";

/* woord ophalen */

$stmt = $pdo->query("SELECT * FROM words ORDER BY RAND() LIMIT 1");
$data = $stmt->fetch();

/* antwoord controleren */

if(isset($_POST["answer"])){

$user = $_POST["answer"];
$correct = $_POST["correct"];

if($user == $correct){

$feedback = "Goed!";

}else{

$feedback = "Fout! Correct antwoord: ".$correct;

}

}

/* 3 random foute opties */

$stmt = $pdo->query("SELECT swedish_word FROM words WHERE swedish_word != '".$data["swedish_word"]."' ORDER BY RAND() LIMIT 3");
$options = $stmt->fetchAll();

/* juiste antwoord toevoegen */

$options[] = ["swedish_word"=>$data["swedish_word"]];

/* shuffle antwoorden */

shuffle($options);

?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Les</h2>

<?php if($feedback==""){ ?>

<p>Wat is <b><?php echo $data["dutch_word"]; ?></b> in het Zweeds?</p>

<form method="POST">

<input type="hidden" name="correct" value="<?php echo $data["swedish_word"]; ?>">

<?php

foreach($options as $opt){

echo '<button class="btn option" name="answer" value="'.$opt["swedish_word"].'">'.$opt["swedish_word"].'</button>';

}

?>

</form>

<?php } ?>

<?php if($feedback!=""){ ?>

<p><?php echo $feedback; ?></p>

<a class="btn" href="lesson.php">Volgende vraag</a>

<?php } ?>

<a class="btn logout" href="../index.php">Stop les</a>

</div>