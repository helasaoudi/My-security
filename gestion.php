
<!DOCTYPE html>
<html>
  <head>
    <!-- Inclure les fichiers CSS de Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>
  <body>
<?php
try {

    $db =new PDO('mysql:host=localhost;dbname=statistique;charset=utf8', 
    'root', '');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $nom=$_POST['nom'];
  $code=$_POST['code'];
  $date=$_POST['date'];
  $sign=$_POST['sign'];
  $select=$_POST['l'];

 //premiere condition la signialisation passe 2 foie 
 $stmt = $db->prepare("SELECT *  FROM vectime WHERE code=:code AND reclamation=:reclamation");
 $stmt->execute(array(':code' => $code,':reclamation'=> $sign));
 $count = $stmt->fetch();
if ($count) {
  echo '<div class="alert alert-info" role="alert" style=" text-align:center; font-size=20px;">
 Votre signialisation est  déja prise en charge 
</div>
 ' ;


}else{
// 2 emme  condition  si info différent et code existe dans stat  insertion  + incrimentation 
 $stmt = $db->prepare("SELECT * FROM cordonneé WHERE codepostal=:code AND codepostal IN (SELECT code FROM  vectime where   reclamation!=:info)");

 $stmt->execute(array(':code' => $code,':info'=> $sign));
  $count = $stmt->fetch();

  if ($count) {

 $stmt = $db->prepare("UPDATE cordonneé SET statistique = statistique + 0.01  WHERE codepostal = :code AND ville=:ville");
    $stmt->execute(array(':code' => $code,':ville'=>$select));
    $stmt = $db->prepare("INSERT INTO vectime (code,Nom_prenom,datee,reclamation,ville) VALUES (:code,:nom,:datee,:reclamation,:ville)");
    $stmt->execute(array(':code' => $code,':nom' => $nom,':datee' => $date,':reclamation' => $sign,':ville'=>$select));
  echo '<div class="alert alert-info" role="alert" style=" text-align:center; font-size=20px;">
 signialisation reçu
</div>' ;
 
 } else{
  //3emme condition si n'existe pas dans la table cordonné
  $stmt = $db->prepare("SELECT * FROM vectime WHERE code!=:code");
  $stmt->execute(array(':code' => $code));
  $count = $stmt->fetch();
  if ($count) {
    $stmt = $db->prepare("INSERT INTO vectime (code,Nom_prenom,datee,reclamation,ville) VALUES (:code,:nom,:datee,:reclamation,:ville)");
    $stmt->execute(array(':code' => $code,':nom' => $nom,':datee' => $date,':reclamation' => $sign,':ville'=>$select));
  echo '<div class="alert alert-info" role="alert" style=" text-align:center; font-size=20px;">
 signialisation reçu
</div>
 ';
}
}
}
 }catch (PDOException $e) {
  echo "Erreur : " . $e->getMessage();
}
?>

</body>
</html>