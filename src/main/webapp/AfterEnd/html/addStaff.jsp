<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../../layui/css/layui.css" media="all">
<head>
    <title>添加员工页面</title>
</head>
<body>
    <form class="layui-form" action="" id="addform" lay-filter="addstaff">
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="stName" lay-verify="stName"
                        autocomplete="off" placeholder="请输入员工姓名" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="stSex" value="男"title="男" checked>
                <input type="radio" name="stSex" value="女" title="女">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="text" name="stPassword" placeholder="请输入密码"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">出生年月</label>
            <div class="layui-input-inline">
                <input type="text" name="stTime" lay-verify="stTime"
                        autocomplete="off" placeholder="出生年月" class="layui-input date-item">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="text" name="stPhoto" lay-verify="stPhoto"
                        autocomplete="off" placeholder="价格" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-inline">
                <input type="text" name="verson" id="verson" lay-verify="verson" placeholder="账号" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-block">
                <input type="radio" name="status" value="完成"title="完成" checked>
                <input type="radio" name="status" value="已预定" title="已预定">
                <input type="radio" name="status" value="已删除" title="已删除">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">状态</label>
            <div class="layui-input-inline">
                <select name="status" lay-filter="status">
                    <option value=""></option>
                    <option value="空闲">空闲</option>
                    <option value="已住">已住</option>
                </select>
            </div>
        </div>



        <div class="layui-form-item">
            <div class="layui-input-block">
                <button id="finish" class="layui-btn" lay-submit="" lay-filter="finish">完成</button>
            </div>
        </div>
    </form>
<script src="../../js/jquery-3.3.1.js"></script>
<script src="../../layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['layer','laydate'],function () {
        var layer=layui.layer,
        laydate=layui.laydate;

        lay('.date-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });
        var index = parent.layer.getFrameIndex(window.name);
        $("#finish").click(function () {
            // var stName = $("input[name=stName]").val();
            // console.log(stName);
            var ss = $("#addform").serializeArray();
            $.getJSON("${request.getContextPath()}/staff/add",ss,function(data){
                parent.layer.msg('添加成功');
                parent.layer.close(index);
            })

        })

    })
</script>
</body>
</html>
