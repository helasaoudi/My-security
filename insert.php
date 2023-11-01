
<?php
session_start();
$db =new PDO('mysql:host=localhost;dbname=statistique;charset=utf8', 
'root', '');

if (isset($_POST['envoyer'])) {
    $nom=$_POST['nom'];
    $code=$_POST['code'];
    $date=$_POST['date'];
    $rec=$_POST['rec'];
    try {
        $query ="INSERT INTO cordonneé(codepostal,info,Nometprenom,datee)
        VALUES('$code','$rec','$nom','$date')";
       
       $requete = $db->prepare($query);
        $requete->execute();
        if($requete){
            $_SESSION['message'] = "Updated Successfully";
           header('Location:contact.html');
            exit(0); //terminer le programme avec succeé
        }else {
            $_SESSION['message'] = "Updated ERROR";
            header('Location:contact.html');
            exit(0);
        }
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
}else{
    echo"Error";
}
 
?>