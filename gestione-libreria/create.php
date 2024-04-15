
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Book</title>
<link rel="stylesheet" href="../main.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="wallpaper">
<div class="container my-5">
    <header class="d-flex justify-content-between my-4">
            <h1>Add New Book</h1>
            <div>
            <a href="index.php" class="btn btn-primary  shadow rounded-pill">Back</a>
            </div>
        </header>
        
        <form action="process.php" method="post">
            <div class="form-elemnt my-4 shadow">
                <input type="text" id="titolo"  class="form-control" name="titolo" placeholder="Book Title:">
            </div>
            <div class="form-elemnt my-4 shadow">
                <input type="text" id="autore" class="form-control" name="autore" placeholder="Author Name:">
            </div>
            <div class="form-element my-4 shadow ">
                <input type="number" id="anno_pubblicazione" class="form-control"  name="anno_pubblicazione" placeholder="First Published:">
            </div>
            <div class="form-elemnt my-4 shadow">
                <select name="genere" id="genere" class="form-control">
                    <option value="">Select Book Type:</option>
                    <option value="Adventure">Adventure</option>
                    <option value="Crime">Crime</option>
                    <option value="Fantasy">Fantasy</option>
                    <option value="Horror"><span class="badge text-bg-danger">Horror</span></option>
                </select>
            </div>
            
            <div class="form-element my-4 shadow ">
                <textarea name="description"  class="form-control" placeholder="Book Description:"></textarea>
                
            </div>
            
            <div class="form-element my-4">
                <input type="submit" name="create" value="Add Book" class="btn btn-primary  shadow rounded-pill">
            </div>
        </form>
        
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>