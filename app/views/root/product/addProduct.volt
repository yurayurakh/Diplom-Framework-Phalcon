{% extends "template/admin.volt" %}
{% block style %}

{% endblock %}
{% block content %}


    <h1>Добавить продукт</h1>

    <form action="/root/product/add" method="post">
        <div class="form-group">
            <label for="categor">Категория</label>
            <select name="categor" id="categor">
                {% for catalog in catalogg %}
                    <option value="{{ catalog.id }}" >{{ catalog.title }}</option>
                {% endfor %}
            </select>
        </div>
        <div class="form-group">
            <label for="name">Производитель</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Производитель" >
        </div>
        <div class="form-group">
            <label for="name">Марка</label>
            <input type="text" class="form-control" name="mark" id="mark" placeholder="Марка">
        </div>
        <div class="form-group">
            <label for="name">Количество</label>
            <input type="text" class="form-control" name="count" id="count" placeholder="Количество">
        </div>
        <div class="form-group">
            <label for="name">Стоимость</label>
            <input type="text" class="form-control" name="price" id="price" placeholder="Стоимость">
        </div>
        <div class="form-group">
            <label for="name">Описание</label>
            <textarea type="text" class="form-control" style="height: 200px;" name="description" id="description" placeholder="Описание"></textarea>
        </div>
        <button type="submit" class="btn btn-default">Сохранить</button>
    </form>

{% endblock %}
{% block script %}

{% endblock %}