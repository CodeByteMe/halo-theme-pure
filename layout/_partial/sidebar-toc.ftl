<% if (!index && theme.config.toc && post.toc) { %>
<aside class="sidebar sidebar-toc collapse" id="collapseToc" itemscope itemtype="http://schema.org/WPSideBar">
  <div class="slimContent">
    <nav id="toc" class="article-toc">
      <h3 class="toc-title">文章目录</h3>
      <%- toc(post.content) %>
    </nav>
  </div>
</aside>
<% } %>