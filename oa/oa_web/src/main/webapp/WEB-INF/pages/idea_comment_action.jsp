<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> 发表评论~</h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form id="admin-form" name="addForm" action="/commentmin/idea_comment_add" modelAttribute="ideaComment">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> 如下</span>
                        </div>
                        <div class="section">
                            <label for="content" class="field prepend-icon">
                                <form:input path="content" cssClass="gui-input" placeholder="具体内容..."/>
                                <label for="content" class="field-icon">
                                    <i class="fa"></i>
                                </label>
                            </label>
                        </div>
                        <div class=" text-right">
                            <button type="submit" class="button"> 发布 </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>
