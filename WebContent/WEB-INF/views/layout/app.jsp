<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript" ></script>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
        <script src="js/bootstrap.min.js"></script>

        <title>タスク管理アプリケーション</title>
    </head>
    <body>
        <div class="container-fluid bg-primary">
            <div id="wrapper">
                <div id="header" class="bg-dark fixed-top mb-5">
                    <h1 class="text-center text-warning">タスク管理アプリケーション</h1>
                </div>
                <div class="m-5 p-5"></div>
                <div id="content" class="m-5 p-5">
                    <div class="card m-3 p-3">
                        ${ param.content }
                    </div>
                </div>
                <div id="footer" class="bg-dark fixed-bottom">
                    <p class="text-center text-light">by Kazuya</p>
                </div>
            </div>
        </div>
    </body>
</html>