<aside class="sidebar" itemscope itemtype="http://schema.org/WPSideBar">
  <div class="slimContent">
    <% if(theme.profile.links) { %>
    <div class="widget">
      <h3 class="widget-title">个人链接</h3>
      <div class="widget-body">
        <ul class="link-list lh-2x">
          <% for(var i in theme.profile.links) { %>
          <li>
            <%= i %>:
            <a href="<%- theme.profile.links[i] %>" target="_blank"><%- theme.profile.links[i] %></a>
          </li>
          <% } %>
        </ul>
      </div>
    </div>
    <% } %>
    <% if(theme.profile.skills) { %>
    <div class="widget">
      <h3 class="widget-title">技能</h3>
      <div class="widget-body">
        <ul class="skill-list lh-2x">
          <% for(var i in theme.profile.skills) { %>
          <li class="clearfix">
            <span><%= i %></span>
            <span class="pull-right"><%- theme.profile.skills[i] %></span>
          </li>
          <% } %>
        </ul>
      </div>
    </div>
    <% } %>
    <% if(theme.profile.labels) { %>
    <div class="widget">
      <h3 class="widget-title">个人标签</h3>
      <div class="widget-body">
        <% for(var i in theme.profile.labels) { %>
        <span class="label label-default mb"><%- theme.profile.labels[i] %></span>
        <% } %>
      </div>
    </div>
    <% } %>
    <% if(theme.profile.works) { %>
    <div class="widget">
      <h3 class="widget-title">个人作品</h3>
      <div class="widget-body">
        <ul class="work-list lh-2x">
          <% for(var i in theme.profile.works) { %>
          <li class="clearfix">
            <a href="<%- theme.profile.works[i].link %>" target="_blank" title="<%= i %>">
              <span><%= i %></span>
              <span class="pull-right text-muted"><%- theme.profile.works[i].date %></span>
            </a>
          </li>
          <% } %>
        </ul>
      </div>
    </div>
    <% } %>
    <% if(theme.profile.projects) { %>
    <div class="widget">
      <h3 class="widget-title">个人项目</h3>
      <div class="widget-body">
        <ul class="project-list list-square lh-2x">
          <% for(var i in theme.profile.projects) { %>
          <li class="public source">
            <a href="<%- theme.profile.projects[i] %>" target="_blank" title="<%= i %>">
              <span class="repo-icon octicon octicon-repo"></span>
              <span class="repo-and-owner css-truncate-target"><%= i %></span>
            </a>
          </li>
          <% } %>
        </ul>
      </div>
    </div>
    <% } %>
  </div>
</aside>