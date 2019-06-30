<@postTag method="archiveYear">
    <#list archives as archive>
        <section class="panel panel-default b-no">
            <div class="panel-heading" role="tab">
                <h3 class="panel-title">
                    <a data-toggle="collapse" href="#collapse${archive.year?c}" aria-expanded="true">
                        <i class="icon icon-calendar-plus text-active"></i>
                        <i class="icon icon-calendar-minus text"></i> ${archive.year?c}
                    </a>
                </h3>
            </div>
            <div id="collapse${archive.year?c}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading${archive.year?c}">
                <div class="panel-body">
                    <div class="collection">
                        <#list archive.posts as post>
                        <a href="${context!}/archives/${post.url!}" class="collection-item" itemprop="url">
                            <time datetime="${post.createTime!}" itemprop="datePublished">${post.createTime?string('yyyy-MM-dd')}</time>
                            <span>&nbsp;&nbsp;&nbsp;</span> ${post.title!}</a>
                        </#list>
                    </div>
                </div>
            </div>
        </section>
    </#list>
</@postTag>