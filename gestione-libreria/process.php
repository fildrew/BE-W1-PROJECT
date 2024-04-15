<?php
    include('connect.php');

    if (isset($_POST["create"])) {
        $titolo = $_POST["titolo"];
        $autore = $_POST["autore"]; 
        $anno_pubblicazione = $_POST["anno_pubblicazione"];
        $genere = $_POST["genere"];
        $description = $_POST["description"];

        $sqlInsert = "INSERT INTO libri (titolo, autore, anno_pubblicazione, genere, description) VALUES (?, ?, ?, ?,?)";
        $stmt = $pdo->prepare($sqlInsert);
        if ($stmt->execute([$titolo, $autore, $anno_pubblicazione , $genere, $description])) {
            session_start();
            $_SESSION["create"] = "Book added successfully!";
            header("Location:index.php");
            exit();
        } else {
            die("Something went wrong");
        }
    }

    if (isset($_POST["edit"])) {
        $titolo = $_POST["titolo"];
        $autore = $_POST["autore"];
        $anno_pubblicazione = $_POST["anno_pubblicazione"];
        $genere= $_POST["genere"];
        $description = $_POST["description"];
        $id = $_POST["id"];

        $sqlUpdate = "UPDATE libri SET titolo = ?, genere= ?, autore = ?, anno_pubblicazione = ? ,description = ? WHERE id = ?";
        $stmt = $pdo->prepare($sqlUpdate);
        if ($stmt->execute([$titolo, $genere, $anno_pubblicazione, $autore, $description, $id])) {
            session_start();
            $_SESSION["update"] = "Book updated successfully!";
            header("Location:index.php");
            exit();
        } else {
            die("Something went wrong");
        }
    }

    if (isset($_GET['search'])) {
        $search = $_GET['search'] ?? '';
        $genere= $_POST["genere"];
        $autore = $_POST["autore"];
        $anno_pubblicazione = $_POST["anno_pubblicazione"];

        $sqlSelect = "SELECT* FROM libri WHERE titolo LIKE ?  OR autore LIKE ? OR genere LIKE ? OR anno_pubblicazione LIKE ?";
        $stmt = $pdo->prepare($sqlSelect);
        $libri = $stmt->fetchAll();
        
        if ($stmt->execute(["%$search%", "%$search%", "%$search%", "%$search%"])) {
            session_start();
            $_SESSION["search"] = "Search Sucessful!";
            header("Location:search.php");
            exit();
        } else {
            die("Something went wrong");
        }
        
    }
?>