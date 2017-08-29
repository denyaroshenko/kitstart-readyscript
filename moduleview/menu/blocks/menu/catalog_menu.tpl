{* Список категорий из 3-х уровней*}
{if $dirlist}
    {foreach $dirlist as $dir}
    <li class="menu__catalog-item" {$dir.fields->getDebugAttributes()}>
        <a href="{$dir.fields->getUrl()}">{$dir.fields.name}</a>
        {if !empty($dir.child)}
            {* Второй уровень *}
            <ul class="menu__catalog-2level">
            	<div class="catalog-dropdown-right" style="column-count: 3;">
	            	{foreach $dir.child as $subdir}
		    					<div class="level-first" >
		                <div class="category-name-inner">{$subdir.fields.name}</div>
                    {* Третий уровень *}
                    <ul>
                      {foreach $subdir.child as $subdir2}
                        <li><a href="{$subdir2.fields->getUrl()}">{$subdir2.fields.name}</a></li>
                      {/foreach}
                    </ul>
	            		</div>
	            	{/foreach}
			        </div>
            </ul>
        {/if}
    </li>
    {/foreach}
{else}
    {include file="%THEME%/block_stub.tpl"  class="blockCategory blockSmall" do=[
        [
            'title' => t("Добавьте категории товаров"),
            'href' => {adminUrl do=false mod_controller="catalog-ctrl"}
        ]
    ]}
{/if}