<#macro recent_posts>
<@postTag method="latest" top="5">
  <div class="widget">
    <h3 class="widget-title">最新文章</h3>
    <div class="widget-body">
      <ul class="recent-post-list list-unstyled <%= (theme.config.thumbnail?'':'no-thumbnail') %>">
        <#list posts as post>
          <li>
            <div class="item-inner">
              <p class="item-title">
                <a href="${context!}/archives/${post.url!}" class="title">${post.title!}</a>
              </p>
              <p class="item-date">
                <time datetime="${post.createTime!}" itemprop="datePublished">${post.createTime?string('yyyy-MM-dd')}</time>
              </p>
            </div>
          </li>
        </#list>
      </ul>
    </div>
  </div>
</@postTag>
</#macro>
