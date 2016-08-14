{% extends 'template/main-template.volt' %}
{% block title %}Корзина{% endblock %}

{% block carousel %}
    {% include 'blocks/carousel.volt' %}
{% endblock %}

{% block content %}
    <section class="h1">Корзина</section>
    <section class="h1 title">{{ prod_item.title }}</section>
    <div class="products_img">
        <div>
            <img class="prod" src="/images/content/preview/{{ title|lower }}.png" alt="" >
        </div>
        <ul style="clear: both; margin-top: 20px;">
            <li><b>Ціна</b>: - {{ prod_item.price*count }} гривень</li>
            <li><b>Кількість</b>: - {{ count }} штук</li>
        </ul>
    </div>
    <div class="clearfix" style="clear: both; display: table;"></div>
    <section class="feedback baskets">
        <div class="contacts_title">Заповніть форму для отримання продукциї</div>
        <form action="/Contact/send" method="post">
            <input type="hidden" name="count"  value="{{ count }}">
            <input type="hidden" name="allsum"  value="{{ prod_item.price*count }}">
            <div class="feedback_form_field">
                <div class="text_input">
                    <div class="text_input_wrap">
                        <input type="text" name="name" placeholder="ПІБ" class="feedback_input">
                    </div>
                </div>
                <div class="feedback_require_star"></div>
            </div>
            <div class="feedback_form_field">
                <div class="text_input">
                    <div class="text_input_wrap">
                        <input type="text" name="phone" placeholder="Телефон" class="feedback_input">
                    </div>
                </div>
            </div>
            <div class="feedback_form_field">
                <div class="text_input">
                    <div class="text_input_wrap">
                        <input type="text" name="email" placeholder="E-MAIL" class="feedback_input">
                    </div>
                </div>
                <div class="feedback_require_star"></div>
            </div>
            <div class="feedback_form_field">
                <div class="text_input">
                    <div class="text_input_wrap">
                        <input type="text" name="city" placeholder="Місто/Селище міського типу/Село" class="feedback_input">
                    </div>
                </div>
                <div class="feedback_require_star"></div>
            </div>
            <div class="feedback_form_field">
                <div class="text_input">
                    <div class="text_input_wrap">
                        <input type="text" name="dos" placeholder="Доставка(номер віділення нової пошти)" class="feedback_input">
                    </div>
                </div>
                <div class="feedback_require_star"></div>
            </div>
            <div class="feedback_form_field">
                <textarea class="feedback_massage" name="message" placeholder="Ваші побажання і пропозиції"></textarea>
                <div class="feedback_require_star"></div>
            </div>
            <div class="feedback_submit_block">
                <a href="" class="feedback_submit_btn" onclick="alert('Дані відправлено успішно!Ваше замовлення {{ prod_item.title }} оброляється! З Вами звяжеться консультант для перевірки інформації. Дякуєм що ви з нами)')">Відправити</a>
                <input type="submit">
            </div>
        </form>
    </section>
{% endblock %}