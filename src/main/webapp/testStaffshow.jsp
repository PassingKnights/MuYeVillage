<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/18
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<head>
    <title>测试显示员工信息</title>
</head>
<body>
<a href="/staff/show">show</a>
<a href="/staff/menus">menus</a>
<button id="b1">弹框</button>
<script src="js/jquery-3.3.1.js"></script>
<script src="layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('layer',function () {
        var layer=layui.layer;
        $("#b1").click(function () {
            layer.open({
                type:2,
                content:"/AfterEnd/html/addStaff.jsp",
                area:['460px','500px'],
                btn:['确定','取消'],
                yes:function () {
                    layer.msg("hao")
                },
                btn2:function () {
                    layer.alert("en")
                }
            });
        })

    })
</script>
</body>
</html>
