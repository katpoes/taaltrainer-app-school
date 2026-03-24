<?php
session_start();
require_once "../classes/db.php";

if(!isset($_SESSION["user_id"])){
    header("Location: login.php");
    exit;
}

if(isset($_SESSION["score"])){

    $score = $_SESSION["score"];

    $stmt = $pdo->prepare("
        INSERT INTO scores (user_id, score)
        VALUES (?, ?)
    ");

    $stmt->execute([
        $_SESSION["user_id"],
        $score
    ]);

    // score resetten
    unset($_SESSION["score"]);

    // redirect zodat refresh geen nieuwe score maakt
    header("Location: lesson_finished.php?score=".$score);
    exit;
}