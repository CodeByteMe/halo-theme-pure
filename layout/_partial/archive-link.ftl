<article class="article article-links article-type-list" itemscope="">
  <header class="article-header">
    <h1 itemprop="title">
      <#if is_sheet??>
        ${sheet.title!}
        <#else>
        友情链接
      </#if>
    </h1>
    <p class="text-muted">
    </p>
  </header>
  <div class="article-body">
    <div class="row">
      <@linkTag method="list">
        <#if links?? && links?size gt 0>
            <#list links as link>
              <div class="col-sm-6 col-md-4">
                <div class="panel panel-default hover-shadow hover-grow">
                  <figure class="media media-middle">
                    <div class="media-left pr-no">
                      <a href="${link.url!}" target="_blank" class="img-burn thumb-md media-middle">
                        <img src="${link.logo!}" class="w-full" alt="">
                      </a>
                    </div>
                    <div class="media-body p-0x">
                      <h4 class="media-heading"><a href="${link.url!}" target="_blank"><span class="text-dark">${link.name!}</span></a></h4>
                      <div class="text-muted">
                        ${link.description!}
                      </div>
                    </div>
                  </figure>
                </div>
              </div>
            </#list>
        </#if>
      </@linkTag>
    </div>
  </div>
</article>
<#if is_sheet??>
  <#include "post/comment.ftl">
  <@comment post=sheet type="sheet" />
</#if>
