<?php

class ContactController extends ControllerBase
{
    private $adminemail = "yurayurakh@mail.ru";
    private $name;
    private $phone;
    private $email;
    private $message;
    private $count;
    private $allsum;
    private $buys=null;
    private $city=null;
    private $dos=null;
    private $msg;

    public function indexAction()
    {

    }
    public function sendAction()
    {
        $this->count = htmlspecialchars($_POST['count']);
        $this->allsum = htmlspecialchars($_POST['allsum']);
        $this->name = htmlspecialchars($_POST['name']);
        $this->phone = htmlspecialchars($_POST['phone']);
        $this->email = htmlspecialchars($_POST['email']);
        $this->message = htmlspecialchars($_POST['message']);
        $this->buys = htmlspecialchars($_POST['buys']);
        $this->city = htmlspecialchars($_POST['city']);
        $this->dos = htmlspecialchars($_POST['dos']);
        if($this->buys != null || $this->city !=null || $this->dos !=null){
            $this->msg =<<<HERE
<p>Імя: $this->name</p>
<p>E-mail: $this->email</p>
<p>Телефон: $this->phone</p>
<p>Загальна вартість: $this->allsum грн.</p>
<p>Загальна кількість: $this->count штук</p>
<p>Повідомлення: $this->message</p>
<p>Спосіб оплати: $this->buys</p>
<p>Місто/Селище міського типу/ Село: $this->city</p>
<p>Доставка: $this->dos</p>
HERE;
            mail($this->adminemail,"Покупка", $this->msg);
        }

        else {
            $this->msg =<<<HERE
<p>Імя: $this->name</p>
<p>E-mail: $this->email</p>
<p>Телефон: $this->phone</p>
<p>Повідомлення: $this->message</p>
HERE;
            mail($this->adminemail,"Консультация", $this->msg);
        }
        header("Location:/");
    }

}

