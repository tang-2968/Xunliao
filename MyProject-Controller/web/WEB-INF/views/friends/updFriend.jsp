<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-16
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <tr>
        <td>账号</td>
        <td>昵称</td>
        <td>添加好友</td>
    </tr>
    <c:forEach items="${list.list}" var="friend">
        <tr>
            <td>${friend.f_loginId}</td>
            <td>${friend.f_friendGroupsId}</td>
            <td>${friend.f_name}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
