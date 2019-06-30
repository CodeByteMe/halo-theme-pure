<#macro tags>
<@tagTag method="list">
    <#if tags?? && tags?size gt 0>
        <div class="widget">
            <h3 class="widget-title">标签</h3>
            <div class="widget-body">
                <ul class="tag-list">
                    <#list tags as tag>
                        <li class="tag-list-item">
                            <a class="tag-list-link" href="${context!}/tags/${tag.slugName!}/">${tag.name!}</a>
                            <span class="tag-list-count">${tag.postCount!}</span>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
    </#if>
</@tagTag>
</#macro>
