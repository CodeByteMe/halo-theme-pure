<% if (theme.plugins.google_analytics) { %>
    <#include "../_script/_analytics/google-analytics.ftl">
<% } %>
<% if (theme.plugins.baidu_analytics) { %>
    <#include "../_script/_analytics/baidu-analytics.ftl">
<% } %>
<% if (theme.plugins.tencent_analytics) { %>
    <#include "../_script/_analytics/tencent-analytics.ftl">
<% } %>