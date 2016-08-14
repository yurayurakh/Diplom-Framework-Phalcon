<header class="banner">
    <div class="banner_logo">
        <a href="/">
            <img src="/images/logo/main.png" alt="">
        </a>
        <span class="banner_seo_text">Оптовый магазин телефонов elDelta</span>
    </div>
    <div class="banner_title">
        Оптовый магазин телефонов
    </div>
    <div class="banner_phone">
        <span>8(495)</span>
        <span>546-65-90</span>
    </div>
    <div class="banner_auth" style="text-align: right;">
        <?php if ($login != '') { ?>
            <div><?php echo $login; ?> </div>
            <a href="/auth/logout" class="banner_auth-link">Выйти</a><br>
            <a href="/admin" class="banner_auth-link">Панель управления</a>


        <?php } else { ?>
            <a href="/auth/" class="banner_auth-link">Войти</a>
        <?php } ?>

    </div>
</header>