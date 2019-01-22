<#include "layout.ftl">
<@layout></@layout>
<main class="main" role="main">
  <article class="content article article-tags post-type-list" itemscope="">
    <header class="article-header">
      <h1 itemprop="name" class="hidden-xs"><%= __('page.tag') + ': ' + page.tag %></h1>
      <p class="text-muted hidden-xs"><%= _p('total.article', page.posts.length) %></p>
      <nav role="navigation" id="nav-main" class="okayNav">
        <ul>
          <li><a href="/tags">All</a></li>
          <% site.tags.each(function(item){ %>
          <li><a href="/<%= item.path %>"><%= item.name %></a></li>
          <% }) %>
        </ul>
      </nav>
    </header>
    <!-- /header -->
    <div class="article-body">
      <div class="row">
        <%- partial('_partial/archive-tag', { type: 'tag' }) %>
      </div>
    </div>
  </article>
  <%- partial('_partial/pagination', {type: 'page'}) %> 
</main>
<@footer></@footer>