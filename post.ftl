<#include "layout.ftl">
<@layout></@layout>
<%- partial('_partial/sidebar-toc', {post: page, index: false}) %>
<main class="main" role="main">
  <%- partial('_partial/article', {post: page, index: false}) %>
</main>
<@footer></@footer>