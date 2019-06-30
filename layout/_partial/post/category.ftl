<#if post.categories?? && post.categories?size gt 0>
  <span class="article-category">
    <i class="icon icon-folder"></i>
    <#list post.categories as category>
      <a class="article-category-link" href="${context!}/categories/${category.slugName!}/">${category.name!}</a>
    </#list>
  </span>
</#if>