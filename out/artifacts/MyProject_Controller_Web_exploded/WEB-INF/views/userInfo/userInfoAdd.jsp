<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-17
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .divcss5{color:red}
    </style>
</head>
<body>
<h4 align="left">基础信息</h4>
    <div>
        <form method="post" action="/userInfo/addUserInfo">
       <div>
           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昵称</td>
           <font color="red">&#42</font><input type="text" name="nickname" required>
           <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别</td>
           <font color="red">&#42</font><input type="text" name="gender" required>
       </div>
        <div>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名</td>
            <input type="text" name="name">
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;生日</td>
            <input type="text" name="birthday">
        </div>
        <div>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年龄</td>
            <font color="red">&#42</font><input type="text" name="age" required>
            <td>&nbsp;&nbsp;电话号码</td>
            <input type="text" name="phone">
        </div>
        <div>
            <td>&nbsp;&nbsp;个性签名</td>
            <input type="text" name="signaTure">
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;简介</td>
            <input type="text" name="phone">
        </div>
            <input type="submit" value="提交">
        </form>
    </div>
</body>
</html>
