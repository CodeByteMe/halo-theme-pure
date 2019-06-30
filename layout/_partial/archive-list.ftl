<#if posts.getTotalElements() lt 2>
  <#list posts.content as post>
      <#include "article.ftl">
  </#list>
  <#else>
    <div class="content article-list">
      <#list posts.content as post>
        <#include "archive-post.ftl">
      </#list>
    </div>
</#if>