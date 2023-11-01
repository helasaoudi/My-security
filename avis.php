<?php
try {
    $db =new PDO('mysql:host=localhost;dbname=statistique;charset=utf8', 
    'root', '');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $input=$_POST['inp'];
 
    $stmt = $db->prepare("INSERT INTO avis (avis) VALUES (:av)");
    $stmt->execute(array(':av' => $input));
    header("location:index.html");
   //  echo "modification faite avec succeés ";
 }catch (PDOException $e) {
  echo "Erreur : " . $e->getMessage();
}
?>
