<#macro tagcloud>
<@tagTag method="list">
    <#if tags?? && tags?size gt 0>
        <div class="widget">
            <h3 class="widget-title">标签云</h3>
            <div class="widget-body tagcloud">
                <#list tags as tag>
                 <a href="${context!}/tags/${tag.slugName!}/" style="font-size:13px">${tag.name!}</a>
                </#list>
            </div>
        </div>
    </#if>
</@tagTag>
</#macro>