<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h3 class="my-5">id：${ task.id }のメッセージ編集ページ</h3>

        <form method="POST" action="${ pageContext.request.contextPath }/update">
            <c:import url="_form.jsp" />
        </form>
        <p><a href="${ pageContext.request.contextPath }/index" class="btn btn-success m-3">一覧に戻る</a></p>
        <div class="row">
            <div class="col-sm-12">
                <button type="button" class="btn btn-danger m-3" data-toggle="modal" data-target="#testModel">タスク削除</button>
            </div>
        </div>

        <div class="modal fade" id="testModel" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="modal-title" id="myModalLable">削除確認画面</div>
                    </div>
                    <form method="POST" action="${ pageContext.request.contextPath }/destroy">
                    <div class="modal-body">
                        <label>データを削除しますか?</label>
                        <input type="hidden" name="_token" value="${ _token }" />
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">閉じる</button>
                        <button type="submit" class="btn btn-danger">削除</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </c:param>
</c:import>