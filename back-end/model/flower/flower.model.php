<?php

    require_once 'model/connection.model.php';

    class FlowerModel {

        private $db;

        function __construct() {
            $connection = new Connection();
            $this->db = $connection->getConnection();
        }

        function getFlowers() {
            $query = $this->db->prepare('SELECT flowers.*, flowers_types.name as name, flowers_types.price as price, flowers_types.detail as detail FROM flowers INNER JOIN flowers_types ON flowers.type_id = flowers_types.flower_type_id');
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        }
    }