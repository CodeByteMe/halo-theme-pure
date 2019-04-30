<article class="article article-links article-type-list" itemscope="">
  <header class="article-header">
    <h1 itemprop="title">${post.title!}</h1>
    <p class="text-muted">个人收藏的书单推荐给大家 <a href="https://www.douban.com/people/<%= theme.douban.user %>/" target="_blank">[我的豆瓣]</a></p>
    <nav role="navigation" id="nav-main" class="okayNav">
      <ul id="tabs">
        <li><a id="reading-tab" href="javascript:show('reading')" rel="external">在读<span id="reading-total"></span></a></li>
        <li><a id="wish-tab" href="javascript:show('wish')" rel="external">想读<span id="wish-total"></span></a></li>
        <li><a id="read-tab" href="javascript:show('read')" rel="external">已读<span id="read-total"></span></a></li>
      </ul>
    </nav>
  </header>
  <div class="article-body">
    <div id="loading">
      <p>正在加载...</p>
    </div>
    <div id="douban">
      <div id="collections">
        <div id="reading" class="row hide">
        </div>
        <div class="clearfix"></div>
        <div id="wish" class="row hide">
        </div>
        <div class="clearfix"></div>
        <div id="read" class="row hide">
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</article>
<% if (theme.comment.type && !is_home()) { %>
  <%- partial('post/comment', {post: page}) %>
<% } %>
