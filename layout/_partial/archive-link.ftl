<article class="article article-links article-type-list" itemscope="">
  <header class="article-header">
    <h1 itemprop="title"><%= page.title %></h1>
    <p class="text-muted">
      欢迎交换链接，可在当前页面留言
    </p>
  </header>
  <div class="article-body">
    <div class="row">
      <% for (var link in site.data.links) { %>
        <% var item = site.data.links[link]; %>
          <div class="col-sm-6 col-md-4">
            <div class="panel panel-default hover-shadow hover-grow">
              <figure class="media media-middle">
                <div class="media-left pr-no">
                  <a href="<%= item.link %>" target="_blank" class="img-burn thumb-md media-middle">
                    <img src="<%= item.avatar %>" class="w-full" alt="">
                  </a>
                </div>
                <div class="media-body p-0x">
                  <h4 class="media-heading"><a href="<%= item.link %>" target="_blank"><span class="text-dark"><%= link %></span></a></h4>
                  <div class="text-muted">
                    <%= item.desc %>
                  </div>
                </div>
              </figure>
            </div>
          </div>
          <% } %>
    </div>
  </div>
</article>
<% if (theme.comment.type && !is_home()) { %>
  <%- partial('_partial/post/comment', {post: page}) %>
<% } %>