<#include "layout.ftl">
<@layout layout="links" title="友情链接 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/links"></@layout>
<main class="main" role="main">
  <#include "layout/_partial/archive-link.ftl">
</main>
<@footer layout="links"></@footer>