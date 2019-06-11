<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../../layui/css/layui.css" media="all">
<head>
    <title>景点页面</title>
</head>
<body>
    <form id="stform" class="layui-form" action="" lay-filter="addstaff">

        <div class="layui-form-item">
            <label class="layui-form-label">景点</label>
            <div class="layui-input-inline">
                <input type="text" name="spName" lay-verify="spName"
                        autocomplete="off" placeholder="请输入景点名称" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">特色</label>
            <div class="layui-input-inline">
                <input type="text" name="spMessage" placeholder="请输入特色"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="finish">完成</button>
            </div>
        </div>
    </form>
<script src="../../js/jquery-3.3.1.js"></script>
<script src="../../layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['layer','laydate','form'],function () {
        var layer=layui.layer,
        laydate=layui.laydate,
        form=layui.form;

        lay('.date-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });
        //父级页面相关的
        var index = parent.layer.getFrameIndex(window.name);

        //提交
        form.on('submit(finish)', function(data){
            // var a = JSON.stringify(data.field);
            // var sss = JSON.parse(a);
            var ss = $("#stform").serializeArray();
            alert(ss);
            $.ajax({
                url:"${request.getContextPath()}/trorder/add",
                //contentType:"application/json;charset=utf-8",
                data:ss,
                type:"get",
                success:function (datas) {

                    parent.layer.msg('添加成功');
                    parent.layer.close(index);
                }
            })
            return false;
        });



    })
</script>
</body>
</html>
