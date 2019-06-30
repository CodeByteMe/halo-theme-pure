<footer class="footer" itemscope itemtype="http://schema.org/WPFooter">
    <#include "social.ftl">
    <div class="copyright">
        <#if settings.copyright!true>
        &copy; ${.now?string('yyyy')} ${options.blog_title!}
        </#if>
        <div class="publishby">
            Theme by <a href="https://github.com/cofess" target="_blank"> cofess </a>base on <a href="https://github.com/cofess/hexo-theme-pure" target="_blank">pure</a>.
        </div>
    </div>
</footer>
