<!--?php
// Établissement de la connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "YES";
$dbname = "statistique1";

// Création de la connexion
$db = mysqli_connect($servername, $username, $password, $dbname);
/*$db =new PDO('mysql:host=localhost;dbname=statistique1;charset=utf8', 
'root', '');*/

// Vérification de la connexion
if (!$db) {
    die("La connexion a échoué : " . mysqli_connect_error());
}

// Récupération des données du formulaire
$ville=$_POST['ville'];
$code=$_POST['code'];
// Vérification si l'élément existe déjà dans la base de données
$sql = "SELECT * FROM cordonneé1 WHERE code = '$code'";
$result = mysqli_query($db, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "L'élément existe déjà dans la base de données.";
} else {
    $sql = "INSERT INTO cordonneé1 (code,ville) VALUES ('$code','$ville')";
    
    if (mysqli_query($db, $sql)) {
        echo "L'élément a été ajouté à la base de données.";
    } else {
        echo "Erreur lors de l'ajout de l'élément à la base de données : " . mysqli_error($conn);
    }
}

// Fermeture de la connexion
mysqli_close($conn);
?-->

<?php
try {
    $db =new PDO('mysql:host=localhost;dbname=statistique1;charset=utf8', 
    'root', '');
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  $ville=$_POST['ville'];
  $code=$_POST['code'];
  $info=$_POST['info'];



  // Vérifiez si le nom et l'email sont déjà présents dans la base de données
 // $stmt = $db->prepare("SELECT code ,ville FROM cordonneé1 WHERE code = :code  UNION SELECT code,ville FROM table1 WHERE code = :code");
 
 //premiere condition la signialisation passe 2 foie 
 $stmt = $db->prepare("SELECT *  FROM table1 WHERE code=:code AND info=:info");
 $stmt->execute(array(':code' => $code,':info'=>$info));
 $count = $stmt->fetch();

if ($count) {
 echo "Votre signialisation prise en charge déja ";

}
// 2 emme  condition  si info différent et code existe dans stat  insertion  + incrimentation 
 $stmt = $db->prepare("SELECT * FROM cordonneé1 WHERE code=:code AND code in (SELECT CODE FROM  table1 where   info!=:info)");

 $stmt->execute(array(':code' => $code,':info'=>$info));
  $count = $stmt->fetch();

  if ($count) {

 $stmt = $db->prepare("UPDATE cordonneé1 SET statistique = statistique + 1  WHERE code = :code");
    $stmt->execute(array(':code' => $code));
    $stmt = $db->prepare("INSERT INTO table1 (code, ville,info) VALUES (:code,:ville,:info)");
    $stmt->execute(array(':code' => $code,':info' => $info,':ville' => $ville));
    echo "modification faite avec succeés ";
  }
  //3emme condition si n'existe pas dans la table condition 
  $stmt = $db->prepare("SELECT * FROM table1 WHERE code!=:code");
  $stmt->execute(array(':code' => $code));
  $count = $stmt->fetch();
  if ($count) {
 $stmt = $db->prepare("INSERT INTO table1 (code, ville,info) VALUES (:code,:ville,:info)");
 $stmt->execute(array(':code' => $code,':ville' => $ville,':info' => $info));
 echo " insertion avec succeés ";
}


/*Insérez les données si elles n'existent pas
   

    echo "Les données ont été insérées avec succès.";
  }
   else {
    // Incrémentez la statistique si le nom existe déjà
    //$db->exec("SAVEPOINTsp1");
   
    echo "La statistique a été incrémentée pour ce code.";

  }
  


/*echo " existe dans les deux table";
  }
  else{
    echo " il nesiste pas ";
  }*/
 /* $stmt1 = $db->prepare("SELECT * FROM table1 WHERE code = :code ");
  $stmt1->execute(array(':code' => $code));
  $count1 = $stmt1->rowCount();*

 //  {
    echo  $count== 0 and $count1== 0  ;
 // }

    */ }catch (PDOException $e) {
  echo "Erreur : " . $e->getMessage();
}
?>
