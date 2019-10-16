<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="form-group">
<c:if test="${ errors != null }">
    <p class="text-danger">入力内容にエラーがあります</p>
    <c:forEach var="error" items="${ errors }">
        <p class="text-danger">・<c:out value="${ error }" /></p>
    </c:forEach>
</c:if>
<label for="title">コンテンツ</label><br />
<input type="text" name="content" value="${ task.content }" class="form-control" />
</div>
<input type="hidden" name="_token" value="${ _token }" />
<button type="submit" class="btn btn-success m-3">登録</button>