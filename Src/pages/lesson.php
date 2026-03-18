<?php
session_start();
require_once "../classes/db.php";

$type=rand(1,2);

if($type==1){

$stmt=$pdo->query("SELECT dutch_word AS question, swedish_word AS answer FROM words ORDER BY RAND() LIMIT 1");

}else{

$stmt=$pdo->query("SELECT dutch_sentence AS question, swedish_sentence AS answer FROM sentences ORDER BY RAND() LIMIT 1");

}

$data=$stmt->fetch();

$feedback="";

if(isset($_POST["check"])){

$user=strtolower($_POST["answer"]);
$correct=strtolower($_POST["correct"]);

if($user==$correct){

$feedback="Goed!";

}else{

$feedback="Fout. Correct: ".$correct;

}

}
?>

<link rel="stylesheet" href="../css/style.css">
<script src="../js/script.js"></script>

<div class="container">

<h2>Vertaal naar Zweeds</h2>

<h3><?php echo $data["question"]; ?></h3>

<form method="POST">

<input name="answer">

<input type="hidden" name="correct" value="<?php echo $data["answer"]; ?>">

<button name="check" class="btn">Controleer</button>

</form>

<p id="feedback"><?php echo $feedback; ?></p>

<a href="../index.php">Terug</a>

</div>