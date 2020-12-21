<?php

    require_once 'model/connection.model.php';

    class ProductModel {

        private $db;

        function __construct() {
            $connection = new Connection();
            $this->db = $connection->getConnection();
        }

        // function getProducts() {
        //     $query = $this->db->prepare('SELECT * FROM product');
        //     $query->execute();
        //     return $query->fetchAll(PDO::FETCH_OBJ);
        // }

        function getFlowers() {
            $query = $this->db->prepare('SELECT flowers.*, flowers_types.name as name, flowers_types.price as price, flowers_types.detail as detail FROM flowers INNER JOIN flowers_types ON flowers.type_id = flowers_types.flower_type_id');
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }

        // function getProduct($product_id) {
        //     $query = $this->db->prepare('SELECT FROM products WHERE product_id=?');
        //     $query->execute(array($product_id));
        //     return $query->fetch(PDO::FETCH_OBJ);
        // }
      
        // function deleteProduct($product_id){
        //     $query = $this->db->prepare('DELETE FROM products WHERE product_id=?');
        //     $query->execute(array($product_id));
        //     return $query->rowCount();
        // }
      
        // function addProduct($name, $date, $id_category){
        //     $query = $this->db->prepare('INSERT INTO Product(name, date, id_category) VALUES(?, ?, ?)');
        //     $query->execute(array($name, $date, $id_category));
        //     return $this->db->lastInsertId();
        // }

        // function updateProduct($name, $date, $id_category, $product_id){
        //     $query = $this->db ->prepare('UPDATE Product SET name=?, date=?, id_category=? WHERE product_id=?');
        //     $query->execute(array($name, $date, $id_category, $product_id));
        //     return $query->rowCount();
        // }
        
    }