<?php 
include('dbcon.php');

if(isset($_POST['b'])){
    if($_POST["email"]=="admin@gmail.com" && $_POST["pwd"]=="admin"){
        include('espace-admin.php');
    }
    else if($_POST["email"]=="hela@gmail.com" && $_POST["pwd"]=="hela"){
        include('index.html');
    }
    else{
        echo '<script language="javascript">';
        echo 'alert("Enter a correct password");';
        echo 'window.location="login.html";';
        echo '</script>';
    }
  
}
?>