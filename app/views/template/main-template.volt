<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--><html class="no-js"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>{% block title %}{% endblock %} | e-commerce</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <meta name="viewport" content="width=1000">

    <link rel="stylesheet" href="/public/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/public/css/main.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="/public/css/jquery.bxslider.css" media="screen, projection, print">
    {% block styles %}{% endblock %}
    <script src="/public/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    {% block topscripts %}{% endblock %}
</head>
<body>

<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<div class = "wrapper">
    <div class = "maincontent">
        <div class="container">
            {% include 'common/header.volt' %}
            <br>
            {% block slider %}{% endblock %}
            {% include 'common/top_menu.volt' %}

            {% block middle_slider %}{% endblock %}

            <div class="content_area main_page">
                {% include 'common/left_bar.volt' %}
                <div class="content_area_left">
                    {% block content %}{% endblock %}
                    {% block right_sidebar %}{% endblock %}
                </div>
            </div>

        </div>
        <div class="container">
        {% block carousel %}{% endblock %}
            </div>
        <div class = "empty"></div>
    </div> <!-- container -->
</div> <!-- maincontent -->

</div> <!-- wrapper -->

{% include 'common/footer.volt' %}
{% include 'common/scripts.volt' %}
{% block scripts %}{% endblock %}
</body>
</html>