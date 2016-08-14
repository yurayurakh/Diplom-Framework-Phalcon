<?php

use Phalcon\Mvc\Controller;

class AdminBase extends Controller
{
    public function initialize(){
        $auth = $this->session->get('auth');


        if ($auth){
            $login = $auth['name'];
            $role = $auth['role'];
            $id = $auth['id'];
        } else {
            $login = "";
        }

        $this->view->setVars(array(
            'login' => $login,
            'role' => $role,
            'id_user' => $id
        ));
    }


}
