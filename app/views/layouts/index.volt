{% extends 'template/main-template.volt' %}
{% block title %}Головна{% endblock %}

{% block carousel %}
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block right_sidebar %}
    {% include 'blocks/right_sidebar.volt' %}
{% endblock %}

{% block content %}

<div class="features">
    <div class="features_descript">
        <div class="feautures_descr_title">
            <div>Чому</div>
            <div>нас вибирають клієнти</div>
        </div>
        <div class="features_list_wrap">
            <ul class="features_descr_list">
                <li>
                    <a href="#">Висока якість</a> продукциї заводського и фабричного виробництва
                </li>
                <li>
                    <a href="#">Оригінальний дизайн</a> и широкий ассортимент виробів
                </li>
                <li>
                    <a href="#">Регулярне обновлення</a> товарного ассортимента
                </li>
                <li>
                    Можливість работы по <a href="#">попередньому замовленні</a>
                </li>
                <li>
                    <a href="#">Зручність вибору</a> і відвантаження товару - офіс, магазин, склад і сервісний центр
                     розташовуються на одній території
                </li>
                <li>
                    Використання <a href="#">гнучкої системи знижок</a> з різними формами оплати
                </li>
            </ul>
        </div>
    </div>

    {% endblock %}