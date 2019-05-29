<%--
  Created by IntelliJ IDEA.
  User: 白痴和白糖
  Date: 2019/5/18
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("path", request.getContextPath());%>
<html>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<script src="js/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<head>
    <title>Title</title>
</head>
<body>
<!--用户修改模态框-->
<div class="modal fade" id="empUpdetemodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">员工修改</h4>
            </div>
            <div class="modal-body">
                <!--添加表单样式-->
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" name="trId" class="form-control trid" style="display: none">
                            <p class="form-control-static" <%--style="display: none"--%> name="trId" id="trid_br"></p>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">trName</label>
                        <div class="col-sm-10">
                            <input type="text" name="trName" class="form-control trnane"  style="display: none">
                            <p class="form-control-static" id="brName_updete_static" name="trName"></p>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">email</label>
                        <div class="col-sm-10">
                            <input type="text" name="trEmail" class="form-control" id="email_update_input"
                                   placeholder="请输入邮件@hellow.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="trSex" id="empsex1_update_input" value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="trSex" id="empsex2_update_input" value="女"
                                       checked="checked"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-4">
                            <!--只提交部门id就可以拉-->
                            <select class="form-control" name="eid" id="ro_update_select">
                            </select>
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="br-updet">修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 新增员工模态框 -->
<div class="modal fade" id="empAddmodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">游客添加</h4>
            </div>
            <div class="modal-body">
                <!--添加表单样式-->
                <form class="form-horizontal" id="form_rest">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游客名字</label>
                        <div class="col-sm-10">
                            <input type="text" name="trName" class="form-control" id=""
                                   placeholder="请输入名字">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游客邮件</label>
                        <div class="col-sm-10">
                            <input type="text" name="trEmail" class="form-control"
                                   placeholder="请输入邮件@hellow.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">游客密码</label>
                        <div class="col-sm-10">
                            <input type="text" name="trPassword" class="form-control"
                                   placeholder="请输入邮件@hellow.com">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">注册时间</label>
                        <div class="col-sm-10">
                            <input type="date" name="trTime" class="form-control"
                                   placeholder="时间">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-4">
                            <!--只提交部门id就可以拉-->
                            <select class="form-control" name="eid">
                            </select>
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="br_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>

<input type="text" name="like" id="name">
<button id="selLike_i">搜索</button>

<!--表单-->


<table id="demo" lay-filter="test"></table>
</body>
<script type="text/html" id="toolbarDemo">
    <a class="layui-btn layui-btn-normal layui-btn-xs add-user" lay-event="add" id="add-user">增加</a><%--
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>--%>
    <a class="layui-btn layui-btn-xs updet-user" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>


<script src="layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('table', function () {
        var table = layui.table;
        var ren = table.render({
            elem: '#demo'
            , page: true
            , url: '${path}/br/page'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , limit: 5
            , cols: [[
                {field: 'trId', width: 80, title: 'ID', sort: true}
                , {field: 'trName', width: 80, title: '用户名'}
                , {field: 'trSex', width: 80, title: '性别', sort: true}
                , {field: 'trTime', width: 80, title: '时间'}
                , {toolbar: '#toolbarDemo'}
            ]]
        });
        table.on('tool(test)', function (obj) {
            //var checkStatus = table.checkStatus(obj.config.id);
            var data = obj.data;
            switch (obj.event) {
                case 'add':
                    $(".add-user").click(function () {
                        //清楚表单数据(完整重置，表单数据和表单样式)
                        $('#empAddmodel').modal({
                            backdrop: "static",
                        });
                        addUser();
                    });
                    break;
                case 'delete':
                    layer.confirm('真的要删除吗', function (index) {
                        $.ajax({
                            type: "get",
                            url: "${path}/br/delet/" + data.trId,
                            success: function (result) {
                                console.log(result)
                                if (result.code == 100) {
                                    layer.msg("删除成功", {icon: 6});
                                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                                    layer.close(index);
                                } else {
                                    layer.msg("删除失败", {icon: 5});
                                }
                            }
                        });
                    })
                    break;
                case 'edit':
                    $(".updet-user").click(function () {
                        var trId = data.trId;
                        var trName = data.trName;
                        $("#brName_updete_static").text(trName);
                        $("#trid_br").text(trId);
                        $(".trnane").val(trName);
                        $(".trid").val(trId);
                        $('#empUpdetemodel').modal({
                            backdrop: "static",
                        });
                        updetUser();
                    });
                    break;
            }
            ;
        });

        $("#selLike_i").click(function () {
            var val = $("#name").val();
            ren.reload({
                url:"${path}/br/sellike",
                where:{"name":val},
                page:{
                    curr:1
                }
            });
        })

    });




    function updetUser() {
        $("#br-updet").click(function () {
            $.ajax({
                url: "${path}/br/upde",
                type: "get",
                data: $("#empUpdetemodel form").serialize(),
                success: function (result) {
                    console.log(result)
                    if (result.code == 100) {
                        $("#empUpdetemodel").modal('hide');
                        layer.msg("添加成功", {icon: 6});
                    } else {
                        layer.msg("添加失败", {icon: 5});
                    }
                }
            })
        })
    }

    function addUser() {
        $("#br_save_btn").click(function () {
            var serialize = $("#empAddmodel form").serialize();

            $.ajax({
                url: "${path}/br/adduser",
                type: "get",
                data: $("#empAddmodel form").serialize(),
                success: function (result) {

                    console.log(result)
                    if (result.code == 100) {
                        $("#empAddmodel").modal('hide');
                        layer.msg("添加成功", {icon: 6});
                    } else {
                        $("#empAddmodel").modal('hide');
                        layer.msg("添加失败", {icon: 5});
                    }
                }
            })
        })
    }


</script>
</html>
