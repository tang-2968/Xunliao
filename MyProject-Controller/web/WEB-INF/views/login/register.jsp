<%--
  Created by IntelliJ IDEA.
  User: 岂曰无依
  Date: 2019-12-06
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录界面</title>
    <style type="text/css">
        html,body,div,p,form,label,ul,li,img,em,h3{margin:0;padding:0;border:0;list-style:none;font-style:normal;font-weight:normal;}
        a{text-decoration:none;}
        body{font-family:Microsoft YaHei,Verdana,Arial,SimSun;color:#666;font-size:14px;background:#fff; overflow:hidden}
        .block, #block{display:block;}
        .none, #none{display:none;}

        .login{width:100%;}
        .login .headerTop{width:100%;height: 80px;background:#52b7ed;}
        .login .headerTop .logo{width:1000px;margin:0 auto;}
        .login .headerTop .logo img{margin-top:20px;width: 150px;}

        .main{width:1000px;margin:0 auto;overflow: hidden;height: auto;clear: both;}
        .main .mainLeft{float: left;width:50%;border-right:1px dotted #ccc;margin-top:30px;padding-bottom:100px;}
        .main .mainLeft h3{width:70%;border-bottom:2px solid #ccc;padding:0 10%;font-family: 600;}
        .main .mainLeft h3 span{display:inline-block;width:6.5em;font-size:18px;color: #333;line-height:50px;border-bottom:4px solid #666;margin-bottom: -2px;font-family: 600;text-align: center;}
        .main .mainLeft input{width:50%;padding:10px;font-size:16px;border:1px solid #ccc;border-radius: 3px;margin:20px 0 0 50px;}
        .main .mainLeft input[type="text"]{margin-top:60px;}
        .main .mainLeft .a{display: block;padding:10px 15px;width:20%;text-align:center;font-size:18px;color:#fff;background: #88ce2f;border-radius: 3px;margin:20px 0 0 50px;}

    </style>
</head>

<body>


<div class="main">
    <div class="mainLeft">
        <h3><span>用户注册</span></h3>
        <form method="post" action="/login/register">
            <input class="text" type="text" name="username" placeholder="支持QQ号/邮箱/手机号登录" required value="">
            <input type="password" name="password" placeholder="请输入你的密码">
            <input type="submit" value="注册">
        </form>
    </div>
</div>
</div>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#delete").click(function(){
            $('.text').val('');
        });
    });
</script>
</body>
</html>

