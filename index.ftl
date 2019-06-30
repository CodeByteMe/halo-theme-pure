<#include "layout.ftl">
<@layout layout="index" title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}"></@layout>
<main class="main" role="main">
  <#include "layout/_partial/archive-list.ftl">
  <#include "layout/_partial/pagination.ftl">
</main>
<@footer layout="index"></@footer>