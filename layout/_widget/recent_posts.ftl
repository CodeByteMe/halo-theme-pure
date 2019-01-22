<% if (site.posts.length){ %>
  <div class="widget">
    <h3 class="widget-title">最新文章</h3>
    <div class="widget-body">
      <ul class="recent-post-list list-unstyled <%= (theme.config.thumbnail?'':'no-thumbnail') %>">
        <% site.posts.sort('date', -1).limit(5).each(function(post){ %>
          <li>
            <% if(theme.config.thumbnail == true) { %>
            <div class="item-thumb">
              <%- partial('_partial/post/thumbnail.ejs', {post: post}) %>
            </div>
            <% } %>
            <div class="item-inner">
              <p class="item-category">
                <%- list_categories(post.categories, {show_count: false, depth:2, class: 'category', style: 'none', separator: '<i class="icon icon-angle-right"></i>'}) %>
              </p>
              <p class="item-title">
                <a href="<%- url_for((post.link?post.link:post.path)) %>" class="title"><%= post.title || '(no title)' %></a>
              </p>
              <p class="item-date">
                <time datetime="<%= date_xml(post.date) %>" itemprop="datePublished"><%= date(post.date) %></time>
              </p>
            </div>
          </li>
          <% }) %>
      </ul>
    </div>
  </div>
  <% } %>
