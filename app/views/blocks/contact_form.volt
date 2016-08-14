<section class="feedback">
    <div class="contacts_title">Свяжитесь с нами</div>
    <form action="" method="post">
        <div class="feedback_form_field">
            <div class="text_input">
                <div class="text_input_wrap">
                    <input type="text" name="fio" placeholder="ФИО" class="feedback_input">
                </div>
            </div>
            <div class="feedback_require_star"></div>
        </div>
        <div class="feedback_form_field">
            <div class="text_input">
                <div class="text_input_wrap">
                    <input type="text" name="phone" placeholder="Телефон" class="feedback_input">
                </div>
            </div>
        </div>
        <div class="feedback_form_field">
            <div class="text_input">
                <div class="text_input_wrap">
                    <input type="text" name="email" placeholder="E-MAIL" class="feedback_input">
                </div>
            </div>
            <div class="feedback_require_star"></div>
        </div>
        <div class="feedback_form_field">
            <textarea class="feedback_massage" name="message" placeholder="Текст сообщения"></textarea>
            <div class="feedback_require_star"></div>
        </div>
        <div class="feedback_form_field">
            <div class="g-recaptcha" data-sitekey="{{ config.captcha.google_recaptcha_public }}"></div>
        </div>
        <div class="feedback_submit_block">
            <a href="#" class="feedback_submit_btn">Отправить</a>
            <input type="submit">
        </div>
    </form>
</section>