{foreach from=$menu_level item=item}
        {* Каталог *}
        {if $item.fields.id == "10"}
        <li class="menu__catalog">
            <a href="/catalog/" class="icon-burger">{$item.fields.title}</a>
            <ul class="menu__catalog-dropdown-menu">
                {moduleinsert name="\Catalog\Controller\Block\Category" indexTemplate="blocks/category/catalog_menu.tpl"}
            </ul>
        </li>
        {else}
        {* Остальные пункты меню *}
        <li class="menu__item">
            <a href="{$item.fields->getHref()}">{$item.fields.title}</a>
            {if !empty($item.child)}
                <ul>
                    {include file="blocks/menu/main_menu__branch-level-2.tpl" menu_level=$item.child}
                </ul>
            {/if}
        </li>
        {/if}

{/foreach}