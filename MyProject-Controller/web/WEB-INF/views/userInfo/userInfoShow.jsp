<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-17
  Time: 19:36
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
        <th>u_loginId</th>
        <td>u_nickName</td>
        <td>u_sex</td>
        <td>u_age</td>
    </tr>
    <c:forEach items="${userInfo.list}" var="userInfo">
        <tr>
            <td>${userInfo.u_loginId}</td>
            <td>${userInfo.u_nickName}</td>
            <td>${userInfo.u_sex}</td>
            <td>${userInfo.u_age}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
