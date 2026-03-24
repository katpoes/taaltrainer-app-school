<?php
session_start();

$score = $_GET["score"] ?? 0;
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Les afgerond</h2>

<p>Jouw score: <strong><?php echo $score; ?></strong></p>

<a class="btn" href="../index.php">Dashboard</a>

<a class="btn" href="scoreboard.php">Scoreboard</a>

</div>