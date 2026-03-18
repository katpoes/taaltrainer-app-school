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

<p>Welkom <?php echo $_SESSION["username"]; ?></p>

<div class="menu">

<a href="pages/lesson.php" class="btn">Start standaard les</a>

<a href="pages/custom_lesson.php" class="btn">Start custom les</a>

<a href="pages/custom.php" class="btn">Eigen woorden toevoegen</a>

<a href="pages/logout.php" class="btn logout">Logout</a>

</div>

</div>