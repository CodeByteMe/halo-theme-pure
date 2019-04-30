<footer class="footer" itemscope itemtype="http://schema.org/WPFooter">
	<%- partial('_common/social', null, {cache: !config.relative_link}) %>
    <div class="copyright">
        <#if settings.copyright!true>
        &copy; <%= date(new Date(), 'YYYY') %> <%= config.author || config.title %>
        </#if>
        <div class="publishby">
            Theme by <a href="https://github.com/cofess" target="_blank"> cofess </a>base on <a href="https://github.com/cofess/hexo-theme-pure" target="_blank">pure</a>.
        </div>
    </div>
</footer>
