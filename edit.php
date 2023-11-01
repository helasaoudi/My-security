<?php include('dbcon.php') ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <title>add</title>
</head>
<body>
  <div class="container">
      <div class="row">
        <div class="col-md-12 mt-4">
          <div class="card">
              <div class="card-header">
                <h3>
                  Edit Patient
                  <a href="dashboard.php" class="btn btn-danger float-end">Back</a>
                </h3>
              </div>
              <div class="card-body">
                <?php 
                if(isset($_GET['id'])){
                    $id=$_GET['id'];


                    $query = "SELECT * FROM cordonneé WHERE id=$id";
                    $statement = $db->prepare($query);
                    $statement->execute();
                    $result = $statement->fetch(PDO::FETCH_OBJ);

                }
                ?>
                <form action="base.php" method="post">
                    <input type="hidden" name="id" value="<?=$result->id?>"/>
                    <div class="mb-3">
                        <label>code postal</label>
                        <input type="text" name="code" class="form-control" value="<?= $result->codepostal?>"/>
                    </div>
                    <div class="mb-3">
                        <label>ville</label>
                        <input type="text" name="ville" class="form-control" value="<?= $result->ville ?>"/>
                    </div>
                    <div class="mb-3">
                        <label>longitude</label>
                        <input type="text" name="long" class="form-control"value="<?= $result->lang ?>" />
                    </div>
                    <div class="mb-3">
                        <label>latitude</label>
                        <input type="text" name="lat" class="form-control" value="<?= $result->lat ?>"/>
                    </div>
                    <div class="mb-3">
                        <label>information</label>
                        <input type="text" name="info" class="form-control" value="<?= $result->info ?>"/>
                    </div>
                    <div class="mb-3">
                        <label>statistique</label>
                        <input type="text" name="stat" class="form-control" value="<?= $result->statistique ?>"/>
                    </div>
                    <div class="mb-3">
                        <button type="submit" name="update_patient_btn" class="btn btn-success">Update Patient</button>
                    </div>
                </form>
              </div>
          </div>
        </div>
      </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>