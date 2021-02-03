<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>タスク表</h2>

        <p><a href="${pageContext.request.contextPath}/new"><button type="submit">タスクを追加する</button></a></p>

        <ul>
            <c:forEach var="task" items="${tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                        <c:out value="${task.title}" />
                    </a>
                    ：[進捗状況]<c:out value="${task.content}"></c:out>
                </li>
            </c:forEach>
        </ul>

    </c:param>
</c:import>
