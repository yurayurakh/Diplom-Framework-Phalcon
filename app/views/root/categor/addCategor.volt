{% extends "template/admin.volt" %}
{% block style %}

{% endblock %}
{% block content %}


    <h1>Добавить категорию</h1>

    <form action="/root/categor/add" method="post">
        <div class="form-group">
            <label for="name">Название категории</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Название категории">
        </div>
               <button type="submit" class="btn btn-default">Сохранить</button>
    </form>

{% endblock %}
{% block script %}

{% endblock %}