<#import "/common/macro/theme_option_marco.ftl" as option>
<@option.head />
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#general" data-toggle="tab">社交资料</a>
                    </li>
                    <li>
                        <a href="#style" data-toggle="tab">样式设置</a>
                    </li>
                    <li>
                        <a href="#sns" data-toggle="tab">社交资料</a>
                    </li>
                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">

                    <div class="tab-pane active" id="general">
                        <form method="post" class="form-horizontal" id="pureGeneralOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="pureGeneralRss" class="col-sm-4 control-label">RSS：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="pure_general_rss" value="true" ${((options.pure_general_rss!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="pure_general_rss" value="false" ${((options.pure_general_rss!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pureGeneralBoard" class="col-sm-4 control-label">站点公告：</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="3" id="pureGeneralBoard" name="pure_general_board" style="resize: none">${options.pure_general_board!}</textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="anatoleSnsRss" class="col-sm-4 control-label">RSS：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="theme_anatole_sns_rss" id="anatoleSnsRss" value="true" ${((options.theme_anatole_sns_rss!'true')=='true')?string('checked','')}> 显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="theme_anatole_sns_rss" id="anatoleSnsRss" value="false" ${((options.theme_anatole_sns_rss!)=='false')?string('checked','')}> 隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsTwitter" class="col-sm-4 control-label">Twitter：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsTwitter" name="theme_anatole_sns_twitter" value="${options.theme_anatole_sns_twitter!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsFacebook" class="col-sm-4 control-label">Facebook：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsFacebook" name="theme_anatole_sns_facebook" value="${options.theme_anatole_sns_facebook!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsInstagram" class="col-sm-4 control-label">Instagram：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsInstagram" name="theme_anatole_sns_instagram" value="${options.theme_anatole_sns_instagram!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsDribbble" class="col-sm-4 control-label">Dribbble：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsDribbble" name="theme_anatole_sns_dribbble" value="${options.theme_anatole_sns_dribbble!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsWeibo" class="col-sm-4 control-label">Weibo：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsWeibo" name="theme_anatole_sns_weibo" value="${options.theme_anatole_sns_weibo!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsEmail" class="col-sm-4 control-label">Email：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsEmail" name="theme_anatole_sns_email" value="${options.theme_anatole_sns_email!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsGithub" class="col-sm-4 control-label">Github：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsGithub" name="theme_anatole_sns_github" value="${options.theme_anatole_sns_github!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsQQ" class="col-sm-4 control-label">QQ：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsQQ" name="theme_anatole_sns_qq" value="${options.theme_anatole_sns_qq!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsTelegram" class="col-sm-4 control-label">Telegram：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsTelegram" name="theme_anatole_sns_telegram" value="${options.theme_anatole_sns_telegram!}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('pureGeneralOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!--样式设置-->
                    <div class="tab-pane" id="style">
                        <form method="post" class="form-horizontal" id="pureStyleOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="pureStyleMenuIcons" class="col-sm-4 control-label">导航菜单图标：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="pure_style_menu_icons" value="true" ${((options.pure_style_menu_icons!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="pure_style_menu_icons" value="false" ${((options.pure_style_menu_icons!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="pureStyleConfigSkin" class="col-sm-4 control-label">主题颜色：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="pureStyleConfigSkin" name="pure_style_config_skin">
                                            <option value="">默认</option>
                                            <option value="theme-black" ${((options.pure_style_config_skin!)=='theme-black')?string('selected','')}>theme-black</option>
                                            <option value="theme-blue" ${((options.pure_style_config_skin!)=='theme-blue')?string('selected','')}>theme-blue</option>
                                            <option value="theme-green" ${((options.pure_style_config_skin!)=='theme-green')?string('selected','')}>theme-green</option>
                                            <option value="theme-purple" ${((options.pure_style_config_skin!)=='theme-purple')?string('selected','')}>theme-purple</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="pureStyleConfigLayout" class="col-sm-4 control-label">布局方式：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="pureStyleConfigLayout" name="pure_style_config_layout">
                                            <option value="main-center" ${((options.pure_style_config_layout!'main-center')=='main-center')?string('selected','')}>main-center</option>
                                            <option value="main-right" ${((options.pure_style_config_layout!)=='main-right')?string('selected','')}>main-right</option>
                                            <option value="main-left" ${((options.pure_style_config_layout!)=='main-left')?string('selected','')}>main-left</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="anatoleStyleRightIcon" class="col-sm-4 control-label">右上角图标：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="anatoleStyleRightIcon" name="anatole_style_right_icon" value="${options.anatole_style_right_icon!'/anatole/source/images/logo.png'}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('anatoleStyleRightIcon')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleStyleBlogTitleLower" class="col-sm-4 control-label">博客标题大写：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="anatole_style_blog_title_lower" id="anatoleStyleBlogTitleLower" value="true" ${((options.anatole_style_blog_title_lower!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="anatole_style_blog_title_lower" id="anatoleStyleBlogTitleLower" value="false" ${((options.anatole_style_blog_title_lower!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleStyleAvatarCircle" class="col-sm-4 control-label">圆形头像：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="anatole_style_avatar_circle" id="anatoleStyleAvatarCircle" value="true" ${((options.anatole_style_avatar_circle!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="anatole_style_avatar_circle" id="anatoleStyleAvatarCircle" value="false" ${((options.anatole_style_avatar_circle!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleStyleHitokoto" class="col-sm-4 control-label">博客描述开启一言：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="anatole_style_hitokoto" id="anatoleStyleHitokoto" value="true" ${((options.anatole_style_hitokoto!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="anatole_style_hitokoto" id="anatoleStyleHitokoto" value="false" ${((options.anatole_style_hitokoto!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleStyleGoogleColor" class="col-sm-4 control-label">浏览器沉浸颜色：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleStyleGoogleColor" name="anatole_style_google_color" value="${options.anatole_style_google_color!'#fff'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleStyleScrollbar" class="col-sm-4 control-label">全局滚动条颜色：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleStyleScrollbar" name="anatole_style_scrollbar" value="${options.anatole_style_scrollbar!'#3798e8'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleStyleSelf" class="col-sm-4 control-label">自定义样式：</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="3" id="anatoleStyleSelf" name="anatole_style_self" style="resize: none">${options.anatole_style_self!}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('pureStyleOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 社交资料 -->
                    <div class="tab-pane active" id="sns">
                        <form method="post" class="form-horizontal" id="anatoleSnsOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="anatoleSnsRss" class="col-sm-4 control-label">RSS：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="theme_anatole_sns_rss" id="anatoleSnsRss" value="true" ${((options.theme_anatole_sns_rss!'true')=='true')?string('checked','')}> 显示
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="theme_anatole_sns_rss" id="anatoleSnsRss" value="false" ${((options.theme_anatole_sns_rss!)=='false')?string('checked','')}> 隐藏
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsTwitter" class="col-sm-4 control-label">Twitter：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsTwitter" name="theme_anatole_sns_twitter" value="${options.theme_anatole_sns_twitter!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsFacebook" class="col-sm-4 control-label">Facebook：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsFacebook" name="theme_anatole_sns_facebook" value="${options.theme_anatole_sns_facebook!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsInstagram" class="col-sm-4 control-label">Instagram：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsInstagram" name="theme_anatole_sns_instagram" value="${options.theme_anatole_sns_instagram!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsDribbble" class="col-sm-4 control-label">Dribbble：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsDribbble" name="theme_anatole_sns_dribbble" value="${options.theme_anatole_sns_dribbble!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsWeibo" class="col-sm-4 control-label">Weibo：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsWeibo" name="theme_anatole_sns_weibo" value="${options.theme_anatole_sns_weibo!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsEmail" class="col-sm-4 control-label">Email：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsEmail" name="theme_anatole_sns_email" value="${options.theme_anatole_sns_email!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsGithub" class="col-sm-4 control-label">Github：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsGithub" name="theme_anatole_sns_github" value="${options.theme_anatole_sns_github!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsQQ" class="col-sm-4 control-label">QQ：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsQQ" name="theme_anatole_sns_qq" value="${options.theme_anatole_sns_qq!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="anatoleSnsTelegram" class="col-sm-4 control-label">Telegram：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="anatoleSnsTelegram" name="theme_anatole_sns_telegram" value="${options.theme_anatole_sns_telegram!}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('anatoleSnsOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 关于该主题 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <img class="img-circle" src="/anatole/source/images/logo@2x.png" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">CAICAI</h3>
                                <h5 class="widget-user-desc">A other farbox theme</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="https://www.caicai.me/">作者主页</a></li>
                                    <li><a target="_blank" href="https://github.com/hi-caicai/farbox-theme-Anatole">原主题地址</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@option.import_js />