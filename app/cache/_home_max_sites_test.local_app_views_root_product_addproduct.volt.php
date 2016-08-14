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
                


    <h1>Добавить продукт</h1>

    <form action="/root/product/add" method="post">
        <div class="form-group">
            <label for="categor">Категория</label>
            <select name="categor" id="categor">
                <?php foreach ($catalogg as $catalog) { ?>
                    <option value="<?php echo $catalog->id; ?>" ><?php echo $catalog->title; ?></option>
                <?php } ?>
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


            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.0/jquery-ui.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    


</body>
</html>