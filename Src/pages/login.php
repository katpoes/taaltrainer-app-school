<?php
session_start();
require_once "../classes/db.php";

$error="";

if(isset($_POST["login"])){

$username=$_POST["username"];
$password=$_POST["password"];

$stmt=$pdo->prepare("SELECT * FROM users WHERE username=?");
$stmt->execute([$username]);

$user=$stmt->fetch();

if($user && password_verify($password,$user["password"])){

$_SESSION["user_id"]=$user["id"];
$_SESSION["username"]=$user["username"];

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

<input type="text" name="username" placeholder="username" required>

<input type="password" name="password" placeholder="password" required>

<button name="login" class="btn">Login</button>

</form>

<a href="register.php">Account maken</a>

</div>