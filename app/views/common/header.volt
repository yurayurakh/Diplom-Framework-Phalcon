<header class="banner">
    <div class="banner_logo">
        <a href="/">
            <img src="/images/logo/main.png" alt="">
        </a>
        <span class="banner_seo_text">Оптовый магазин телефонов elDelta</span>
    </div>
    <div class="banner_title">
        Інтернет-магазин "Електронних товарів"
    </div>
    <div class="banner_phone">
        <span>+38(097)</span>
        <span>83-23-330</span>
    </div>
    <div class="banner_auth" style="text-align: right;">
        {% if login != "" %}
            <div>{{ login }} </div>
            <a href="/auth/logout" class="banner_auth-link">Вийти</a><br>
            <a href="/admin" class="banner_auth-link">Панель управління</a>


        {% else %}
            <a href="/auth/" class="banner_auth-link">Увійти</a>
        {% endif %}

    </div>
</header>