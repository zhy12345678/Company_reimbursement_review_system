<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>员工信息管理系统</title>

    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="/assets/img/favicon.ico">
</head>
<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand">
                <b>企业</b>OA
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="/assets/img/avatars/6.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15">${sessionScope.employee.name}</span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="/self" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> 个人信息
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="/to_change_password" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> 设置密码 </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="/quit" class="">
                            <span class="fa fa-power-off pr5"></span> 退出 </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <div class="media-body">
                            <div class="media-links">
                                <a href="/quit">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt20">日常管理</li>
                <li>
                    <a href="/claim_voucher/deal">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">待处理报销单</span>
                        <span class="sidebar-title-tray">
                <span class="label label-xs bg-primary">New</span>
              </span>
                    </a>
                </li>
                <li class="active">
                    <a href="/claim_voucher/self">
                        <span class="glyphicon glyphicon-home"></span>
                        <span class="sidebar-title">个人报销单</span>
                    </a>
                </li>
                <li>
                    <a href="/claim_voucher/to_add">
                        <span class="fa fa-calendar"></span>
                        <span class="sidebar-title">填写报销单</span>
                    </a>
                </li>
                <li class="sidebar-label pt15">基础信息管理</li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">员工管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/employee/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有员工 </a>
                        </li>
                        <li class="active">
                            <a href="/employee/to_add">
                                <span class="glyphicon glyphicon-check"></span> 添加员工 </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-columns"></span>
                        <span class="sidebar-title">部门管理</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/department/list">
                                <span class="glyphicon glyphicon-calendar"></span> 所有部门 </a>
                        </li>
                        <li class="active">
                            <a href="/department/to_add">
                                <span class="glyphicon glyphicon-check"></span> 添加部门 </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-label pt15">评论及公示</li>
                <li>
                    <a href="/comment/idea_list">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">建议公示</span>
                    </a>
                </li>
                <li>
                    <a href="/comment/article_list">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">文章推荐</span>
                    </a>
                </li>
                <li>
                    <a href="/comment/good_list">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">优秀员工展示</span>
                    </a>
                </li>
                <li >
                    <a href="/comment/unrequest_list">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">违规报销单示例</span>
                    </a>
                </li>
                <li >
                    <a href="/report/report_list">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">公示栏</span>
                    </a>
                </li>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">