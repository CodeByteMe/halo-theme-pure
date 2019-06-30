<aside class="sidebar" itemscope itemtype="http://schema.org/WPSideBar">
  <div class="slimContent">
    <#if settings.sidebar_board!true>
      <#include "../_widget/board.ftl">
    </#if>
    <#if settings.sidebar_category!true>
      <#import "../_widget/category.ftl" as c>
      <@c.categories />
    </#if>
    <#if settings.sidebar_tag!true>
      <#import "../_widget/tag.ftl" as t>
      <@t.tags />
    </#if>
    <#if settings.sidebar_tagcloud!true>
      <#import "../_widget/tagcloud.ftl" as tc>
      <@tc.tagcloud />
    </#if>
    <#if settings.sidebar_archive!true>
      <#import "../_widget/archive.ftl" as a>
      <@a.archive />
    </#if>
    <#if settings.sidebar_recent_posts!true>
      <#import "../_widget/recent_posts.ftl" as r>
      <@r.recent_posts />
    </#if>
  </div>
</aside>
