{% extends "admin/template/admin.volt" %}
{% block style %}

{% endblock %}
{% block content %}

    <div>
        <a class="btn btn-success" href="/root/categor/add">
            Добавить новою категорию

        </a>
    </div>

    <hr>
    <table class="table table-striped table-bordered bootstrap-datatable datatable responsive dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
        <thead>
        <tr role="row">
            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Название категории</th>
            <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Actions: activate to sort column ascending" style="width: 105px;"></th></tr>
        </thead>

        <tbody role="alert" aria-live="polite" aria-relevant="all">
        {% for categ in categors %}
            <tr class="odd">
                <td class=" sorting_1">{{ categ.title }}</td>
                <td class="center ">
                    <a class="btn btn-info" href="/root/categor/edit/{{ categ.id }}">
                        <i class="glyphicon glyphicon-edit icon-white"></i>
                    </a>
                    <a class="btn btn-danger" href="/root/categor/delete/{{ categ.id }}">
                        <i class="glyphicon glyphicon-trash icon-white"></i>
                    </a>
                </td>
            </tr>
        {% endfor %}
        </tbody></table>

{% endblock %}
{% block script %}

{% endblock %}