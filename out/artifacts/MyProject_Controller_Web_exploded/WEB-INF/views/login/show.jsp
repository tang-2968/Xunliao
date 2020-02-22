<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-16
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>l_id</th>
        <td>l_loginId</td>
    </tr>
    <c:forEach items="${list.list}" var="login">
        <tr>
            <td>${login.l_id}</td>
            <td>${login.l_loginId}</td>
            <td><a href="">查看信息</a></td>
            <td><a href="/Friends/friendsAdd">添加好友</a></td>
        </tr>
    </c:forEach>
</table>

<ul>
    <li><a href="/login/getAll?pageNum=1">首页</a></li>
    <li><a href="/login/getAll?pageNum=${list.prePage}">上一页</a></li>
    <li><a href="/login/getAll?pageNum=${list.nextPage}">下一页</a></li>
    <li><a href="/login/getAll?pageNum=${list.pages}">尾页</a></li>
    <c:forEach items="${list.navigatepageNums}" var="p">
        <li><a href="/login/getAll?pageNum=${p}">${p}</a></li>
    </c:forEach>
</ul>
</body>
</html>
