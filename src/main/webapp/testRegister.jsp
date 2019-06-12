<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/5/20
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>测试注册</h3>
    <form action="tourist/register" method="post">
        邮箱：<input type="text" name="trEmail"/><br>
        密码：<input type="text" name="trPassword"/><br>
        姓名：<input type="text" name="trName"/><br>
        性别：<input type="text" name="trSex"/><br>
        生日：<input type="date" name="trTime"/><br>
        电话：<input type="text" name="trPhone"/><br>
        <input type="submit" value="提交"/>
    </form>

</body>
</html>
