<?php
require_once "../classes/db.php";

$stmt = $pdo->query("
SELECT users.email, scores.score, scores.created_at
FROM scores
JOIN users ON scores.user_id = users.id
ORDER BY scores.score DESC
LIMIT 10
");

$scores = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>🏆 Scoreboard</h2>

<table>

<tr>
<th>#</th>
<th>Email</th>
<th>Score</th>
<th>Datum</th>
</tr>

<?php

$rank = 1;

foreach($scores as $row){

echo "<tr>";

echo "<td>".$rank++."</td>";
echo "<td>".htmlspecialchars($row["email"])."</td>";
echo "<td>".$row["score"]."</td>";
echo "<td>".$row["created_at"]."</td>";

echo "</tr>";

}

?>

</table>

<a class="btn" href="../index.php">Terug</a>

</div>