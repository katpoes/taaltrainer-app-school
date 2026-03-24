<?php
session_start();
require_once "../classes/db.php";

if(!isset($_SESSION["user_id"])){
header("Location: login.php");
exit;
}

if(!isset($_SESSION["score"])){
$_SESSION["score"] = 0;
}

$feedback="";

/* woord ophalen */

$stmt=$pdo->query("SELECT * FROM words ORDER BY RAND() LIMIT 1");
$data=$stmt->fetch();

/* antwoord controleren */

if(isset($_POST["answer"])){

$user=$_POST["answer"];
$correct=$_POST["correct"];

if($user==$correct){

$feedback="Goed!";
$_SESSION["score"]++;

}else{

$feedback="Fout! Correct: ".$correct;

}

}

/* opties maken */

$stmt=$pdo->query("SELECT swedish_word FROM words WHERE swedish_word!='".$data["swedish_word"]."' ORDER BY RAND() LIMIT 3");
$options=$stmt->fetchAll();

$options[]=["swedish_word"=>$data["swedish_word"]];

shuffle($options);

?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Les</h2>

<p>Score: <?php echo $_SESSION["score"]; ?></p>

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

<a class="btn logout" href="stop_lesson.php">Stop les</a>

</div>