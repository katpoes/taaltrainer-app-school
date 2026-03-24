<?php
session_start();

if(!isset($_SESSION["user_id"])){

header("Location: pages/login.php");
exit;

}
?>

<link rel="stylesheet" href="css/style.css">

<div class="container">

<h1>Taaltrainer</h1>

<p>Welkom <?php echo $_SESSION["email"]; ?></p>

<a class="btn" href="pages/lesson.php">Start les</a>

<a class="btn" href="pages/custom_lesson.php">Custom les</a>

<a class="btn" href="pages/scoreboard.php">Scoreboard</a>

<a class="btn logout" href="pages/logout.php">Logout</a>

</div>