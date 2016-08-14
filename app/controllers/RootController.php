<?php

class RootController extends AdminBase
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

        if ($role !== "1"){
            $this->response->redirect("/");
        }
    }
    public function indexAction()
    {

    }

    public function mailAction()
    {

    }

    public function userAction($action, $id_elem)
    {
        if($action) {
            switch ($action) {
                case  'active' : {
                    $is_active = $this->request->getPost('is_active');



                    $is_active = isset($is_active) ? "1" : "0";



                    $users = new User();
                    $users->id = $id_elem;
                    $users->is_active = $is_active;
                    if ($users->save() == false) {
                        echo "Мы не можем сохранить прямо сейчас: \n";
                        foreach ($users->getMessages() as $message) {
                            echo $message, "\n";
                        }
                    } else {
                        echo "успешно сохранено!";
                        return $this->response->redirect("/root/categor/");
                    }
                    break;
                }

            }
        }
        $users = User::find();
        $this->view->setVar('users', $users);
    }

    public function orderAction()
    {

    }
    public function categorAction($action, $id_product)
    {
        $this->view->pick('root/categor/categor');
        $categors = Catalog::find();
        $this->view->setVar('categors', $categors);

        if($action) {
            switch ($action) {
                case  'delete' : {
                    if($id_product) {
                        $prod = Catalog::findFirst($id_product);
                        if ($prod != false) {
                            if ($prod->delete() == false) {
                                echo "К сожалению, мы не можем удалить категорию так как в даной категории есть продукты: \n";

                            } else {
                                echo "Робот был успешно удален!";
                            }
                        }
                        return $this->response->redirect("/root/categor/");
                    }
                    break;
                }

                case  'add' : {
                    if ($this->request->isPost()){
                        $name = $this->request->getPost('name');
                        $categ = new Catalog();
                        $categ->title = $name;
                        if ($categ->save() == false) {
                            echo "Мы не можем сохранить прямо сейчас: \n";
                            foreach ($categ->getMessages() as $message) {
                                echo $message, "\n";
                            }
                        } else {
                            echo "успешно сохранено!";
                            return $this->response->redirect("/root/categor/");
                        }
                    } else {
                        $this->view->pick('/root/categor/addCategor');
                    }
                    break;
                }

                case  'edit' : {
                    if ($this->request->isPost()){
                        $id = $this->request->getPost('id');
                        $name = $this->request->getPost('name');
                        $categ = new Catalog();
                        $categ->id = $id;
                        $categ->title = $name;
                        if ($categ->save() == false) {
                            echo "Мы не можем сохранить прямо сейчас: \n";
                            foreach ($categ->getMessages() as $message) {
                                echo $message, "\n";
                            }
                        } else {
                            echo "успешно сохранено!";
                            return $this->response->redirect("/root/categor/");
                        }
                    } else {

                        $this->view->pick('/root/categor/editCategor');
                        $cg = Catalog::findFirst("id = " .$id_product);
                        $this->view->setVar("cg", $cg);
                    }
                    break;
                }
            }
        }
    }
    public function productAction($action, $id_product)
    {
        $this->view->pick('root/product/product');
        $prodcts = Products::find();
        $this->view->setVar('prodcts', $prodcts);

        if($action) {
            switch ($action) {
                case  'delete' : {
                    if($id_product) {
                        $prod = Products::findFirst($id_product);
                        if ($prod != false) {
                            if ($prod->delete() == false) {
                                echo "К сожалению, мы не можем удалить категорию так как в даной категории есть продукты: \n";

                            } else {
                                echo "Робот был успешно удален!";
                            }
                        }
                        return $this->response->redirect("/root/product/");
                    }
                    break;
                }

                case  'add' : {
                    if ($this->request->isPost()){
                        $name = $this->request->getPost('name');
                        $categor = $this->request->getPost('categor');
                        $mark = $this->request->getPost('mark');
                        $count = $this->request->getPost('count');
                        $price = $this->request->getPost('price');
                        $description = $this->request->getPost('description');
                        $prod = new Products();
                        $prod->title = $name;
                        $prod->mark = $mark;
                        $prod->count = $count;
                        $prod->price = $price;
                        $prod->description = $description;
                        $prod->id_catalog = $categor;
                        if ($prod->save() == false) {
                            echo "Мы не можем сохранить прямо сейчас: \n";
                            foreach ($prod->getMessages() as $message) {
                                echo $message, "\n";
                            }
                        } else {
                            echo "успешно сохранено!";
                            return $this->response->redirect("/root/product/");
                        }
                    } else {
                        $this->view->pick('/root/product/addProduct');
                        $catalogg = Catalog::find();
                        $this->view->setVar("catalogg", $catalogg);
                    }
                    break;
                }

                case  'edit' : {
                    if ($this->request->isPost()){
                        $id = $this->request->getPost('id');
                        $name = $this->request->getPost('name');
                        $categor = $this->request->getPost('categor');
                        $mark = $this->request->getPost('mark');
                        $count = $this->request->getPost('count');
                        $price = $this->request->getPost('price');
                        $description = $this->request->getPost('description');
                        $prod = new Products();
                        $prod->id = $id;
                        $prod->title = $name;
                        $prod->mark = $mark;
                        $prod->count = $count;
                        $prod->price = $price;
                        $prod->description = $description;
                        $prod->id_catalog = $categor;


                        if ($prod->save() == false) {
                            echo "Мы не можем сохранить прямо сейчас: \n";
                            foreach ($prod->getMessages() as $message) {
                                echo $message, "\n";
                            }
                        } else {
                            echo "успешно сохранено!";
                            return $this->response->redirect("/root/product/");
                        }
                    } else {

                        $this->view->pick('/root/product/editProduct');
                        $prod = Products::findFirst("id = " .$id_product);
                        $catalogg = Catalog::find();
                        $this->view->setVar("prod", $prod);
                        $this->view->setVar("catalogg", $catalogg);
                    }
                    break;
                }
            }
        }
    }
}

