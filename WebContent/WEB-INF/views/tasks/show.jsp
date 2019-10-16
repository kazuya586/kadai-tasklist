<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h3 class="primary my-5">id : ${ task.id }のメッセージ詳細</h3>

        <table class="table table-hover mt-5 mb-5">
            <tr class="success">
                <th>コンテンツ</th>
                <th>作成日時</th>
                <th>更新日時</th>
            </tr>
            <tr>
                <td><c:out value="${ task.content }" /></td>
                <td><fmt:formatDate value="${ task.create_date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td><fmt:formatDate value="${ task.update_date }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            </tr>
        </table>

        <p><a href="${ pageContext.request.contextPath }/index" class="btn btn-success m-3">一覧に戻る</a></p>
        <p><a href="${ pageContext.request.contextPath }/edit?id=${task.id}" class="btn btn-success m-3">このメッセージを編集する</a></p>
    </c:param>
</c:import>