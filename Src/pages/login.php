<?php
session_start();
require_once "../classes/db.php";

$error="";

if(isset($_POST["login"])){

$email=$_POST["email"];
$password=$_POST["password"];

$stmt=$pdo->prepare("SELECT * FROM users WHERE email=?");
$stmt->execute([$email]);

$user=$stmt->fetch();

if($user && password_verify($password,$user["password"])){

$_SESSION["user_id"]=$user["id"];
$_SESSION["email"]=$user["email"];

header("Location: ../index.php");
exit;

}else{

$error="Login fout";

}

}
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Login</h2>

<p class="error"><?php echo $error; ?></p>

<form method="POST">

<input name="email" placeholder="email">

<input type="password" placeholder="password" name="password">

<button name="login" class="btn">Login</button>

</form>

<a href="register.php">Register</a>

</div>