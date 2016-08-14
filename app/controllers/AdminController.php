<?php

class AdminController extends AdminBase
{


    public function onConstruct()
    {
        $auth = $this->session->get('auth');

        if (!$auth) {
            $this->dispatcher->forward(array(
                'controller' => 'auth',
                'action' => 'index'
            ));
        }
    }

    public function indexAction()
    {

    }
}

