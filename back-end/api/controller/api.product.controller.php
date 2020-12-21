<?php

    require_once 'model/product.model.php';
    require_once 'api/view/api.product.view.php';
    require_once 'api/controller/api.product.controller.php';
    require_once 'api/controller/api.controller.php';

    class ApiProductController extends ApiController {

        private $model;
        private $view;

        function __construct() {
            parent::__construct();
            $this->model = new ProductModel();
            $this->view = new ApiView();
        }

        public function getFlowers() {
            $flowers = $this->model->getFlowers();
            $this->view->response($flowers, 200);
        }

        // public function getProduct($params = null) {
        //     $id = $params[':ID'];
        //     $product = $this->model->getProduct($id);
        //     if ($product)
        //         $this->view->response($product, 200);
        //     else
        //         $this->view->response("Product $id do not exist :(", 404);   
        // }

        // public function deleteProduct($params = null) {
        //     $id = $params[':ID'];
        //     $result = $this->model->deleteProduct($id);
        //     if($result > 0)
        //         $this->view->response("Product $id has deleted", 200);
        //     else
        //         $this->view->response("Product $id do not exist :(", 404);
        // }

        // public function addProduct() {
        //     $body = $this->getData();
        //     $id = $this->model->addProduct($body->name,$body->date,$body->id_category);
        //     if ($id)    // verifica si la tarea existe
        //         $this->view->response( $this->model->getProduct($id), 200);
        //     else
        //         $this->view->response("Product has not insert", 404);
        // }

        // public function updateTicket($params = null) {
        //     $id = $params[':ID'];
        //     $body = $this->getData();
        //     $ticket = $this->ticketModel->getTicket($id);
        //     if (empty($ticket)) {
        //         $this->view->response("Ticket $id do not exist :(", 404);
        //     }else {
        //         $result = $this->ticketModel->updateTicketFromAPI($body->name,$body->date,$body->id_category,$id);
        //         if($result > 0)
        //             $this->view->response( $this->ticketModel->getTicket($id), 200);
        //         else
        //             $this->view->response("Ticket $id has not update :(", 204);
        //     }
        // }        

    }