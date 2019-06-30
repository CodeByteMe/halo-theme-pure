<#macro categories>
<@categoryTag method="list">
    <#if categories?? && categories?size gt 0>
        <div class="widget">
            <h3 class="widget-title">分类</h3>
            <div class="widget-body">
                <ul class="category-list">
                    <#list categories as category>
                    <li class="category-list-item">
                        <a class="category-list-link" href="${context!}/categories/${category.slugName!}/">${category.name!}</a>
                        <span class="category-list-count">${category.postCount!}</span>
                    </li>
                    </#list>
                </ul>
            </div>
        </div>
    </#if>
</@categoryTag>
</#macro>