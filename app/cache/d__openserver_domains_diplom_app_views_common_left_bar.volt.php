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