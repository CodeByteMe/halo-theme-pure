<head>
  <meta charset="utf-8">
  <% if (theme.douban.user && page.layout === 'books') { %>
  <meta name="referrer" content="never">
  <% } %>
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
  <%
  var title = page.title;

  if (is_archive()){
    title = __('page.archive');

    if (is_month()){
      title += ': ' + page.year + '/' + page.month;
    } else if (is_year()){
      title += ': ' + page.year;
    }
  } else if (is_category()){
    title = __('page.category') + ': ' + page.category;
  } else if (is_tag()){
    title = __('page.tag') + ': ' + page.tag;
  }
  %>
  <title><% if (title) { %><%= title %> | <% } %><%= theme.site.title || config.title %></title>
  <%- open_graph({
    twitter_id: theme.twitter, 
    google_plus: theme.google_plus, 
    fb_admins: theme.fb_admins, 
    fb_app_id: theme.fb_app_id
  }) %>
  <!-- Canonical links -->
  <link rel="canonical" href="<%- url %>">
  <% if (theme.rss){ %>
    <link rel="alternate" href="/atom.xml" title="${options.blog_title!}" type="application/atom+xml">
  <% } %>
  <@verification></@verification>
  <@favicon></@favicon>
  <link rel="stylesheet" href="/${static!}/source/css/style.css">
  <% if (page.mathjax) { %>
    <link href="//cdnjs.loli.net/ajax/libs/KaTeX/0.9.0/katex.min.css" rel="stylesheet">
  <% } %>
  <#if settings.fancybox!true>
    <link href="//cdnjs.loli.net/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" rel="stylesheet">
  </#if>
</head>
