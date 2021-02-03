<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h2>[ ${task.title} ] タスク詳細</h2>

        <p>id:${task.id}</p>
        <p>タスク名　[<c:out value="${task.title}" />]</p>
        <p>進捗状況　[<c:out value="${task.content}" />]</p>
        <p>[作成日時：<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />]　
           [更新<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />]</p>

        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}"><button type="submit">このタスクを編集</button></a></p>

        <p><a href="${pageContext.request.contextPath}/index"><button type="submit">一覧に戻る</button></a></p>


    </c:param>
</c:import>