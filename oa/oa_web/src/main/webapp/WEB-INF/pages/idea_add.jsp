<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 请发表建议</h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form id="admin-form" name="addForm" action="/comment/add" modelAttribute="idea">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 如下</span>
                        </div>
                        <div class="section">
                            <label for="idea_title" class="field prepend-icon">
                                <form:input path="idea_title" cssClass="gui-input" placeholder="题目..."/>
                                <label for="idea_title" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                            <label for="idea_content" class="field prepend-icon">
                                <form:input path="idea_content" cssClass="gui-input" placeholder="具体内容..."/>
                                <label for="idea_content" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> 保存 </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> 返回 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>
<jsp:include page="bottom.jsp"/>