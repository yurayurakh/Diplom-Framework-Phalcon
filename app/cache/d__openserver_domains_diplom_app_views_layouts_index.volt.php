<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--><html class="no-js"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Головна | e-commerce</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <meta name="viewport" content="width=1000">

    <link rel="stylesheet" href="/public/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="/public/css/main.css" media="screen, projection, print">
    <link rel="stylesheet" type="text/css" href="/public/css/jquery.bxslider.css" media="screen, projection, print">
    
    <script src="/public/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    
</head>
<body>

<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<div class = "wrapper">
    <div class = "maincontent">
        <div class="container">
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
        <?php if ($login != '') { ?>
            <div><?php echo $login; ?> </div>
            <a href="/auth/logout" class="banner_auth-link">Вийти</a><br>
            <a href="/admin" class="banner_auth-link">Панель управління</a>


        <?php } else { ?>
            <a href="/auth/" class="banner_auth-link">Увійти</a>
        <?php } ?>

    </div>
</header>
            <br>
            
            <section class="nav_wrap">
    <nav>
        <ul>
            <li>
                <a href="/about/" class="nav_link_wrap">
                    <div class="nav_link_triangle">
                        <div class="nav_link_outer">
                            <div class="nav_link_inner">
                                <span>Про компанію</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="/news/" class="nav_link_wrap">
                    <div class="nav_link_triangle">
                        <div class="nav_link_outer">
                            <div class="nav_link_inner">
                                <span>Новини</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="/customers/" class="nav_link_wrap">
                    <div class="nav_link_triangle">
                        <div class="nav_link_outer">
                            <div class="nav_link_inner">
                                <span>Клієнтам</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="/product/" class="nav_link_wrap">
                    <div class="nav_link_triangle">
                        <div class="nav_link_outer">
                            <div class="nav_link_inner">
                                <span>Продукція</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="/contact/" class="nav_link_wrap">
                    <div class="nav_link_triangle">
                        <div class="nav_link_outer">
                            <div class="nav_link_inner">
                                <span>Контакти</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
        </ul>
        <div class="search">
            <form action="/search">
                <div class="search_input_wrap">
                    <div class="input_text">
                        <div class="input_text_wrap">
                            <input type="text" name="name" placeholder="Пошук по каталогу">
                        </div>
                    </div>
                    <input class="search_ico" value="" type="submit">
                </div>
                <input class="search_submit" type="submit" value="">
            </form>
        </div>
    </nav>
</section>

            

            <div class="content_area main_page">
                <div class="content_area_right">
    <div class="categories accordeon">
        <div class="categories_title">Електронні товари</div>
        <ul class="categories_list accordeon_list">
            <?php foreach ($catalogs as $catalog) { ?>
            <li>
                <div class="categories_list_item">
                    <div class="categories_item_title">
                        <a href="#">
                            <span><?php echo $catalog->title; ?></span>
                        </a>
                    </div>
                    <ul class="categories_item_sublist accordeon_content">
                        <?php foreach ($products as $product) { ?>
                        <?php if ($product->id_catalog == $catalog->id) { ?>
                        <li class="with_popup">
                            <div >
                                <a class="categories_inner_title" href="/product/view_item/<?php echo $product->title; ?>/<?php echo $product->id; ?>">
                                    <span><?php echo $product->title; ?></span>
                                </a>
                                <span class="categories_sublist_counter"><?php echo $product->count; ?></span>
                            </div>
                        </li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
            </li>
        <?php } ?>
        </ul>
    </div>
</div>
                <div class="content_area_left">
                    

<div class="features">
    <div class="features_descript">
        <div class="feautures_descr_title">
            <div>Чому</div>
            <div>нас вибирають клієнти</div>
        </div>
        <div class="features_list_wrap">
            <ul class="features_descr_list">
                <li>
                    <a href="#">Висока якість</a> продукциї заводського и фабричного виробництва
                </li>
                <li>
                    <a href="#">Оригінальний дизайн</a> и широкий ассортимент виробів
                </li>
                <li>
                    <a href="#">Регулярне обновлення</a> товарного ассортимента
                </li>
                <li>
                    Можливість работы по <a href="#">попередньому замовленні</a>
                </li>
                <li>
                    <a href="#">Зручність вибору</a> і відвантаження товару - офіс, магазин, склад і сервісний центр
                     розташовуються на одній території
                </li>
                <li>
                    Використання <a href="#">гнучкої системи знижок</a> з різними формами оплати
                </li>
            </ul>
        </div>
    </div>

    
                    
    <section class="features_sale">
    <div class="feautures_green_back"></div>
    <div class="feautures_sale_product">
        <img src="/images/content/preview/samsung galaxy s6.png" alt="">
    </div>
    <div class="feautures_sale_mask"></div>
    <div class="feautures_sale_descript">
        <a href="/product/view_item/Samsung%20Galaxy%20S6/28">Сезонний розпродаж Samsung Galaxy S6</a>
</div>
</section>

                </div>
            </div>

        </div>
        <div class="container">
        
    <section class="carousel">
    <div class="carousel_wrap">
        <ul>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo1.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo2.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo3.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo1.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo2.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo3.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo1.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo2.jpg" alt=""/>
                </a>
            </li>
            <li>
                <a href="#" class="carousel_img_wrap">
                    <img src="/images/content/logo3.jpg" alt=""/>
                </a>
            </li>
        </ul>
    </div>
    <div class="carousel_controls">
        <a href="#" class="carousel_control_left"></a>
        <a href="#" class="carousel_control_right"></a>
    </div>
</section>

            </div>
        <div class = "empty"></div>
    </div> <!-- container -->
</div> <!-- maincontent -->

</div> <!-- wrapper -->

<!-- FOOTER HERE -->
<div class = "container">
    <footer role = "contentinfo">
        <div class="footer_main_logo">
            <p>
                <span>
                    &copy; 2016 ООО «ХНУ СПР 11-1». Всі права захищені
                </span>
            </p>
        </div>
    </footer>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/js/vendor/jquery-1.8.3.min.js"><\/script>')</script>

<script src="/js/cufon-yui.js"></script>
<script src="/js/DIN_Pro_Medium_500.font.js"></script>
<script src="/js/jquery.jcarousel.min.js"></script>
<script src="/js/jquery.dotdotdot-1.5.6-packed.js"></script>
<script src="/js/jquery.fancybox.pack.js"></script>
<script src="/js/jquery.placeholder.min.js"></script>
<script src="/js/HelveticaC_400.font.js"></script>
<script src="/js/jquery.ezmark.js"></script>
<script src="/js/jquery.bxslider.min.js"></script>
<script src="/js/main.js"></script>

</body>
</html>