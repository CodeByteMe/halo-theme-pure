<article class="article article-links article-type-list" itemscope="">
  <header class="article-header">
    <h1 itemprop="title">${sheet.title!}</h1>
    <p class="text-muted">
      欢迎交换链接，可在当前页面留言
    </p>
  </header>
  <div class="article-body">
    <div class="row">
      <@linkTag method="list">
        <#if links?? && links?size gt 0>
            <#list links as link>
              <div class="col-sm-6 col-md-4">
                <div class="panel panel-default hover-shadow hover-grow">
                  <figure class="media media-middle">
                    <div class="media-left pr-no">
                      <a href="${link.url!}" target="_blank" class="img-burn thumb-md media-middle">
                        <img src="${link.logo!}" class="w-full" alt="">
                      </a>
                    </div>
                    <div class="media-body p-0x">
                      <h4 class="media-heading"><a href="${link.url!}" target="_blank"><span class="text-dark">${link.name!}</span></a></h4>
                      <div class="text-muted">
                        ${link.description!}
                      </div>
                    </div>
                  </figure>
                </div>
              </div>
            </#list>
        </#if>
      </@linkTag>
    </div>
  </div>
</article>
<% if (theme.comment.type && !is_home()) { %>
  <%- partial('_partial/post/comment', {post: page}) %>
<% } %>
