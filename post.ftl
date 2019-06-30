<#include "layout.ftl">
<@layout layout="post" title="${post.title!} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${post.summary!}" canonical="${context!}/archives/${post.url!}"></@layout>
<#include "layout/_partial/sidebar-toc.ftl">
<main class="main" role="main">
  <#include "layout/_partial/article.ftl">
</main>
<@footer layout="post"></@footer>