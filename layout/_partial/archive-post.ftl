<article class="article article-type-<%= post.layout %>" itemscope itemtype="http://schema.org/BlogPosting">
  <div class="article-header">
    <%- partial('post/title', {class_name: 'article-title'}) %>
  </div>
  <% if (post.excerpt){ %>
  <div class="article-entry text-muted" itemprop="description">
    <%- post.excerpt %>
  </div>
  <% } %>
  <p class="article-meta">
    <%- partial('post/date', {class_name: 'article-date', date_format: 'MMM D'}) %>
    <#include "post/category.ftl">
    <#include "post/tag.ftl">
    <span class="post-comment"><i class="icon icon-comment"></i> <a href="<%- url_for(post.path) %>#comments" class="article-comment-link">评论</a></span>
  </p>
</article>
