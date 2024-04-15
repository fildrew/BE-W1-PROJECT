
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BOOK SEARCH</title>
<link rel="stylesheet" href="../main.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="wallpaper">
    <div class="container my-4">
        <header class="d-flex justify-content-between my-4">
                <h1 class="fw-bold">Book Search</h1>
                <div>
                <a href="index.php" class="btn btn-primary shadow rounded-pill">Back</a>
                </div>
        </header>

        <table class="table table-bordered opacity-75 shadow p-3 mb-5 bg-body rounded table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Action</th>
                    
                </tr>
            </thead>
            <tbody>
        

                <?php
                    include("connect.php");

                    if (isset($_GET['search'])) {
                        $search = $_GET['search'];
                        $sqlSelect = "SELECT* FROM libri WHERE titolo LIKE ?  OR autore LIKE ? OR genere LIKE ? OR anno_pubblicazione LIKE ?";
                       
                        $stmt = $pdo->prepare($sqlSelect);
                        $stmt->execute(["%$search%", "%$search%", "%$search%", "%$search%"]);
                        
                    
                        $libri = $stmt->fetchAll(PDO::FETCH_ASSOC);
                        
                        if ($libri) {
                            foreach ($libri as $data) {
                                ?>
                                <tr>
                                    <td><?php echo $data['id']; ?></td>
                                    <td><?php echo $data['titolo']; ?></td>
                                    <td><?php echo $data['autore']; ?></td>
                                    <td><?php echo $data['genere']; ?></td>
                                    <td>
                                        <a href="view.php?id=<?php echo $data['id']; ?>" class="btn btn-info shadow rounded-pill">Read More</a>
                                    </td>
                                </tr>
                                
                            <?php
                            }
                        } else {
                            echo "<h3>No books found</h3>";
                        }
                    } else {
                        echo "<h3>No search query provided</h3>";
                    }
                ?> 

            </tbody>
        </table>
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>