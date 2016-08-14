{% extends "admin/template/admin.volt" %}
{% block style %}

{% endblock %}
{% block content %}
    <h1>Пользователи</h1>
<hr>
<table class="table table-striped table-bordered bootstrap-datatable datatable responsive dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
    <thead>
    <tr role="row">
        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Пользователь</th>
        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">E-mail</th>
        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Дата рождения</th>
        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Логин</th>
        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Статус</th>
        <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Права</th>
        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Actions: activate to sort column ascending" ></th></tr>
    </thead>

    <tbody role="alert" aria-live="polite" aria-relevant="all">
    {% for user in users %}
    <tr class="odd">
    <td class=" sorting_1">{{ user.name }} {{ user.lastname }}</td>
    <td class=" sorting_1">{{ user.birthday }}</td>
    <td class=" sorting_1">{{ user.email }}</td>
    <td class=" sorting_1">{{ user.login }}</td>
    <td class=" sorting_1">
        <form action="/root/user/active/{{ user.id }}" method="POST">
            <input type="checkbox" name="is_active" {% if user.is_active == '1'  %} checked {% endif %} />
        </form></td>
    <td class=" sorting_1">{{ user.role }}</td>
    <td class="center ">
    <a class="btn btn-danger" href="/root/user/delete/{{ user.id }}">
    <i class="glyphicon glyphicon-trash icon-white"></i>
    </a>
    </td>
    </tr>
    {% endfor %}
    </tbody></table>

    {% endblock %}
{% block script %}
    <script>
        $('[name="is_active"]').on('click', function(){

           $(this).parents('form').submit();
        })
    </script>
{% endblock %}