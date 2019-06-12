<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/5/23
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3>测试登录</h3>

    <form action="tourist/login" method="post">
        邮箱：<input type="text" name="trEmail"/><br>
        密码：<input type="text" name="trPassword"/><br>
        <input type="submit" value="登录"/>
    </form>

</body>
</html>
