<#macro layout>
<#include "/common/macro/common_macro.ftl">
<!DOCTYPE html>
<html lang="zh">
<%- partial('_common/head', {post: page}) %>
<% 
	var bodyClass = 'main-center'; 
	if (theme.config.layout) {
		bodyClass = theme.config.layout;
	}
  if (theme.config.skin) {
    bodyClass += ' ' + theme.config.skin;
  }
	bodyClass = page.sidebar === 'none' ? (bodyClass + ' no-sidebar') : bodyClass;
%>
<body class="<%= bodyClass %>" itemscope itemtype="http://schema.org/WebPage">
  <%- partial('_common/header', null, {cache: !config.relative_link}) %>
  <% if (theme.sidebar && (page.sidebar!='none' || page.sidebar!='custom')){ %>
    <%- partial('_partial/sidebar', null, {cache: !config.relative_link}) %>
  <% } %>
</#macro>

<#--<%- body %>-->
    
<#macro footer>
  <%- partial('_common/footer', null, {cache: !config.relative_link}) %>
  <%- partial('_common/script', {post: page}) %>
</body>
</html>
</#macro>