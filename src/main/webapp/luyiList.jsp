<%--
  Created by IntelliJ IDEA.
  User: 白痴和白糖
  Date: 2019/5/18
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("path", request.getContextPath());
%>
<html>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">

<head>
    <title>Title</title>
</head>
<body>
<table class="layui-hide" id="test"></table>
</body>
<script src="layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('table', function () {
        var table = layui.table;
        table.render({
            elem: '#test'
            , url: '${path}/br/page'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , cols: [[
                {field: 'trId', width: 80, title: 'ID', sort: true}
                , {field: 'trName', width: 80, title: '用户名'}
                , {field: 'trSex', width: 80, title: '性别', sort: true}
                , {field: 'trTime', width: 80, title: '时间'}
            ]]
        });
    });
</script>
</html>
