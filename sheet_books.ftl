<#include "layout.ftl">
<@layout layout="books" title="${sheet.title} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url!}"></@layout>
<main class="main" role="main">
    <#include "layout/_partial/archive-book.ftl">
</main>
<@footer layout="books"></@footer>