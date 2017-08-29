<div class="viewport body">
  {* Мобильное меню *}
  <div class="slide-menu">
      {* Иконка меню *}
      <div class="icon-close">
        <img src="/resource/img/close-btn.png">
      </div>
      {* Меню *}
      <ul>
        <li><a href="#">About</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Help</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>

    <header>
      <div class="container">
        <div class="header-middle">
          {* Логотип *}
          {moduleinsert name="\Main\Controller\Block\Logo" width="206" height="25"}

          {* Строка поиска *}
          {* Убрать обертку в модуль *}
          <div class="search">
            {moduleinsert name="\Catalog\Controller\Block\Searchline" width="206" height="25"}
          </div>

          {* Номер телефона, заказать обрытный звонок, адрес... *}
          <div class="contacts">
            <!-- Модальное окно обратного звонка -->
            <div id="openModal" class="modalDialog none">
              <div>
                <a href="#close" title="Закрыть" class="close-btn">×</a>
                <div class="feedbkForm">

                  <form method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="_block_id" value="1511262489">
                    <input type="hidden" name="form_id" value="2">
                    <p class="feedbkFormName">Заказать обратный звонок</p>


                    <table class="formTable tabFrame">
                      <tbody>
                        <tr class="feedbkRow">

                          <td class="title key">
                            Имя
                            <span class="required">*</span>
                          </td>
                          <td class="fieldVals value">


                            <input type="text" name="name" value="">
                          </td>
                        </tr>
                        <tr class="feedbkRow">

                          <td class="title key">
                            Телефон
                            <span class="required">*</span>
                          </td>
                          <td class="fieldVals value">


                            <input type="text" name="phone" value="">
                          </td>
                        </tr>

                      </tbody>
                    </table>
                    <div class="feedbkInfo">
                      <span class="required">*</span> - Поля обязательные для заполнения
                      <p class="policy-agreement">Нажимая кнопку "Отправить" я даю согласие на <a href="/policy-agreement/" target="_blank">обработку персональных данных</a>.</p>
                    </div>
                    <div class="feedbkButtonLine">
                      <input type="submit" class="formSave" value="Отправить">
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="contacts__phone">8 800 234-45-43</div>
            <a href="#openModal">Заказать звонок</a>
          </div>

          {* Корзина и пользователь *}
          <div class="userblock">
            {moduleinsert name="\Shop\Controller\Block\Cart" indexTemplate='blocks/cart/cart.tpl'}

            <div class="icon user">
              {* Иконка пользователя *}
              <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
              viewBox="0 0 482.9 482.9" style="enable-background:new 0 0 482.9 482.9;" xml:space="preserve">
                <g>
                  <path d="M239.7,260.2c0.5,0,1,0,1.6,0c0.2,0,0.4,0,0.6,0c0.3,0,0.7,0,1,0c29.3-0.5,53-10.8,70.5-30.5
                  c38.5-43.4,32.1-117.8,31.4-124.9c-2.5-53.3-27.7-78.8-48.5-90.7C280.8,5.2,262.7,0.4,242.5,0h-0.7c-0.1,0-0.3,0-0.4,0h-0.6
                  c-11.1,0-32.9,1.8-53.8,13.7c-21,11.9-46.6,37.4-49.1,91.1c-0.7,7.1-7.1,81.5,31.4,124.9C186.7,249.4,210.4,259.7,239.7,260.2z
                  M164.6,107.3c0-0.3,0.1-0.6,0.1-0.8c3.3-71.7,54.2-79.4,76-79.4h0.4c0.2,0,0.5,0,0.8,0c27,0.6,72.9,11.6,76,79.4
                  c0,0.3,0,0.6,0.1,0.8c0.1,0.7,7.1,68.7-24.7,104.5c-12.6,14.2-29.4,21.2-51.5,21.4c-0.2,0-0.3,0-0.5,0l0,0c-0.2,0-0.3,0-0.5,0
                  c-22-0.2-38.9-7.2-51.4-21.4C157.7,176.2,164.5,107.9,164.6,107.3z"/>
                  <path d="M446.8,383.6c0-0.1,0-0.2,0-0.3c0-0.8-0.1-1.6-0.1-2.5c-0.6-19.8-1.9-66.1-45.3-80.9c-0.3-0.1-0.7-0.2-1-0.3
                  c-45.1-11.5-82.6-37.5-83-37.8c-6.1-4.3-14.5-2.8-18.8,3.3c-4.3,6.1-2.8,14.5,3.3,18.8c1.7,1.2,41.5,28.9,91.3,41.7
                  c23.3,8.3,25.9,33.2,26.6,56c0,0.9,0,1.7,0.1,2.5c0.1,9-0.5,22.9-2.1,30.9c-16.2,9.2-79.7,41-176.3,41
                  c-96.2,0-160.1-31.9-176.4-41.1c-1.6-8-2.3-21.9-2.1-30.9c0-0.8,0.1-1.6,0.1-2.5c0.7-22.8,3.3-47.7,26.6-56
                  c49.8-12.8,89.6-40.6,91.3-41.7c6.1-4.3,7.6-12.7,3.3-18.8c-4.3-6.1-12.7-7.6-18.8-3.3c-0.4,0.3-37.7,26.3-83,37.8
                  c-0.4,0.1-0.7,0.2-1,0.3c-43.4,14.9-44.7,61.2-45.3,80.9c0,0.9,0,1.7-0.1,2.5c0,0.1,0,0.2,0,0.3c-0.1,5.2-0.2,31.9,5.1,45.3
                  c1,2.6,2.8,4.8,5.2,6.3c3,2,74.9,47.8,195.2,47.8s192.2-45.9,195.2-47.8c2.3-1.5,4.2-3.7,5.2-6.3
                  C447,415.5,446.9,388.8,446.8,383.6z"/>
                </g>
              </svg>
          </div>

          <div class="usercard none">
            <div class="usercard__body">
              <div class="usercard__wrapper">

                <div class="usercard__item-name">Супервизор Супервизов</div>


                <div class="usercard__item-balance">Баланс:&nbsp;
                  <a href="/my/balance/">0 р.</a>
                </div>

                <div class="usercard__item-list"><a href="/my/">Профиль</a></div>
                <div class="usercard__item-list"><a href="/my/orders/">Мои заказы</a></div>
                <div class="usercard__item-list"><a href="/my/balance/">Лицевой счет</a></div>

              </div>
              <div class="usercard__logout">
                <a href="/auth/logout/" class="t-drop-account__logout-exit">
                  <div class="usercard__logout-icon">
                    <svg id="Capa_1" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 384.971 384.971" style="enable-background:new 0 0 384.971 384.971;" xml:space="preserve"><g><g id="Sign_Out"><path d="M180.455,360.91H24.061V24.061h156.394c6.641,0,12.03-5.39,12.03-12.03s-5.39-12.03-12.03-12.03H12.03C5.39,0.001,0,5.39,0,12.031V372.94c0,6.641,5.39,12.03,12.03,12.03h168.424c6.641,0,12.03-5.39,12.03-12.03C192.485,366.299,187.095,360.91,180.455,360.91z"></path><path d="M381.481,184.088l-83.009-84.2c-4.704-4.752-12.319-4.74-17.011,0c-4.704,4.74-4.704,12.439,0,17.179l62.558,63.46H96.279c-6.641,0-12.03,5.438-12.03,12.151c0,6.713,5.39,12.151,12.03,12.151h247.74l-62.558,63.46c-4.704,4.752-4.704,12.439,0,17.179c4.704,4.752,12.319,4.752,17.011,0l82.997-84.2C386.113,196.588,386.161,188.756,381.481,184.088z"></path></g></g>
                    </svg>
                  </div>
                  Выйти</a>
                </div>
              </div>
            </div>
          </div>
              </div>

            </div>

          </div>
        </div>

        {* Главное меню *}
        {moduleinsert name="\Menu\Controller\Block\Menu" indexTemplate='blocks/menu/main_menu.tpl' root='9'}
      </header>

  <main>
    {block name="content"}{/block}
  </main>

  <footer class="footer">
      <div class="container">

        <div class="footer-main">
          <div class="footer-main__requezits">
            <div class="footer_column__title">Поставка со склада в Москве</div>
            {moduleinsert name="\Catalog\Controller\Block\Category" indexTemplate='theme:tehass/moduleview/catalog/blocks/category/catalog_menu-footer.tpl' root='0'}
          </div>
          <div class="footer__menu">
            <div class="footer_column__title">Производители</div>
            {moduleinsert name="\Catalog\Controller\Block\BrandList" indexTemplate='theme:tehass/moduleview/catalog/blocks/brands/brands_footer.tpl' pageSize=13}
          </div>
          <div class="footer__menu">

            <div class="footer_column__title">Компания</div>
            {moduleinsert name="\Menu\Controller\Block\Menu" indexTemplate='theme:tehass/moduleview/menu/blocks/menu/footer_menu.tpl' root='21'}
          </div>
          <div class="footer__contacts">
            <div class="footer__row">
              <div class="footer_column__title">Контакты</div>
              <div class="footer_column__items">
                <div class="footer_column__item-text">Рабочие дни 10:00-19:00</div>
                <div class="footer_column__item-text">8 (800) 555 32 32</div>
                <div class="footer_column__item-text">факс +7 (495) 960 23 13</div>
                <a class="footer_column__item-link" href="mailto:info@tehass.ru">info@tehass.ru</a>
              </div>
            </div>
            <div class="footer__row">
              <div class="footer_column__header">Офис:</div>
              <div class="footer_column__items">
                <div class="footer_column__item-text">Москва, схема проезда</div>
                <div class="footer_column__item-text">ул. Архитектора Власова, д.49</div>
              </div>
            </div>
            <div class="footer__row">
              <div class="footer_column__header">Склад:</div>
              <div class="footer_column__items">
                <div class="footer_column__item-text">Москва, схема проезда</div>
                <div class="footer_column__item-text">Электролитный пр., д.3, стр.2</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-copyright">
        <div class="container">
          <div class="footer-copyright__items">
            <span>© 2007-2017 Все права защищены</span>
            <span><a href="#">Создание сайта - Студия "Бобрик"</a></span>
          </div>
        </div>
      </div>
    </footer>
  <!-- Оставить заявку -->
  <div id="sendApplication" class="modalDialog">
    <div>
      <a href="#close" title="Закрыть" class="close-btn">&times;</a>
      {moduleinsert name="\Feedback\Controller\Block\Feedback" indexTemplate='blocks/feedback/feedback.tpl' form_id='3' hvalues=[] values=[]}
    </div>
  </div>
</div>

