<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function initialize(){
        $catalogs = Catalog::find();
        $products = Products::find();
        $this->view->setVar('catalogs', $catalogs)->setVar('products', $products);
    }

    public function onConstruct(){
        $auth = $this->session->get('auth');


        if ($auth){
            $login = $auth['name'];
        } else {
            $login = "";
        }

        $this->view->setVars(array(
            'login' => $login
        ));
    }
}
