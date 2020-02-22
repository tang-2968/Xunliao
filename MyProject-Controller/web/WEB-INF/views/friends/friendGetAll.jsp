<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-20
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html><head>
    <meta charset="utf-8">
    <title>分页</title>
    <link rel="stylesheet" type="text/css" href="static/friend/css/MyPaging.css">

    <script src="static/friend/js/jquery.min.js"></script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }
        .main {
            margin: 0 auto;
            padding: 50px 0;
            width: 1000px;
            min-height: 1000px;
        }
        table {
            margin-bottom: 20px;
            width: 100%;
            border-collapse: collapse;
            border: none;
        }
        table th, table td {
            padding: 5px 10px;
            border-color: #999;
        }
        .page{
            float: left;
        }
    </style>

</head>
<body style="">

<div class="main">

    <table border="">
        <thead>
        <tr>
            <th>账号</th>
            <th>备注</th>
        </tr>
        </thead>
        <c:forEach items="${list.list}" var="friend">
            <tr>
                <td>${friend.f_loginId}</td>
                <td>${friend.f_name}</td>
            </tr>
        </c:forEach>
    </table>

    <div class="page">
        <div class="_my-paging-box">
            <div class="link-btn prev pg-item disabled" data-current="prev">上一页</div>
            <ul class="link-list pg-item">
                <li class="link-btn active" data-current="1">1</li>
                <li class="link-btn" data-current="2">2</li>
                <li class="link-btn" data-current="3">3</li>
                <li class="link-btn" data-current="4">4</li>
                <li class="link-btn" data-current="5">5</li>
                <li class="link-btn" data-current="6">6</li>
            </ul>
            <div class="link-btn next pg-item" data-current="next">下一页</div>
            <div class="jumper pg-item"><span>前往</span><input type="text"><span>页</span></div>
        </div>
    </div>
</div>



<script src="static/friend/js/MyPaging.js"></script>
<script src="static/friend/js/script.js"></script>


</body></html>