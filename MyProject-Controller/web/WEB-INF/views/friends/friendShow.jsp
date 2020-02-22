<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-19
  Time: 8:45
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
    <c:forEach items="${list.list}" var="friend">
        <tr>
            <td>${friend.f_loginId}</td>
            <td>${friend.f_friendGroupsId}</td>
            <td>${friend.f_name}</td>
        </tr>
    </c:forEach>
</table>

<ul>
    <li><a href="/friends/getAll?pageNum=1">首页</a></li>
    <li><a href="/friends/getAll?pageNum=${list.prePage}">上一页</a></li>
    <li><a href="/friends/getAll?pageNum=${list.nextPage}">下一页</a></li>
    <li><a href="/friends/getAll?pageNum=${list.pages}">尾页</a></li>
    <c:forEach items="${list.navigatepageNums}" var="p">
        <li><a href="/friends/getAll?pageNum=${p}">${p}</a></li>
    </c:forEach>
</ul>
</body>
</html>
