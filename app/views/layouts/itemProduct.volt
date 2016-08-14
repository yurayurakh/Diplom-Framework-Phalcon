{% extends 'template/main-template.volt' %}
{% block title %}Продукция{% endblock %}

{% block carousel %}
    <br>
    <br>
    <br>
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block content %}
    <br>
    <section class="h1">{{ prod_item.title }}</section>
    <div class="products_img">
         <div>
        <img src="/images/content/preview/{{ prod_item.title|lower }}.png" alt="" >
        </div>
        <p>{{ prod_item.description }}</p>

        <ul style="clear: both; margin-top: 20px;">
            <li><b>Ціна</b>: - {{ prod_item.price }} гривень</li>
            <li><b>Марка</b>: - {{ prod_item.mark }}</li>
            <li><b>Категорія</b>: {{ title }}</li>
            {#{% if login != "" %}#}

                {% if prod_item.count > 1 %}
                <form action="/basket/prod/{{ prod_item.title }}/{{ prod_item.id }}" method="post">
                    <input type="hidden" name="basket" value="{{ prod_item.id }}">
                    <br>
                    <label>Кількість продукциї:</label>
                    <select name="count">
                        {% for index in 1..prod_item.count  %}
                        <option value="{{ index }}">{{ index }}</option>
                        {% endfor %}
                    </select>
                    <br>
                    <br>
                    <input type="submit" class="add-basket" value="Добавити в корзину">
                </form>
                    <a class="back-home" href="/">Повернутися на головну сторінку</a>
                {% else %}
                    <h2>Товар закінчився</h2>
                {% endif %}
            {#{% else %}
                <h3 style="color: red;">Будь-ласка <a href="/auth/">зарееструватися</a> щоб провести покупку!!!</h3>
            {% endif %}#}
        </ul>

    </div>

{% endblock %}