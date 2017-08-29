<div class="menu__dropdown-menu">
    <div class="level-first">
        {foreach from=$menu_level item=item}
        <div class="category-name-inner">{$item.fields.title}</div>
            {if !empty($item.child)}
            <ul>
                {include file="blocks/menu/branch.tpl" menu_level=$item.child}
            </ul>
            {/if}
        {/foreach}
    </div>
</div>