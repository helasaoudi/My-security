
<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
header("Access-Control-Allow-Headers:Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods:GET, PUT, POST, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: accept');
//connexion à la base de données
try
{
 $db =new PDO('mysql:host=localhost;dbname=statistique;charset=utf8', 
'root', '');
}
catch (Exception $e)
{
 die('Erreur : ' . $e->getMessage());
}

//partie query

//$pdo = DbConnection::connect();
$row=$db->prepare('select * from cordonneé');  
$row->execute();
$stat=array();

foreach($row as $rec) 
{  
$json_array['info']=$rec['info'];  
$json_array['statistique']=$rec['statistique'];  
$json_array['ville']=$rec['ville']; 
$json_array['codepostal']=$rec['codepostal'];  
$json_array['lang']=$rec['lang'];  
$json_array['lat']=$rec['lat']; 
    array_push($stat,$json_array);
}  
 
//transformer les donneé de base en json 
 echo json_encode($stat);  

?>


