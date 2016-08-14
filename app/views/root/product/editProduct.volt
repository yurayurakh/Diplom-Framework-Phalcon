{% extends "/admin/template/admin.volt" %}
{% block style %}

{% endblock %}
{% block content %}


    <h1>Редактировать продукт</h1>

    <form action="/root/product/edit" method="post">
        <input type="hidden" name="id" value="{{ prod.id }}">

        <div class="form-group">
            <label for="categor">Категория</label>
            <select name="categor" id="categor">
                {% for catalog in catalogg %}
                    <option value="{{ prod.id_catalog }}" {% if catalog.id == prod.id_catalog %} selected {% endif %}>{{ catalog.title }}</option>
                {% endfor %}
            </select>
        </div>
        <div class="form-group">
            <label for="name">Производитель</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Производитель" value="{{ prod.title }}">
        </div>
        <div class="form-group">
            <label for="name">Марка</label>
            <input type="text" class="form-control" name="mark" id="mark" placeholder="Марка" value="{{ prod.mark }}">
        </div>
        <div class="form-group">
            <label for="name">Количество</label>
            <input type="text" class="form-control" name="count" id="count" placeholder="Количество" value="{{ prod.count }}">
        </div>
        <div class="form-group">
            <label for="name">Стоимость</label>
            <input type="text" class="form-control" name="price" id="price" placeholder="Стоимость" value="{{ prod.price }}">
        </div>
        <div class="form-group">
            <label for="name">Описание</label>
            <textarea type="text" class="form-control" style="height: 200px;" name="description" id="description" placeholder="Описание">{{ prod.description }}</textarea>
        </div>
        <button type="submit" class="btn btn-default">Сохранить</button>
    </form>

{% endblock %}
{% block script %}

{% endblock %}