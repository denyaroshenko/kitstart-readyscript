{* Основной шаблон *}
{strip}
{$css_version=5}
{addcss file="/rss-news/" basepath="root" rel="alternate" type="application/rss+xml" title="t('Новости')"}
{addcss file="style.css"}
{addcss file="720.css"}
{addcss file="mobile.css"}
{addcss file="colorbox.css"}
{addcss file="custom_styles.css"} {* Файл для кастомных стилей *}
{addcss file="normalize.css"}
{addcss file="slick.css"}

{addcss file="style.less" rel="stylesheet/less"} {* Временно подключаем LESS напрямую *}
{* addcss file="style.min.css" *} {* Постоянно подключаем скомпилированный и минифицированный *}
{addjs file="less.min.js" footer="true"} {* Компилятор LESS *}

{addjs file="html5shiv.js" unshift=true header=true}
{addjs file="jquery.min.js" name="jquery" basepath="common" unshift=true header=true}
{addjs file="modernizr.touch.js"}
{addjs file="jquery.autocomplete.js"}
{addjs file="jquery.activetabs.js"}
{addjs file="jcarousel/jquery.jcarousel.min.js"}
{addjs file="jquery.touchswipe.min.js"}
{addjs file="jquery.form/jquery.form.js" basepath="common"}
{addjs file="jquery.cookie/jquery.cookie.js" basepath="common"}
{addjs file="jquery.switcher.js"}
{addjs file="jquery.ajaxpagination.js"}
{addjs file="jquery.colorbox.js"}
{addjs file="jquery.changeoffer.js?v=3"}
{addjs file="jquery.category.js"}

{addjs file="slick.min.js"}
{addjs file="common.js"}
{addjs file="theme.js"}
{addjs file="main.js"}

{assign var=shop_config value=ConfigLoader::byModule('shop')}
{if $shop_config}
    {addjs file="%shop%/jquery.oneclickcart.js"}
{/if}
{addmeta http-equiv="X-UA-Compatible" content="IE=Edge" unshift=true}
{$app->meta->add(['name' => 'viewport', 'content' => 'width=device-width, initial-scale=1.0'])|devnull}

{if $shop_config===false}{$app->setBodyClass('shopBase', true)}{/if}

{$app->setDoctype('HTML')}
{/strip}
{$app->blocks->renderLayout()}

{* Подключаем файл scripts.tpl, если он существует в папке темы. В данном файле
рекомендуется добавлять JavaScript код, который должен присутствовать на всех страницах сайта *}
{tryinclude file="%THEME%/scripts.tpl"}