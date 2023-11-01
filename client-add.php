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
                  Add new Patient
                  <a href="dashboard.php" class="btn btn-danger float-end">Back</a>
                </h3>
              </div>
              <div class="card-body">
                <form action="base.php" method="post">
                    <div class="mb-3">
                        <label>code postal</label>
                        <input type="text" name="code" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label>ville</label>
                        <input type="text" name="ville" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label>info</label>
                        <input type="text" name="info" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label>latitude</label>
                        <input type="text" name="lat" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label>longitude</label>
                        <input type="text" name="lang" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <label>statistique</label>
                        <input type="text" name="stat" class="form-control" />
                    </div>
                    <div class="mb-3">
                        <button type="submit" name="save_patient_btn" class="btn btn-primary">Save Patient</button>
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