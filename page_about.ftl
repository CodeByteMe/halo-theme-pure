<#include "layout.ftl">
<@layout></@layout>
<%- partial('_partial/sidebar-about', {post: page}) %>
<main class="main" role="main">
  <%- partial('_partial/article-about', {post: page}) %>
</main>
<@footer></@footer>