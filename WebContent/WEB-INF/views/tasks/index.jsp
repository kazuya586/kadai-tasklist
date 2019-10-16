<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${ flush != null }">
            <div id="flush_success">
                <c:out value="${ flush }"></c:out>
            </div>
        </c:if>
        <h3 class="my-5">タスク一覧</h3>
        <table class="table table-hover mt-5 mb-5">
            <tr class="info">
                <th>ID</th>
                <th>コンテンツ</th>
                <th>作成日時</th>
                <th>更新日時</th>
            </tr>
            <c:forEach var="task" items="${ tasks }">
                <tr>
                    <td>
                        <a href="${ pageContext.request.contextPath }/show?id=${task.id}"><c:out value="${ task.id }"></c:out></a>
                    </td>
                    <td>
                        <c:out value="${ task.content }"></c:out>
                    </td>
                    <td>
                        <c:out value="${ task.create_date }"></c:out>
                    </td>
                    <td>
                        <c:out value="${ task.update_date }"></c:out>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <div id="pagination">
            (全 ${ tasks_count } 件) <br />
            <c:forEach var="i" begin="1" end="${ ((tasks_count - 1) / 15)+1 }" step="1">
                <c:choose>
                    <c:when test="${ i == page }">
                        <c:out value="${ i }" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${ pageContext.request.contextPath }/index?page=${i}"><c:out value="${ i }" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <div class="m-5"></div>
        <p><a href="${ pageContext.request.contextPath }/new" class="btn btn-success">新規コンテンツの登録</a></p>
    </c:param>
</c:import>