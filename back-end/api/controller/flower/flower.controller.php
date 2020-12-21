<?php

    require_once 'model/flower/flower.model.php';
    require_once 'api/view/api.product.view.php';
    require_once 'api/controller/api.product.controller.php';
    require_once 'api/controller/api.controller.php';

    class FlowerController extends ApiController {

        private $model;
        private $view;

        function __construct() {
            parent::__construct();
            $this->model = new FlowerModel();
            $this->view = new ApiView();
        }

        public function getFlowers() {
            $flowers = $this->model->getFlowers();
            $this->view->response($flowers, 200);
        }

    }