<article class="article article-type-<%= post.layout %>" itemscope itemtype="http://schema.org/BlogPosting">
  <div class="article-header">
    <h1 itemprop="name">
      <a class="article-title" href="${context!}/archives/${post.url!}">${post.title!}</a>
    </h1>
  </div>
  <div class="article-entry text-muted" itemprop="description">
    ${post.summary!}...
  </div>
  <p class="article-meta">
    <span class="article-date">
      <i class="icon icon-calendar-check"></i>
      <a href="${context!}/archives/${post.url!}" class="article-date">
        <time datetime="<%= date_xml(post.date) %>" itemprop="datePublished">${post.createTime?string('yyyy 年 MM 月 dd 日')}</time>
      </a>
    </span>
    <#include "post/category.ftl">
    <#include "post/tag.ftl">
    <span class="post-comment"><i class="icon icon-comment"></i> <a href="${context!}/archives/${post.url!}#comments" class="article-comment-link">评论</a></span>
  </p>
</article>
