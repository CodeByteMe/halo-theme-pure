<#if posts.getTotalPages() gt 1>
    <#if settings.pagination_number!false>
    <nav class="bar bar-footer clearfix" data-stick-bottom>
        <div class="bar-inner">
        <div class="pager pull-left">
            <#if !posts.hasPrevious() && settings.pagination_prev_alwayShow!true>
            <a class="prev disabled" href="javascript:;"><i class="icon icon-angle-left"></i> 上一页</a>
            </#if>
            <%- paginator({
                prev_text: '<i class="icon icon-angle-left"></i> ' + __('pagination.prev'),
                next_text: __('pagination.next') + ' <i class="icon icon-angle-right"></i>'
            }) %>
            <#if !posts.hasNext() && settings.pagination_next_alwayShow!true>
            <a class="next disabled" href="javascript:;">下一页 <i class="icon icon-angle-right"></i></a>
            </#if>
        </div>
        <div class="total-article bar-right"><%= _p('pagination.pageof', page.current, page.total) %>Page %d of %s</div>
        </div>
    </nav>
    <#else>
    <nav class="bar bar-footer clearfix" data-stick-bottom>
        <div class="bar-inner">
        <ul class="pager pull-left">
            <#if !posts.hasPrevious() && settings.pagination_prev_alwayShow!true>
            <li class="prev disabled">
                <a href="javascript:;">
                    <i class="icon icon-angle-left"></i>
                    上一页
                </a>
            </li>
            <#else>
            <li class="prev">
                <a href="<%- url_for(page.prev_link) %>">
                    <i class="icon icon-angle-left"></i>
                    上一页
                </a>
            </li>
            </#if>
            <#if !posts.hasNext() && settings.pagination_next_alwayShow!true>
            <li class="next disabled">
                <a href="javascript:;">
                    下一页
                    <i class="icon icon-angle-right"></i>                    
                </a>
            </li>
            <#else>
            <li class="next">
                <a href="<%- url_for(page.next_link) %>">
                    下一页
                    <i class="icon icon-angle-right"></i>
                </a>
            </li>
            </#if>
        </ul>
        <div class="total-article bar-right"><%= _p('pagination.pageof', page.current, page.total) %></div>
        </div>
    </nav>
    </#if>
</#if>