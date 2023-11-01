<?php 
session_start();
include('dbcon.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <title>AFFICHER</title>
  
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>
<body>


  <!-- Navbar Start -->
  <nav class="navbar navbar-expand-lg bg-white navbar-light shadow-sm py-3 py-lg-0 px-3 px-lg-0">
        <a href="index.html" class="navbar-brand ms-lg-5">
           <!-- <h1 class="display-5 m-0 text-primary">Safe<span class="text-secondary">Cam</span></h1>-->
           <!-- crousel 1-->
          <div> <img src="img/best1.png" class ="img"> </div>

            
           
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
               <div class="img"><h1 class="display-5 m-0 text-primary" >MY<span class="text-secondary">Security</span></h1></div> 
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
               &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <a href="index.html" class="nav-item nav-link active">Accueil</a>
                <a href="dec.php" class="nav-item nav-link">Deconexion</a>

    </nav>
    <!-- Navbar End -->
  <div class="container">
      <div class="row">
        <div class="col-md-12 mt-4"
        
        <?php if((isset($_SESSION['message']))): ?>
          <h5 class="alert alert-success"><?= $_SESSION['message'];?></h5>
        <?php
         unset($_SESSION['message']);
         endif;
       ?>
          <div class="card">
              <div class="card-header">
                <h3>
                  Dashboard
                  <a href="client-add.php" class="btn btn-primary float-end">Add Information </a>
                </h3>
              </div>
              <div class="card-body">
                <table class="table table-bordered table-striped">
                  <thead>
                    <td>code postal</td>
                    <td>ville</td>
                    <td>info</td>
                    <td>statistique</td>
                    <td>lat</td>
                    <td>lang</td>
                    <td>Edit</td>

                    <td>Delete</td>
                  </thead>
                  <tbody>
                    <?php 
                    $query="SELECT * FROM cordonneé"; 
                    $statement = $db->prepare($query);
                    $statement->execute();

                    $result = $statement->fetchAll();//retourne un tableau contient touts les ligne de resultat
                    if($result){
                      foreach($result as $row){
                        ?>
                        <tr>
                          <td><?= $row['codepostal'];?></td>
                          <td><?= $row['ville'];?></td>
                          <td><?= $row['info'];?></td>
                          <td><?= $row['statistique'];?></td>
                          <td><?= $row['lat'];?></td>
                          <td><?= $row['lang'];?></td>

                          <td>
                          <a href="edit.php?id=<?= $row['id']; ?>" class="btn btn-primary">Edit</a>

                          </td>
                          <td>
                            <form action="base.php" method="post">
                              <button class="btn btn-danger" name="delete_client"  onclick="return confirm('votre confirmation')" value='<?= $row['id']; ?>'>Delete</button>
                        
                            </form>
                          </td>
                
                        </tr>
                       
                        <?php
                      }  
                      }
                    
                    else{
                      ?>
                      <tr><td colspan="6">No Record Found</td></tr>
                      <?php
                    }

                    ?>
                    <tr>
                      <td></td>
                    </tr>
                  </tbody>
                </table>
              </div>
          </div>
        </div>
      </div>
  </div>
 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>