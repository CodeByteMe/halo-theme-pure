<% if (theme.search.insight) { %>
    <div class="search-form">
        <input type="text" class="ins-search-input search-form-input" placeholder="搜索" />
    </div>
<% } else if (theme.search.swiftype) { %>
    <div class="search-form">
        <input type="text" class="st-default-search-input search-form-input" placeholder="搜索" />
    </div>
<% } else if (theme.search.baidu) { %>
    <#include "../_search/baidu.ftl">
<% } else { %>
    <%- search_form({text: __('widget.search')}) %>
<% } %>