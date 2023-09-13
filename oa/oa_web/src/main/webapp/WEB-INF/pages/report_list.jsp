<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 公告栏 </h2>
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
                                                        <i class="fa fa-plus" onclick="javascript:window.location.href='/report/to_add';"></i>
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
                        <th class="hidden-xs">公示内容</th>
                        <th class="hidden-xs">发布时间</th>
                        <th class="hidden-xs">有效时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="cv">
                        <tr class="message-unread">
                            <td>${cv.content}</td>
                            <td><spring:eval expression="cv.report_time"/></td>
                            <td>${cv.continue_time}</td>
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
