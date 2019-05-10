<script src="//cdnjs.loli.net/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
window.jQuery || document.write('<script src="${theme.folderName}/source/js/jquery.min.js"><\/script>')
</script>
<%- js('js/plugin.min') %>
<%- js('js/application') %>
<#include "../_script/search.ftl">
<% if (page.layout === 'repository'){ %>
   <#include "../_script/repository.ftl">
<% } %>
<% if (page.layout === 'books'){ %>
   <#include "../_script/douban.ftl">
<% } %>
<% if (!is_home() && !is_category() && !is_tag() && !is_archive() && post.comments) { %>
   <#include "../_script/comment.ftl">
<% } %>
<#include "../_script/fancybox.ftl">
<#include "../_script/analytics.ftl">