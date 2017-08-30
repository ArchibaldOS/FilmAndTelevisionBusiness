<%@ page language="java" contentType="text/html; charset=utf-8" %>
<div class='navbar'>
    <div class='navbar-inner'>
        <div class='container-fluid'>
            <a class='brand' href='index.html'>
                <i class='icon-heart-empty'></i>
                <span class='hidden-phone'>后台管理系统</span>
            </a>
            <a class='toggle-nav btn pull-left' href='#'>
                <i class='icon-reorder'></i>
            </a>
            <!--导航栏右侧 -->
            <ul class='nav pull-right'>
                <!--切换颜色 -->
                <li class='dropdown light only-icon'>
                    <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                        <i class='icon-adjust'></i>
                    </a>
                    <ul class='dropdown-menu color-settings'>
                        <li class='divider'></li>
                        <li class='color-settings-contrast-color'>
                            <div class='color-title'>主题颜色</div>
                            <a href="#" data-change-to="contrast-red"><i class='icon-adjust text-red'></i>
                                Red
                            </a>
                            <a href="#" data-change-to="contrast-blue"><i class='icon-adjust text-blue'></i>
                                Blue
                                <small>(default)</small>
                            </a>
                            <a href="#" data-change-to="contrast-orange"><i class='icon-adjust text-orange'></i>
                                Orange
                            </a>
                            <a href="#" data-change-to="contrast-purple"><i class='icon-adjust text-purple'></i>
                                Purple
                            </a>
                            <a href="#" data-change-to="contrast-green"><i class='icon-adjust text-green'></i>
                                Green
                            </a>
                            <a href="#" data-change-to="contrast-muted"><i class='icon-adjust text-muted'></i>
                                Muted
                            </a>
                            <a href="#" data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
                                Facebook
                            </a>
                            <a href="#" data-change-to="contrast-dark"><i class='icon-adjust text-dark'></i>
                                Dark
                            </a>
                            <a href="#" data-change-to="contrast-pink"><i class='icon-adjust text-pink'></i>
                                Pink
                            </a>
                            <a href="#" data-change-to="contrast-grass-green"><i class='icon-adjust text-grass-green'></i>
                                Grass green
                            </a>
                            <a href="#" data-change-to="contrast-sea-blue"><i class='icon-adjust text-sea-blue'></i>
                                Sea blue
                            </a>
                            <a href="#" data-change-to="contrast-banana"><i class='icon-adjust text-banana'></i>
                                Banana
                            </a>
                            <a href="#" data-change-to="contrast-dark-orange"><i class='icon-adjust text-dark-orange'></i>
                                Dark orange
                            </a>
                            <a href="#" data-change-to="contrast-brown"><i class='icon-adjust text-brown'></i>
                                Brown
                            </a>
                        </li>
                    </ul>
                </li>
                <!--切换颜色 -->
                <!--消息提示列表 -->
                <li class='dropdown medium only-icon widget'>
                    <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                        <i class='icon-rss'></i>
                        <div class='label'>5</div>
                    </a>
                    <ul class='dropdown-menu'>
                        <li>
                            <a href='#'>
                                <div class='widget-body'>
                                    <div class='pull-left icon'>
                                        <i class='icon-user text-success'></i>
                                    </div>
                                    <div class='pull-left text'>
                                        John Doe signed up
                                        <small class='muted'>just now</small>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class='divider'></li>
                        <li>
                            <a href='#'>
                                <div class='widget-body'>
                                    <div class='pull-left icon'>
                                        <i class='icon-inbox text-error'></i>
                                    </div>
                                    <div class='pull-left text'>
                                        New Order #002
                                        <small class='muted'>3 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class='divider'></li>
                        <li>
                            <a href='#'>
                                <div class='widget-body'>
                                    <div class='pull-left icon'>
                                        <i class='icon-comment text-warning'></i>
                                    </div>
                                    <div class='pull-left text'>
                                        America Leannon commented Flatty with veeery long text.
                                        <small class='muted'>1 hour ago</small>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class='divider'></li>
                        <li>
                            <a href='#'>
                                <div class='widget-body'>
                                    <div class='pull-left icon'>
                                        <i class='icon-user text-success'></i>
                                    </div>
                                    <div class='pull-left text'>
                                        Jane Doe signed up
                                        <small class='muted'>last week</small>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class='divider'></li>
                        <li>
                            <a href='#'>
                                <div class='widget-body'>
                                    <div class='pull-left icon'>
                                        <i class='icon-inbox text-error'></i>
                                    </div>
                                    <div class='pull-left text'>
                                        New Order #001
                                        <small class='muted'>1 year ago</small>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class='widget-footer'>
                            <a href='#'>All notifications</a>
                        </li>
                    </ul>
                </li>
                <!--消息提示列表 -->
                <!--用户信息下拉列表 -->
                <li class='dropdown dark user-menu'>
                    <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                        <img alt='Mila Kunis' height='23' src='/zijingwang/assets/images/avatar2.jpg' width='23' />
                        <span class='user-name hidden-phone'>管理员</span>
                        <b class='caret'></b>
                    </a>
                    <ul class='dropdown-menu'>

                        <li>
                            <a href='user_profile.html'>
                                <i class='icon-user'></i>
                                主页
                            </a>
                        </li>
                        <li>
                            <a href='user_profile.html'>
                                <i class='icon-cog'></i>
                                设置
                            </a>
                        </li>
                        <li class='divider'></li>
                        <li>
                            <a href='sign_in.html'>
                                <i class='icon-signout'></i>
                                注销
                            </a>
                        </li>
                    </ul>
                </li>
                <!--用户信息下拉列表 -->
            </ul>
            <!--导航栏右侧 -->
        </div>
    </div>
</div>
