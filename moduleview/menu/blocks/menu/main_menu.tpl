{if $items}
<div class="navbar navbar-inverse">
  <div class="container">
    <nav>
      <ul class="menu nav navbar-nav">
      	{include file="blocks/menu/main_menu__branch.tpl" menu_level=$items}
      </ul>
    </nav>
  </div>
</div>
{else}
    {include file="%THEME%/block_stub.tpl"  class="noBack blockSmall blockLeft blockMenu" do=[
        {adminUrl do="add" mod_controller="menu-ctrl"} => t("Добавьте пункт меню")
    ]}
{/if}