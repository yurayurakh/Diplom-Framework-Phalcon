{% extends 'template/main-template.volt' %}
{% block title %}Продукция{% endblock %}

{% block carousel %}
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block content %}
    <section class="h1">Продукция</section>
    <ul class="products">
        {% for catalog in catalogs %}
        <li>
            <a href="/product/view/{{ catalog.title}}">
                <div class="products_img">
                    <img src="/images/content/preview/{{ catalog.title|lower }}.png" alt="">
                </div>
                <div class="products_title">
                    <span>{{ catalog.title }}</span>
                </div>
            </a>
        </li>
        {% endfor %}
    </ul>
{% endblock %}