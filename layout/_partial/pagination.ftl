<% if (page.total > 1){ %>
    <% if (theme.pagination.number){ %>
    <nav class="bar bar-footer clearfix" data-stick-bottom>
        <div class="bar-inner">
        <div class="pager pull-left">
            <% if (!page.prev && theme.pagination.prev.alwayShow) { %>
            <a class="prev disabled" href="javascript:;"><i class="icon icon-angle-left"></i> 上一页</a>
            <% } %>
            <%- paginator({
                prev_text: '<i class="icon icon-angle-left"></i> ' + __('pagination.prev'),
                next_text: __('pagination.next') + ' <i class="icon icon-angle-right"></i>'
            }) %>
            <% if (!page.next && theme.pagination.next.alwayShow) { %>
            <a class="next disabled" href="javascript:;">下一页 <i class="icon icon-angle-right"></i></a>
            <% } %>
        </div>
        <div class="total-article bar-right"><%= _p('pagination.pageof', page.current, page.total) %></div>
        </div>
    </nav>
    <% } else { %>
    <nav class="bar bar-footer clearfix" data-stick-bottom>
        <div class="bar-inner">
        <ul class="pager pull-left">
            <% if (!page.prev && theme.pagination.prev.alwayShow) { %>
            <li class="prev disabled">
                <a href="javascript:;">
                    <i class="icon icon-angle-left"></i>
                    <%= __('pagination.prev') %>
                </a>
            </li>
            <% } else { %>
            <li class="prev">
                <a href="<%- url_for(page.prev_link) %>">
                    <i class="icon icon-angle-left"></i>
                    <%= __('pagination.prev') %>
                </a>
            </li>
            <% } %>
            <% if (!page.next && theme.pagination.next.alwayShow) { %>
            <li class="next disabled">
                <a href="javascript:;">
                    <%= __('pagination.next') %>
                    <i class="icon icon-angle-right"></i>                    
                </a>
            </li>
            <% } else { %>
            <li class="next">
                <a href="<%- url_for(page.next_link) %>">
                    <%= __('pagination.next') %>
                    <i class="icon icon-angle-right"></i>
                </a>
            </li>
            <% } %>
        </ul>
        <div class="total-article bar-right"><%= _p('pagination.pageof', page.current, page.total) %></div>
        </div>
    </nav>
    <% } %>
<% } %>