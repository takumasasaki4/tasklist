<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
<c:param name="content">
<c:if test="${errors != null}">
    <div id="flush_error">
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
        <h2>新規作成</h2>

        <form method="POST" action="${pageContext.request.contextPath}/cre">
            <label for="title">タスク名</label><br />
            <input type="text" name="title" value="${task.title}" />
            <br /><br />

            <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">確定</button>
        </form>

        <p><a href="${pageContext.request.contextPath}/index"><button type="submit">一覧に戻る</button></a></p>

    </c:param>
</c:import>
