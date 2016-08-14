<div class="content_area_right">
    <div class="categories accordeon">
        <div class="categories_title">Електронні товари</div>
        <ul class="categories_list accordeon_list">
            {% for catalog in catalogs %}
            <li>
                <div class="categories_list_item">
                    <div class="categories_item_title">
                        <a href="#">
                            <span>{{ catalog.title }}</span>
                        </a>
                    </div>
                    <ul class="categories_item_sublist accordeon_content">
                        {% for product in products %}
                        {% if product.id_catalog == catalog.id %}
                        <li class="with_popup">
                            <div >
                                <a class="categories_inner_title" href="/product/view_item/{{ product.title }}/{{ product.id }}">
                                    <span>{{ product.title }}</span>
                                </a>
                                <span class="categories_sublist_counter">{{ product.count }}</span>
                            </div>
                        </li>
                        {% endif %}
                        {% endfor %}
                    </ul>
                </div>
            </li>
        {% endfor %}
        </ul>
    </div>
</div>