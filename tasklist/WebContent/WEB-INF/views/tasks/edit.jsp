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
        <h2>[${task.title}] の編集</h2>

        <form method="POST" action="${pageContext.request.contextPath}/up">
            <label for="title">タスク名</label><br />
            <input type="text" name="title" value="${task.title}" />
            <br /><br />

            <label for="content">進捗状況</label><br />
            <input type="text" name="content" value="${task.content}" />
            <br /><br />

            <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">確定</button>
        </form>

        <p><a href="#" onclick="confirmDestroy();"><button type="submit">このタスクを削除する</button></a></p>
        <form method="POST" action="${pageContext.request.contextPath}/des">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("削除すると完全に消えますが、それでもよろしいですか？")) {
                document.forms[1].submit();
            }
        }
        </script>

        <p><a href="${pageContext.request.contextPath}/index"><button type="submit">一覧に戻る</button></a></p>

    </c:param>
</c:import>