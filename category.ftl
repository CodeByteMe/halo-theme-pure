<#include "layout.ftl">
<@layout></@layout>
<main class="main" role="main">
  <article class="content article article-categories article-type-list" itemscope="">
    <header class="article-header">
      <h1 itemprop="name" class="hidden-xs"><%= __('page.category') + ': ' + page.category %></h1>
      <p class="hidden-xs"><%= _p('total.article', page.posts.length) %></p>
      <nav role="navigation" id="nav-main" class="okayNav">
        <ul>
          <li><a href="/categories">All</a></li>
          <% site.categories.each(function(item){ %>
          <li><a href="/<%= item.path %>"><%= item.name %></a></li>
          <% }) %>
        </ul>
      </nav>
    </header>
    <!-- /header -->
    <div class="article-body">
      <%- partial('_partial/archive-category', { type: 'category' }) %>
    </div>
  </article>
  <%- partial('_partial/pagination', {type: 'page'}) %> 
</main>
<@footer></@footer>