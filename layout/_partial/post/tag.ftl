<#if post.tags?? && post.tags?size gt 0>
	<span class="article-tag">
		<i class="icon icon-tags"></i>
		<#list post.tags as tag>
			<a class="article-tag-link" href="${context!}/tags/${tag.slugName!}/">${tag.name!}</a>
		</#list>
  	</span>
</#if>