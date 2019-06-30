<#include "layout.ftl">
<@layout layout="repository" title="${sheet.title} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url!}"></@layout>
<main class="main" role="main">
    <#include "layout/_partial/archive-repository.ftl">
</main>
<@footer layout="repository"></@footer>