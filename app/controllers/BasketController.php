<?php
class BasketController extends ControllerBase
{

    public function indexAction(){

    }
    public function prodAction($catalog_title, $id_product,$count){
        $count = $_POST['count'];
        $product = Products::findFirst("id = " . $id_product );

        $this->view->setVar('title', $catalog_title)->setVar('prod_item', $product)->setVar('count', $count);
    }

}