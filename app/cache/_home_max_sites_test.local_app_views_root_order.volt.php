<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Админ панель</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    


</head>
<body>
    <!-- Header -->
    <div id="top-nav" class="navbar navbar-inverse navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-toggle"></span>
                </button>
                <a class="navbar-brand" href="/admin">Андмин панель</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a href="/auth/logout"><i class="glyphicon glyphicon-lock"></i> Выйти</a>
                    </li>
                </ul>
            </div>
        </div><!-- /container -->
    </div>
    <!-- /Header -->
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <!-- left -->
                <hr>

                <ul class="nav nav-stacked">

                    <li><a href="/admin/<?php echo $id_user; ?>/order/">Мои Заказы</a></li>
                    <?php if ($role === '1') { ?>
                    <hr>
                    <li><a href="/root/categor/">Категории товаров</a></li>
                    <hr>

                    <li><a href="/root/product/">Товары</a></li>
                    <hr>

                    <li><a href="/root/order/">Заказы</a></li>
                    <hr>

                    <li><a href="/root/user/">Пользователи</a></li>
                    <hr>
                    <li><a href="/root/mail/">Рассылка</a></li>

                    <?php } ?>
                </ul>

                <hr>

            </div><!-- /span-3 -->
            <div class="col-sm-9">
                <hr>
                
    <h1>Заказы</h1>
    <hr>
    <table class="table table-striped table-bordered bootstrap-datatable datatable responsive dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
        <thead>
        <tr role="row">
            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Пользователь</th>
            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Товар</th>
            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Статус</th>
            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Username: activate to sort column descending">Цена</th>
            <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Actions: activate to sort column ascending" style="width: 105px;"></th></tr>
        </thead>

        
        
            
                
                
                
                
                
                    
                        
                    
                    
                        
                    
                
            
        
        


            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    


</body>
</html>