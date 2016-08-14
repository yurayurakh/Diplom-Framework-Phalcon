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
                <a class="navbar-brand" href="/admin">Андмін панель</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown">
                        <a href="/"><i class="glyphicon glyphicon-lock"></i> Вийти</a>
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

                    <li><a href="/admin/<?php echo $id_user; ?>/order/">Мої Закази</a></li>
                    <hr>
                    <li><a href="/root/categor/">Категорія товарів</a></li>
                    <hr>

                    <li><a href="/root/product/">Товари</a></li>
                    <hr>

                    <li><a href="/root/order/">Закази</a></li>
                    <hr>

                    <li><a href="/root/user/">Користувачі</a></li>
                    <hr>
                    <li><a href="/root/mail/">Розсилка</a></li>

                </ul>

                <hr>

            </div><!-- /span-3 -->
            <div class="col-sm-9">
                <hr>
                



            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    


</body>
</html>