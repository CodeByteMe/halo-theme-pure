<div class="content">
  <article id="post-${post.title!}" class="article article-type-post" itemscope itemtype="http://schema.org/BlogPosting">
<#--    <#include "post/gallery.ftl">-->
    <div class="article-header">
      <h1 class="article-title" itemprop="name">${post.title!}</h1>
      <div class="article-meta">
        <span class="article-date">
          <i class="icon icon-calendar-check"></i>
          <a href="${context!}/archives/${post.url!}" class="article-date">
            <time datetime="${post.createTime!}" itemprop="datePublished">${post.createTime?string('yyyy-MM-dd')}</time>
          </a>
        </span>
        <span class="article-category">
          <i class="icon icon-folder"></i>
          <#if is_post??>
            <#if categories?? && categories?size gt 0>
              <#list categories as category>
                <a class="article-category-link" href="${context!}/categories/${category.slugName!}/">${category.name!}</a>
              </#list>
            </#if>
          <#else>
            <#include "post/category.ftl">
          </#if>
        </span>
        <span class="article-tag">
            <i class="icon icon-tags"></i>
            <#if is_post??>
              <#if tags?? && tags?size gt 0>
                <#list tags as tag>
                  <a class="article-tag-link" href="${context!}/tags/${tag.slugName!}/">${tag.name!}</a>
                </#list>
              </#if>
            <#else>
              <#include "post/tag.ftl">
            </#if>
        </span>
        <span class="post-comment"><i class="icon icon-comment"></i> <a href="${context!}/archives/${post.url!}#comments" class="article-comment-link">评论</a></span>
      </div>
    </div>
    <div class="article-entry marked-body" itemprop="articleBody">
      <#if is_index??>
        <p class="article-more-link">
          <a href="${context!}/archives/${post.url!}#more">继续阅读</a>
        </p>
      <#else>
        ${post.formatContent!}
      </#if>
    </div>
    <div class="article-footer">
      <#include "post/copyright.ftl">
    </div>
  </article>
  <#if is_post??>
    <#include "post/comment.ftl">
    <@comment post=post type="post" />
  </#if>
</div>
<% if (!index){ %>
  <#include "post/nav.ftl">
  <#include "post/donate.ftl">
<% } %>