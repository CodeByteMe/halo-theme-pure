<nav class="bar bar-footer clearfix" data-stick-bottom>
  <div class="bar-inner">
  <% if (post.prev || post.next){ %>
  <ul class="pager pull-left">
    <% if (post.prev){ %>
    <li class="prev">
      <a href="<%- url_for(post.prev.path) %>" title="<%= post.prev.title || '(no title)' %>"><i class="icon icon-angle-left" aria-hidden="true"></i><span>&nbsp;&nbsp;上一篇</span></a>
    </li>
    <% } %>
    <% if (post.next){ %>
    <li class="next">
      <a href="<%- url_for(post.next.path) %>" title="<%= post.next.title || '(no title)' %>"><span>下一篇&nbsp;&nbsp;</span><i class="icon icon-angle-right" aria-hidden="true"></i></a>
    </li>
    <% } %>
    <% if (!index && theme.config.toc && post.toc) { %>
    <li class="toggle-toc">
      <a class="toggle-btn collapsed" data-toggle="collapse" href="#collapseToc" aria-expanded="false" title="文章目录" role="button">
        <span>[&nbsp;</span><span>文章目录</span>
        <i class="text-collapsed icon icon-anchor"></i>
        <i class="text-in icon icon-close"></i>
        <span>]</span>
      </a>
    </li>
    <% } %>
  </ul>
  <% } %>
  <% if (theme.donate.enable){ %>
  <!-- Button trigger modal -->
  <button type="button" class="btn btn-fancy btn-donate pop-onhover bg-gradient-warning" data-toggle="modal" data-target="#donateModal"><span>赏</span></button>
  <!-- <div class="wave-icon wave-icon-danger btn-donate" data-toggle="modal" data-target="#donateModal">
    <div class="wave-circle"><span class="icon"><i class="icon icon-bill"></i></span></div>
  </div> -->
  <% } %>
  
  <div class="bar-right">
    <% if (theme.share.enable){ %>
    <div class="share-component" data-sites="<%= theme.share.sites %>" data-mobile-sites="<%= theme.share.mobile_sites %>"></div>
    <% } %>
  </div>
  </div>
</nav>