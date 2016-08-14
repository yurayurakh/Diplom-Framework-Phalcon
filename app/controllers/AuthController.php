<?php

class AuthController extends \Phalcon\Mvc\Controller
{

    private function _registerSession($admin){
        $this->session->set('auth', array(
            'id' => $admin->id,
            'name' => $admin->login,
            'role' => $admin->role
        ));
    }


    public function logoutAction()
    {
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->session->destroy();
        }
        $this->response->redirect("/");
        return 0;
    }

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

    public function loginAction()
    {
        $auth = $this->session->get('auth');
        if (!$auth) {
            if ($this->request->isPost()) {
                // Получение переменных методом POST
                $login = $this->request->getPost('login');
                $password = $this->request->getPost('password');
//              $password = sha1($password);
                $admin = User::findFirst(array(
                    "login = :login: AND password = :password: AND is_active = 1",
                    "bind" => array('login' => $login, 'password' => $password)
                ));
                $error ="";
                if ($admin != false) {
                    $this->_registerSession($admin);
                    // Выдаем контроллер, если пользователь существует
                    return $this->response->redirect("/admin");
                } else {
                    $error = 'ПОЖАЛУЙСТА ПРОВЕРЬТЕ ЛОГИН И ПАРОЛЬ';
                }
                $this->view->setVar('error',$error);
            }
        } else {
            $this->response->redirect("/");
            $this->view->disable();
            return 0;
        }

    }

    public function indexAction()
    {
        $auth = $this->session->get('auth');
        if ($auth) {
            $this->response->redirect("/admin");
        }
    }

    public function registrationAction()
    {
        $auth = $this->session->get('auth');
        if (!$auth) {
            if ($this->request->isPost()) {
                // Получение переменных методом POST
                $login = $this->request->getPost('login');
                $password = $this->request->getPost('password');
//              $password = sha1($password);
                $admin = User::findFirst(array(
                    "login = :login: AND password = :password: AND is_active = 1",
                    "bind" => array('login' => $login, 'password' => $password)
                ));
                $error ="";
                if ($admin != false) {
                    $this->_registerSession($admin);
                    // Выдаем контроллер, если пользователь существует
                    return $this->response->redirect("/admin");
                } else {
                    $error = 'ПОЖАЛУЙСТА ПРОВЕРЬТЕ ЛОГИН И ПАРОЛЬ';
                }
                $this->view->setVar('error',$error);
            }
        } else {
            $this->response->redirect("/");
            $this->view->disable();
            return 0;
        }
    }

}

