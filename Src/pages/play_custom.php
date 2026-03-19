<?php
session_start();
require_once "../classes/db.php";

if(!isset($_SESSION["user_id"])){
header("Location: login.php");
exit;
}

$lesson=$_GET["id"];

/* feedback reset */
$feedback="";

/* woord ophalen uit custom les */
$stmt=$pdo->prepare("SELECT * FROM custom_lesson_words WHERE lesson_id=? ORDER BY RAND() LIMIT 1");

$stmt->execute([$lesson]);

$data=$stmt->fetch();

/* antwoord controleren */

if(isset($_POST["answer"])){

$user=strtolower(trim($_POST["answer"]));
$correct=strtolower(trim($_POST["correct"]));

if($user==$correct){

$feedback="Goed!";

}else{

$feedback="Fout! Correct antwoord: ".$correct;

}

}

?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Custom Les</h2>

<?php if($feedback==""){ ?>

<p><?php echo $data["dutch_word"]; ?></p>

<form method="POST">

<input name="answer" placeholder="Typ Zweeds woord">

<input type="hidden" name="correct" value="<?php echo $data["swedish_word"]; ?>">

<button class="btn">Controleer</button>

</form>

<?php } ?>

<?php if($feedback!=""){ ?>

<p><?php echo $feedback; ?></p>

<a class="btn" href="play_custom.php?id=<?php echo $lesson; ?>">Volgende vraag</a>

<?php } ?>

<a class="btn logout" href="../index.php">Stop les</a>

</div>