<% if (site.tags.length){ %>
  <div class="widget">
    <h3 class="widget-title">标签云</h3>
    <div class="widget-body tagcloud">
      <%- tagcloud({min_font:13,max_font:14}) %>
    </div>
  </div>
<% } %>