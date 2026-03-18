<?php
session_start();
require_once "../classes/db.php";

$stmt=$pdo->prepare("SELECT dutch_word AS question, swedish_word AS answer FROM custom_words WHERE user_id=? ORDER BY RAND() LIMIT 1");

$stmt->execute([$_SESSION["user_id"]]);

$data=$stmt->fetch();

$feedback="";

if(isset($_POST["check"])){

if(strtolower($_POST["answer"])==strtolower($_POST["correct"])){

$feedback="Goed!";

}else{

$feedback="Fout!";

}

}
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Custom Les</h2>

<h3><?php echo $data["question"]; ?></h3>

<form method="POST">

<input name="answer">

<input type="hidden" name="correct" value="<?php echo $data["answer"]; ?>">

<button name="check" class="btn">Controleer</button>

</form>

<p><?php echo $feedback; ?></p>

</div>