{% extends 'template/main-template.volt' %}
{% block title %}Контакти{% endblock %}

{% block carousel %}
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block content %}
    <section class="h1">Контакти</section>
    <section class="address">
        <div class="contacts_title">Наш адрес</div>
        <div class="address_direction">
            <span>29000, Хмельницька область, м. Хмельницький , вул. Інститутська 11/3</span>
            <span>Телефон: +38(097) 83-23-330</span>
        </div>
        <div class="address_map">
            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=Yb4EijlyQHnMvI43evwFlK9WbKDrN2ff&width=647&height=326&lang=ru_UA&sourceType=constructor&scroll=true"></script>
            <div class="addres_lt"></div>
            <div class="addres_rt"></div>
            <div class="addres_lb"></div>
            <div class="addres_rb"></div>
            <div class="addres_left"></div>
            <div class="addres_right"></div>
            <div class="addres_top"></div>
            <div class="addres_bottom"></div>
        </div>
    </section>
    <section class="feedback">
        <div class="contacts_title">Зв'яжіться з нами якщо у Вас виникли питання. Ми проконсультуємо Вас. </div>
        <form action="/Contact/send" method="post">
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
                <textarea class="feedback_massage" name="message" placeholder="Текст повідомлення"></textarea>
                <div class="feedback_require_star"></div>
            </div>
            <div class="feedback_submit_block">
                <a href="" class="feedback_submit_btn" onclick="alert('Дані відправлено успішно!')">Відправити</a>
                <input type="submit">
            </div>
        </form>
    </section>
{% endblock %}