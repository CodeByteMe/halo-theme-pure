<#include "layout.ftl">
<@layout></@layout>
<main class="main" role="main">
  <%- partial('_partial/archive-list', {index: true}) %>
  <%- partial('_partial/pagination', {type: 'page'}) %> 
</main>
<@footer></@footer>