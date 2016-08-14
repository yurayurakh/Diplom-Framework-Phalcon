{% extends 'template/main-template.volt' %}
{% block title %}Клієнтам{% endblock %}

{% block carousel %}
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block content %}
    <section class="h1">Клієнтам</section>
    <p>Інтернет-магазин "E-commerce" радий повідомити про поповнення асортименту.
        Тепер відвідувачам інтернет-магазину доступні товари категорії <a href="/product/view/ТВ%20теxніка">ТВ - техніка.</a></p>

    <h3>Шановні клієнти !</h3>


    <p>Просимо Вас уважно ознайомиться з умовами доставки замовлення!</p>
    <br/>
        <p>Пн-Пт з 09:30 - 18:00-Робочі дні.
        Суботта і неділя - вихідні (замовлення приймаються, але не відправляються.)
        Після оформлення замовлення, в цей же день або на наступний до 11:00, Вам на телефон прийде смс з сумою і реквізитами про оплату. Після оплати прохання написати смс або зателефонувати вказавши час суму та прізвище.
        Далі Ваше замовлення надходить на формування і відправку. Відправка замовлення здійснюється на наступний день або через день після оплати залежно від завантаженості. Номери декларації посилок відправляються на телефон (в день відправки посилок)-вечорі з 20: 00-23: 00 або на наступний день до 11:00.
        Субота і неділі замовлення тільки приймаються, всі замовлення надійшли в ці дні обробляються в понеділок.</p>
    <br/>
       <p>При відсутності в замовленні номера складу замовлення буде відправлений на склад №1.</p>
    <br/>
        <p>Відправлення здійснюється за допомогою транспортної компанії: "Нова пошта".</p>
    <br/>

{% endblock %}