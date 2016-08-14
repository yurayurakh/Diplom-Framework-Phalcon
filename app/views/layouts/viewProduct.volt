{% extends 'template/main-template.volt' %}
{% block title %}Продукция{% endblock %}

{% block carousel %}
    {% include 'blocks/carousel.volt' %}
{% endblock %}


{% block content %}
    <section class="h1">Продукция {{ title }}</section>
    <ul class="products">
        {% for prod in prods %}
            <li>
                <a href="/product/view_item/{{ prod.title }}/{{ prod.id }}">
                    <div class="products_img">
                        <img src="/images/content/preview/{{ prod.title|lower }}.png" alt="">
                    </div>
                    <div class="products_title">
                        <span>{{ prod.title }}</span>
                    </div>
                </a>
            </li>
        {% endfor %}
    </ul>
{% endblock %}