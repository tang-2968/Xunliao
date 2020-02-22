<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-18
  Time: 9:37
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
        <th>账号</th>
        <td>昵称</td>
        <td>性别</td>
        <td>年龄</td>
    </tr>
    <c:forEach items="${userInfos}" var="userInfos">
        <tr>
            <td>${userInfos.u_loginId}</td>
            <td>${userInfos.u_nickName}</td>
            <td>${userInfos.u_sex}</td>
            <td>${userInfos.u_age}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
