<div class="catalog-dropdown-right">
    <div class="level-first">
        {foreach from=$menu_level item=item}
        <div class="category-name-inner">{$item.fields.title}
            {if !empty($item.child)}
            <ul>
                {include file="blocks/menu/branch.tpl" menu_level=$item.child}
            </ul>
            {/if}
        </div>
        {/foreach}
    </div>
</div>