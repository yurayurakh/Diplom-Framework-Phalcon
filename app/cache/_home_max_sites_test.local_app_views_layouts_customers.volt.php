<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--><html class="no-js"> <!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Клиентам | e-commerce</title>
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
            <br>
            
            <section class="nav_wrap">
    <nav>
        <ul>
            <li>
                <a href="/about/" class="nav_link_wrap">
                    <div class="nav_link_triangle">
                        <div class="nav_link_outer">
                            <div class="nav_link_inner">
                                <span>о компании</span>
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
                                <span>новости</span>
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
                                <span>клиентам</span>
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
                                <span>Продукция</span>
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
                                <span>Контакты</span>
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
                            <input type="text" name="name" placeholder="Поиск по каталогу">
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
        <div class="categories_title">Телефоны смартфоны</div>
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
                                <a class="categories_inner_title" href="/product/view_item/<?php echo $catalog->title; ?>/<?php echo $product->id; ?>">
                                    <span><?php echo $product->title; ?> <?php echo $product->mark; ?></span>
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
                    
    <section class="h1">Клиентам</section>
    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
        magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>

    <h3>Абзац 1.10.32 "de Finibus Bonorum et Malorum", написанный Цицероном в 45 году н.э.</h3>

    <p>
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
        aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
        Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni
        dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor
        sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore
        magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis
        suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui
        in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas
        nulla pariatur?"</p>

    <p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and
        I will give you a complete account of the system, and expound the actual teachings of the great explorer of
        the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because
        it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that
        are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself,
        because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some
        great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to
        obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that
        has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>


                    
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
                    &copy; 2015 ООО «Лофтскулл». Все права защищены
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