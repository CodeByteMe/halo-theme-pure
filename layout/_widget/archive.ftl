<#macro archive>
<@postTag method="archiveMonth">
    <#if archives?? && archives?size gt 0>
        <div class="widget">
            <h3 class="widget-title">归档</h3>
            <div class="widget-body">
                <ul class="archive-list">
                    <#list archives as archive>
                        <li class="archive-list-item">
                            <a class="archive-list-link" href="/archives/2018/03/">
                                ${archive.month!}月 ${archive.year?c}
                            </a>
                            <span class="archive-list-count">${archive.posts?size}</span>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
    </#if>
</@postTag>
</#macro>