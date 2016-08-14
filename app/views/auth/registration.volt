<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Регистрация</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <meta name="viewport" content="width=1000">

    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/css/main.css" media="screen, projection, print">
    <script src="/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<div class = "wrapper wrapper_auth">
    <div class="authorize_popup" id="authorize_popup">
        <div class="authorize_top"></div>
        <div class="authorize_body">
            <div class="fancy_title">
                Регистрация
            </div>
            <form action="/" method="post">
                <div class="authorize_body_inner">
                    <div class="authorize_inner_top"></div>


                    <label class="register_label">
                        <span class="register_text">Имя</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="text" name="user_name">
                                </span>
                            </span>
                    </label>
                    <label class="register_label">
                        <span class="register_text">Фамилия</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="text" name="user_last_name">
                                </span>
                            </span>
                    </label>
                    <label class="register_label">
                        <span class="register_text">Дата рождения</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="date" name="user_birth_date">
                                </span>
                            </span>
                    </label>
                    <label class="register_label">
                        <span class="register_text">E-mail</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="email" name="user_email">
                                </span>
                            </span>
                    </label>

                    <label class="register_label">
                        <span class="register_text">Логин</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="text" name="user_login">
                                </span>
                            </span>
                    </label>
                    <label class="register_label">
                        <span class="register_text">Пароль</span>
                                <span class="text_input">
                                    <span class="text_input_wrap">
                                <input type="password" name="user_password">
                                </span>
                            </span>
                    </label>

                    <div class="authorize_footer">
                        <div class="authorize_submit_block">
                            <!--                            <a href="/" class="authorize_submit_btn">Зарегистрироваться</a>-->
                        </div>
                    </div>
                    <input type="submit" value="Зарегистрироваться">

                    <div class="authorize_inner_bottom"></div>
                </div>
            </form>
        </div>
        <div class="authorize_bottom"></div>
    </div>
</div> <!-- wrapper -->

</body>
</html>

