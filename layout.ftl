<#import "/common/macro/common_macro.ftl" as common>
<#macro layout layout,title,keywords,description,canonical>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="utf-8">
        <#if settings.douban_user?? && layout == 'books'>
        <meta name="referrer" content="never">
        </#if>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
        <meta name="renderer" content="webkit">
        <meta http-equiv="Cache-Control" content="no-transform" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no,email=no,adress=no">
        <!-- Color theme for statusbar -->
        <meta name="theme-color" content="#000000" />
        <!-- 强制页面在当前窗口以独立页面显示,防止别人在框架里调用页面 -->
        <meta http-equiv="window-target" content="_top" />
        <title>${title!}</title>
        <!-- Canonical links -->
        <link rel="canonical" href="${canonical!}">
        <link rel="alternate" href="/atom.xml" title="${options.blog_title!}" type="application/atom+xml">
        <@common.globalHeader />
        <link rel="stylesheet" href="${static!}/source/css/style.css">
        <#if is_post?? || is_sheet??>
        <link href="//cdnjs.loli.net/ajax/libs/KaTeX/0.9.0/katex.min.css" rel="stylesheet">
        </#if>
        <#if settings.fancybox!true>
            <link href="//cdnjs.loli.net/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" rel="stylesheet">
        </#if>
    </head>
    <body class="${settings.layout!'main-center'} ${settings.skin!} <#if layout=='repository' || layout=='books' || layout=='links'>no-sidebar</#if>" itemscope itemtype="http://schema.org/WebPage">
        <#include "layout/_common/header.ftl">
        <#if layout!='repository' || layout!='books' || layout!='links'>
            <#include "layout/_partial/sidebar.ftl">
        </#if>
    </#macro>

    <#--<%- body %>-->

    <#macro footer layout>
        <#include "layout/_common/footer.ftl">
        <script src="//cdnjs.loli.net/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
            window.jQuery || document.write('<script src="${static!}/source/js/jquery.min.js"><\/script>')
        </script>
        <script src="${static!}/source/js/plugin.min.js"></script>
        <script src="${static!}/source/js/application.js"></script>
        <#include "layout/_script/search.ftl">
        <#if layout == 'repository'>
            <#include "layout/_script/repository.ftl">
        </#if>
        <#if layout == 'books'>
            <#include "layout/_script/douban.ftl">
        </#if>
        <#include "layout/_script/fancybox.ftl">
        <#include "layout/_script/analytics.ftl">
    </body>
</html>
</#macro>