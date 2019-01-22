<#include "layout.ftl">
<@layout></@layout>
<main class="main" role="main">
  <article class="article article-tags post-type-list" itemscope="">
    <header class="article-header">
      <h1 itemprop="name" class="hidden-xs"><%= page.title %></h1>
      <p class="text-muted hidden-xs"><%= _p('total.tag', site.tags.length) %></p>
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
      <% site.tags.each(function(item){ %>
      <h3 class="panel-title mb-1x">
        <a href="<%- url_for(item.path) %>" title="#<%= item.name %>"># <%= item.name %></a>
        <small class="text-muted">(Total <%= item.posts.length %> articles)</small>
      </h3>
      <div class="row">
        <% item.posts.each(function(post, i){ %>
        <div class="col-md-6">
          <%- partial('_partial/item-post', {post: post, type: 'card'}) %>
        </div>
        <% }) %>
      </div>
      <% }) %>
    </div>
  </article>
</main>
<@footer></@footer>