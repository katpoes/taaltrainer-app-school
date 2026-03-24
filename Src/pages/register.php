<?php
require_once "../classes/db.php";

if(isset($_POST["register"])){

$email=$_POST["email"];

$password=password_hash($_POST["password"],PASSWORD_DEFAULT);

$stmt=$pdo->prepare("INSERT INTO users(email,password) VALUES (?,?)");

$stmt->execute([$email,$password]);

header("Location: login.php");

}
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Register</h2>

<form method="POST">

<input name="email" placeholder="email">

<input type="password" placeholder="password" name="password">

<button name="register" class="btn">Register</button>

<a href="login.php">Terug naar login</a>

</form>

</div>