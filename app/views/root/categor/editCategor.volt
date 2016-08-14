{% extends "/admin/template/admin.volt" %}
{% block style %}

{% endblock %}
{% block content %}


    <h1>Редактировать категорию</h1>

    <form action="/root/categor/edit" method="post">
        <input type="hidden" name="id" value="{{ cg.id }}">
        <div class="form-group">
            <label for="name">Название категории</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Название категории" value="{{ cg.title }}">
        </div>
        <button type="submit" class="btn btn-default">Сохранить</button>
    </form>

{% endblock %}
{% block script %}

{% endblock %}