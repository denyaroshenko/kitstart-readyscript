<!-- {foreach from=$menu_level item=item}
<li class="menu__catalog-item {if !empty($item.child)}node{/if}{if $item.fields.typelink=='separator'} separator{/if}{if $item.fields->isAct()} act{/if}" {if $item.fields.typelink != 'separator'}{$item.fields->getDebugAttributes()}{/if}>
    {if $item.fields.typelink!='separator'}
        <a href="{$item.fields->getHref()}" {if $item.fields.target_blank}target="_blank"{/if}>{$item.fields.title}</a>
    {else}
        &nbsp;
    {/if}
    {if !empty($item.child)}
    <ul class="menu__catalog-2level">
        {include file="blocks/menu/main_menu__branch-catalog-level-2.tpl" menu_level=$item.child}
    </ul>
    {/if}
</li>
{/foreach} -->

{* Вставляет в шаблон блок Список категорий *}
{moduleinsert name="\Catalog\Controller\Block\Category" indexTemplate="blocks/category/catalog_menu.tpl"}