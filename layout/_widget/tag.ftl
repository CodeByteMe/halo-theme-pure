<% if (site.tags.length){ %>
  <div class="widget">
    <h3 class="widget-title">标签</h3>
    <div class="widget-body">
      <%- list_tags({show_count: theme.show_count}) %>
    </div>
  </div>
<% } %>
