<div class="content">
  <article id="<%= post.layout %>-<%= post.slug %>" class="article article-type-<%= post.layout %>" itemscope itemtype="http://schema.org/BlogPosting">
    <#include "post/gallery.ftl">
    <div class="article-header">
      <% if (post.link || post.title){ %>
        <%- partial('post/title', {class_name: 'article-title'}) %>
      <% } %>
      <div class="article-meta">
        <%- partial('post/date', {class_name: 'article-date', date_format: null}) %>
        <#include "post/category.ftl">
        <#include "post/tag.ftl">
        <#include "post/pv.ftl">
        <span class="post-comment"><i class="icon icon-comment"></i> <a href="<%- url_for(post.path) %>#comments" class="article-comment-link">评论</a></span>
        <#include "post/wordcount.ftl">
      </div>
    </div>
    <div class="article-entry marked-body" itemprop="articleBody">
      <% if (post.excerpt && index){ %>
        <%- post.excerpt %>
        <% if (theme.config.excerpt_link){ %>
          <p class="article-more-link">
            <a href="<%- url_for(post.path) %>#more"><%= theme.config.excerpt_link %></a>
          </p>
        <% } %>
      <% } else { %>
        <%- post.content %>
      <% } %>
    </div>
    <div class="article-footer">
      <#include "post/copyright.ftl">
    </div>
  </article>
  <% if (!index) { %>
    <#include "post/comment.ftl">
  <% } %>
</div>
<% if (!index){ %>
  <#include "post/nav.ftl">
  <#include "post/donate.ftl">
<% } %>