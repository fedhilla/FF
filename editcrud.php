<?php
include "./php/config.php";
$id = $_GET["id"];

if (isset($_POST["submit"])) {
  $nama = $_POST['nama'];
  $email = $_POST['email'];
  $instansi = $_POST['instansi'];
  $judul = $_POST['judul'];
  $link = $_POST['link'];

  $sql = "UPDATE `crud` SET `nama`='$nama',`email`='$email',`instansi`='$instansi', `judul`='$judul', `link`='$link' WHERE id = $id";

  $result = mysqli_query($con, $sql);

  if ($result) {
    header("Location: admin.php?msg=Data updated successfully");
  } else {
    echo "Failed: " . mysqli_error($con);
  }
}

?>




<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <title>Add Your Project</title>
  <link rel="shorcut icon" type="image" href="Logo.png" />
</head>

<body>
  <nav class="navbar navbar-light justify-content-center fs-3 mb-5">
    Add Yout Project
  </nav>

  <div class="container">
    <div class="text-center mb-4">
      <h3>Edit User Information</h3>
      <p class="text-muted">Click update after changing any information</p>
    </div>

    <?php
    $sql = "SELECT * FROM `crud` WHERE id = $id LIMIT 1";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_assoc($result);
    ?>

    <div class="container d-flex justify-content-center">
      <form action="" method="post" style="width:50vw; min-width:300px;">
        <div class="row mb-3">
        <div class="col">
                  <label class="form-label">Name:</label>
                  <input type="text" class="form-control" name="nama" placeholder="Albert">
               </div>

               <div class="col">
                  <label class="form-label">Email:</label>
                  <input type="email" class="form-control" name="email" placeholder="name@example.com">
               </div>
        </div>

            <div class="mb-3">
               <label class="form-label">Instansi:</label>
               <input type="text" class="form-control" name="instansi" placeholder="BUMN">
            </div>

            <div class="mb-3">
               <label class="form-label">Judul:</label>
               <input type="text" class="form-control" name="judul" placeholder="https:....com">
            </div>

            <div class="mb-3">
               <label class="form-label">Link:</label>
               <input type="text" class="form-control" name="link" placeholder="https:....com">
            </div>

            <div>
               <button type="submit" class="btn btn-success" name="submit">Save</button>
               <a href="index.php" class="btn btn-danger">Cancel</a>
            </div>
        <br/>
        <div>
          <button type="submit" class="btn btn-success" name="submit">Update</button>
          <a href="index.php" class="btn btn-danger">Cancel</a>
        </div>
      </form>
    </div>
  </div>

  <!-- Bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>

</html>