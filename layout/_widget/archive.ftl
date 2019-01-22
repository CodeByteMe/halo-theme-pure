<% if (site.posts.length){ %>
  <div class="widget">
    <h3 class="widget-title">归档</h3>
    <div class="widget-body">
      <%- list_archives({
      	show_count: theme.show_count,
      	type: theme.archive_type
      }) %>
    </div>
  </div>
<% } %>
