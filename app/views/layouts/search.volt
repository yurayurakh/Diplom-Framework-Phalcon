{% extends 'template/main-template.volt' %}
{% block title %}Пошук{% endblock %}

{% block carousel %}
    <br>
    <br>
    <br>
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block content %}
    <h2 class="h2">Пошук по каталогу</h2>
    <div class="search-page">
        <form action="/search">
            <label>Назва товара</label>
            <input type="text" name="name" placeholder="Название товара" value="{{ name }}">
            <div class="price-group">
                <div class="min-price">
                    <label for="price-min">Мінімальна ціна грн.</label>
                    <input type="number" name="price-min" id="price-min" placeholder="0" value="{{ minprice }}">
                </div>
                <div class="max-price">
                    <label for="price-max">Максимальна ціна грн.</label>
                    <input type="number" name="price-max" id="price-max" placeholder="9999999" value="{{ maxprice }}">
                </div>
            </div>
            <label for="diler">Виробник</label>
            <select name="diler" id="diler" value="{{ diler }}">
                <option value="{{ diler }}" style="visibility: hidden">{{ diler }}</option>
                <option value="">не вибраний</option>
                {% for product in products %}
                    <option value="{{ product.title }}">{{ product.title }}</option>
                {% endfor %}
            </select>
            <br>
            <br>
            <label for="categor">Категорія</label>
            <select name="categor" id="categor">
                <option value="{{ categor }}" style="visibility: hidden">{{ categor }}</option>
                <option value="">не вибраний</option>
                {% for catalog in catalogs %}
                    <option value="{{ catalog.title }}">{{ catalog.title }}</option>
                {% endfor %}
            </select>
            <br>
            <br>
            <button type="submit">Пошук</button>
        </form>
    </div>
    <br>
    <h3>Результат пошуку</h3>
    <hr>


    <ul class="products">
        {% for re in rez %}
            <li>
                {% for catalog in catalogs %}
                {% if catalog.id == re.id_catalog %}
                <a href="/product/view_item/{{ catalog.title }}/{{ re.id }}" style="text-decoration:none;">
                    <div class="products_img">
                        <img src="/images/content/preview/{{ re.title|lower }}.png" alt="">
                    </div>
                    <div class="products_title" style="padding: 0px 13px;">
                        <div>{{ re.title }}</div>
                        <div><b>Ціна</b>: {{ re.price }} рублей</div>
                        <div><b>Марка</b>: {{ re.mark }}</div>
                        <div><b>Категорія</b>:{{ catalog.title }}</div>
                    </div>
                </a>
                {% endif %}
                {% endfor %}
            </li>
        {% endfor %}
    </ul>

{% endblock %}