<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id : ${task.id} のメッセージ編集ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/update">
            <label for="content_msg">メッセージ</label><br /> <input type="text"
                name="content" id="content_msg" value="${task.content}" /> <br />
            <br /> <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">投稿</button>
        </form>

        <p>
            <a href="${pageContext.request.contextPath}/index">一覧に戻る</a>
        </p>
        <p>
            <a href="#" onclick="confirmDestroy();">このメッセージを削除する</a>
        </p>
        <form method="POST"
            action="${pageContext.request.contextPath}/destroy">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
            function confirmDestroy() {
                if (confirm("本当に削除してよろしいですか？")) {
                    document.forms[1].submit();
                }
            }
        </script>

    </c:param>
</c:import>