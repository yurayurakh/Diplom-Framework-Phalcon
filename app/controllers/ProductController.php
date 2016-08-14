<?php

class ProductController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function viewAction($catalog_title)
    {
        $this->view->pick('layouts/viewProduct');
        $id_catalog = Catalog::findFirst("title = '". $catalog_title ."'")->id;
        $products = Products::find("id_catalog = " . $id_catalog);
        $this->view->setVar('title', $catalog_title)->setVar('prods', $products);
    }
    public function view_itemAction($catalog_title, $id_product)
    {
        $this->view->pick('layouts/itemProduct');
        $product = Products::findFirst("id = " . $id_product );
        $this->view->setVar('title', $catalog_title)->setVar('prod_item', $product);
    }

}

