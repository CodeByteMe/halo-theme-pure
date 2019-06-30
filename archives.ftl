<#include "layout.ftl">
<@layout layout="archives" title="文章归档 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/archives"></@layout>
<main class="main" role="main">
  	<article class="content article article-archives article-type-list" itemscope="">
	    <header class="article-header">
	      <h1 itemprop="title">文章归档</h1>
	      <p class="text-muted">共 <@postTag method="count">${count!}</@postTag> 篇文章</p>
	    </header>
	    <div class="article-body">
			<#include "layout/_partial/archive.ftl">
	    </div>
  	</article>
</main>
<@footer layout="archives"></@footer>