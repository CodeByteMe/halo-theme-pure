<header class="header" itemscope itemtype="http://schema.org/WPHeader">
  <div class="slimContent">
    <div class="navbar-header">
      <#if settings.profile_enabled!true>
      <div class="profile-block text-center">
        <a id="avatar" href="${settings.profile_follow!}" target="_blank">
          <img class="img-circle img-rotate" src="${user.avatar!}" width="200" height="200">
        </a>
        <h2 id="name" class="hidden-xs hidden-sm">${user.nickname!}</h2>
        <h3 id="title" class="hidden-xs hidden-sm hidden-md">${user.description!}</h3>
        <small id="location" class="text-muted hidden-xs hidden-sm"><i class="icon icon-map-marker"></i> ${settings.profile_location!}</small>
      </div>
      </#if>
      <#include "../_search/index.ftl">
      <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <nav id="main-navbar" class="collapse navbar-collapse" itemscope itemtype="http://schema.org/SiteNavigationElement" role="navigation">
      <ul class="nav navbar-nav main-nav <%- theme.config.menu_highlight ? 'menu-highlight' : '' %>">
        <@menuTag method="list">
            <#if menus?? && menus?size gt 0>
                <#list menus as menu>
                  <li class="menu-item menu-item-<%= itemName %>">
                    <a href="${menu.url!}">
                      <#if settings.menu_icons!true>
                          <i class="icon ${menu.icon!}"></i>
                      </#if>
                      <span class="menu-title">${menu.name!}</span>
                    </a>
                  </li>
                </#list>
            </#if>
        </@menuTag>
      </ul>
<#--      <#include "social.ftl">-->
    </nav>
  </div>
</header>
