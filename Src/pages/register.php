<?php
require_once "../classes/db.php";

if(isset($_POST["register"])){

$username=$_POST["username"];

$password=password_hash($_POST["password"],PASSWORD_DEFAULT);

$stmt=$pdo->prepare("INSERT INTO users(username,password) VALUES (?,?)");

$stmt->execute([$username,$password]);

header("Location: login.php");

}
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Register</h2>

<form method="POST">

<input name="username">

<input type="password" name="password">

<button name="register" class="btn">Register</button>

</form>

</div>