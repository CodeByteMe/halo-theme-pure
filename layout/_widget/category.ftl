<% if (site.categories.length){ %>
  <div class="widget">
    <h3 class="widget-title">分类</h3>
    <div class="widget-body">
      <%- list_categories({show_count: theme.show_count}) %>
    </div>
  </div>
<% } %>
