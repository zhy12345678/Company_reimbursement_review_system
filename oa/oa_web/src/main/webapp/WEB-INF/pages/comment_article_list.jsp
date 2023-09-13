<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 文章推荐 </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-refresh"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-trash"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-plus" onclick="javascript:window.location.href='/comment/article_to_add';"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-left"></i>
                                </button>
                                <button type="button" class="btn btn-default light">
                                    <i class="fa fa-chevron-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th class="hidden-xs">员工姓名</th>
                            <th class="hidden-xs">职位</th>
                            <th class="hidden-xs">文章题目</th>
                            <th class="hidden-xs">文章内容</th>
                            <th class="hidden-xs">文章链接</th>
                            <th class="hidden-xs">发表时间</th>
                            <th class="hidden-xs">评论信息</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="cv">
                            <tr class="message-unread">
                                <td>${cv.employee.name}</td>
                                <td>${cv.employee.post}</td>
                                <td>${cv.article_tltle}</td>
                                <td>${cv.article_content}</td>
                                <td>${cv.article_link}</td>
                                <td><spring:eval expression="cv.article_time"/></td>
                                <td><a href="/commentmin/article_comment_list">详细信息</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>
