<#include "layout.ftl">
<@layout layout="categories" title="分类 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/categories"></@layout>
<main class="main" role="main">
  <article class="article article-categories article-type-list" itemscope="">
    <header class="article-header">
      <h1 itemprop="name" class="hidden-xs"><%= page.title %></h1>
      <p class="text-muted hidden-xs"><%= _p('total.category', site.categories.length) %></p>
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
      <% site.categories.each(function(item){ %>
      <div class="panel panel-default b-no">
        <div class="panel-heading" role="tab">
          <h3 class="panel-title">
            <a data-toggle="collapse" href="#collapse<%= item.name %>" aria-expanded="true">
              <i class="icon icon-folder text-active"></i><i class="icon icon-folder-open text"></i>
              <%= item.name %>
            </a>
            <small class="text-muted">(Total <%= item.posts.length %> articles)</small>
          </h3>
        </div>
        <div id="collapse<%= item.name %>" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading<%= item.name %>">
          <div class="panel-body">
            <div class="collection">
              <% item.posts.each(function(post){ %>
                <%- partial('_partial/item-post', {post: post, type: 'link'}) %>
              <% }) %>
            </div>
          </div>
        </div>
      </div>
      <% }) %>
    </div>
  </article>
</main>
<@footer layout="categories"></@footer>