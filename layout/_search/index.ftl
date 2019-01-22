<div class="search" id="search-form-wrap">
<% if (theme.search.insight) { %>
    <form class="search-form sidebar-form">
        <div class="input-group">
            <input type="text" class="search-form-input form-control" placeholder="搜索" />
            <span class="input-group-btn">
                <button type="submit" class="search-form-submit btn btn-flat" onclick="return false;"><i class="icon icon-search"></i></button>
            </span>
        </div>
    </form>
    <#include "../_search/insight.ftl">
<% } else if (theme.search.swiftype) { %>
    <form class="search-form">
        <div class="input-group">
        <input type="text" class="st-default-search-input search-form-input form-control" placeholder="搜索" />
        <span class="input-group-btn">
            <button type="submit" class="search-form-submit btn btn-flat"><i class="icon icon-search"></i></button>
        </span>
        </div>
    </form>
    <#include "../_search/swiftype.ftl">
<% } else if (theme.search.baidu) { %>
    <#include "../_search/baidu.ftl">
<% } else { %>
    <%- search_form({ button: ' ', text: __('widget.search') }) %>
<% } %>
</div>