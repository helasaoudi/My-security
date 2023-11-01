<?php
//session_start();
include('dbcon.php');
if (isset($_POST['update_patient_btn'])) {
   $id = $_POST['id'];
   $code=$_POST['code'];
   $ville=$_POST['ville'];
   $info=$_POST['info'];
   $stat=$_POST['stat'];
   $lat=$_POST['lat'];
   $long=$_POST['long'];
    try {
       $query ="UPDATE cordonneé SET codepostal='$code',ville='$ville',info='$info',statistique='$stat',lat='$lat' WHERE id=$id ";
       $requete = $db->prepare($query);
        $requete->execute();
        if($requete){
            $_SESSION['message'] = "Updated Successfully";
           header('Location:espace-admin.php');
            exit(0); //terminer le programme avec succeé
        }else {
            $_SESSION['message'] = "Updated ERROR";
            header('Location:espace-admin.php');
            exit(0);
        }
        echo " $id,$code,$ville,$info,$stat,$lat,$long " ;
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
}else{
    echo"Error";
}
 
if (isset($_POST['save_patient_btn'])) {

    $code=$_POST['code'];
    $ville=$_POST['ville'];
    $info=$_POST['info'];
    $stat=$_POST['stat'];
    $lat=$_POST['lat'];
    $long=$_POST['lang'];
    include('dbcon.php');
    $query ="INSERT INTO cordonneé(codepostal,ville,info,statistique,lat,lang) VALUES('$code','$ville','$info','$stat','$lat','$long')";
    $requete = $db->prepare($query);
    $requete->execute();

    if($requete){
        $_SESSION['message'] = "Inserted Successfully";
        header('Location:espace-admin.php');
        exit(0);
    }else {
        $_SESSION['message'] = "Inserted ERROR";
        header('Location:espace-admin.php');
        exit(0);
    }
}

if(isset($_POST['delete_client'])){
    $id=$_POST['delete_client'];?>

    if(confirm("Are you sure you want to delete this record?")){
        <?php try {
            $query = "DELETE FROM cordonneé WHERE id=$id";
            $requete = $db->prepare($query);
            $requete->execute();

            $_SESSION['message'] = "Deleted Successfully";
            header('Location:espace-admin.php');
            exit(0);

        } catch(PDOException $e){
            echo $e->getMessage();
        }
    }?>
}
