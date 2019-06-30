<blockquote class="mt-2x">
  <ul class="post-copyright list-unstyled">
    <li class="post-copyright-link hidden-xs">
      <strong>本文链接：</strong>
      <a href="${context!}/archives/${post.url!}" title="${post.title!}" target="_blank" rel="external">${post.title!}</a>
    </li>
    <li class="post-copyright-license">
      <strong>版权声明： </strong> 本博客所有文章除特别声明外，均采用 <a href="http://creativecommons.org/licenses/by/4.0/deed.zh" target="_blank" rel="external">CC BY 4.0 CN协议</a> 许可协议。转载请注明出处！
    </li>
  </ul>
</blockquote>
<#if settings.profile_enabled!true>
<div class="panel panel-default panel-badger">
  <div class="panel-body">
    <figure class="media">
      <div class="media-left">
        <a href="${settings.profile_follow!}" target="_blank" class="img-burn thumb-sm visible-lg">
          <img src="${user.avatar!}" class="img-rounded w-full" alt="">
        </a>
      </div>
      <div class="media-body">
        <h3 class="media-heading"><a href="${settings.profile_follow!}" target="_blank"><span class="text-dark">${user.nickname!}</span><small class="ml-1x">${user.description!}</small></a></h3>
        <div>${settings.profile_author_description!}</div>
      </div>
    </figure>
  </div>
</div>
</#if>
