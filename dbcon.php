<?php

/*$servername = "localhost";
$username = "root";
$password = "";
$database = "gestionhopital";*/

try
{
 $db =new PDO('mysql:host=localhost;dbname=statistique;charset=utf8', 
'root', '');
}
catch (Exception $e)
{
 die('Erreur : ' . $e->getMessage());
}

?>