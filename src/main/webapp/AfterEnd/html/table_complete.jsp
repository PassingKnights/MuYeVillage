<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台模板</title>
    <link rel="stylesheet" href="../assets/css/amazeui.css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/core.css"/>
    <link rel="stylesheet" href="../assets/css/menu.css"/>
    <link rel="stylesheet" href="../assets/css/index.css"/>
    <link rel="stylesheet" href="../assets/css/admin.css"/>
    <link rel="stylesheet" href="../assets/css/page/typography.css"/>
    <link rel="stylesheet" href="../assets/css/page/form.css"/>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <!--bootsrap框架-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--layui框架-->
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all"/>
</head>
<% pageContext.setAttribute("path", request.getContextPath());%>
<body>
<div class="modal fade" id="br_updetAdmodle" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                            <input type="text" name="trId" class="form-control tr_static_id" style="display: none">
                            <p class="form-control-static" id="tr_static_id"></p>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">trName</label>
                        <div class="col-sm-10">
                            <input type="text" name="trName" class="form-control tr_static_name" style="display: none">
                            <p class="form-control-static" id="tr_static_name"></p>
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
                <button type="button" class="btn btn-default" data-dismiss="br-close">关闭</button>
                <button type="button" class="btn btn-primary" id="br-updet">修改</button>
            </div>
        </div>
    </div>
</div>

<!-- 新增员工模态框 -->
<div class="modal fade" id="br_Addmodel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                            <input type="text" name="trName" class="form-control"
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
                                   placeholder="密码">
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
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="br_close_btn">关闭</button>
                <button type="button" class="btn btn-primary" id="br_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="index.html" class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">基本表格</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="Search..." class="form-control">
                    <a href=""><img src="../assets/img/search.png"></a>
                </form>
            </li>
        </ul>
    </div>
</header>
<!-- end page -->


<div class="admin">
    <!--<div class="am-g">-->
    <!-- ========== Left Sidebar Start ========== -->
    <!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
            <div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <!-- User -->
            <div class="user-box am-hide-sm-only">
                <div class="user-img">
                    <img src="../assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme"
                         class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><a href="#">Mat Helme</a></h5>
                <ul class="list-inline">
                    <li>
                        <a href="#">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="text-custom">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
               <li><a href="../index.html"><span class="am-icon-home"></span> 首页</a></li>
               <li class="admin-parent">
                 <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 表格 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                 <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                   <li><a href="table_basic.html" class="am-cf"> 基本表格</span></a></li>
                   <li><a href="table_complete.html">完整表格</a></li>
                 </ul>
               </li>
               <li class="admin-parent">
                 <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 统计图表 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                 <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                   <li><a href="chart_line.html" class="am-cf"> 折线图</span></a></li>
                   <li><a href="chart_columnar.html" class="am-cf"> 柱状图</span></a></li>
                   <li><a href="chart_pie.html" class="am-cf"> 饼状图</span></a></li>
                 </ul>
               </li>
               <li class="admin-parent">
                 <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 表单 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                 <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
                   <li><a href="form_basic.html" class="am-cf"> 基本表单</a></li>
                   <li><a href="form_validate.html">表单验证</a></li>
                 </ul>
               </li>
             </ul>
        </div>
    </div>
    <!-- sidebar end -->
    <!--</div>
</div>
</div>-->
    <!-- ========== Left Sidebar end ========== -->
    <!--	<div class="am-g">-->
    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <div class="content-page">
        <!-- Start content -->
        <div class="content">
            <div class="card-box">
                <!-- Row start -->
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span>
                                    新增
                                </button>
                                <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span>
                                    保存
                                </button>
                                <button type="button" class="am-btn am-btn-default"><span
                                        class="am-icon-archive"></span> 审核
                                </button>
                                <button type="button" class="am-btn am-btn-default"><span
                                        class="am-icon-trash-o"></span> 删除
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field">
                            <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
                        </div>
                    </div>
                </div>
                <!-- Row end -->
                <!-- Row start -->
                <input type="text" class="form-control" style="width:300px" id="br_check_like"/>
                <button class="btn btn-sm" style="display: inline-block" id="br_search">搜索</button>
                <table id="demo" lay-filter="test"></table>
                <!-- Row end -->
            </div>
        </div>
    </div>
</div>
<!-- end right Content here -->
<!--</div>-->
</div>
</div>

<!-- navbar -->
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
   data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
<script type="text/javascript" src="../assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="../assets/js/app.js"></script>
<script type="text/javascript" src="../assets/js/blockUI.js"></script>
</body>
<script type="text/html" id="toolbarDemo">
    <a class="layui-btn layui-btn-normal layui-btn-xs add-user" lay-event="add" id="add-user">增加</a>
    <a class="layui-btn layui-btn-xs" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs updet-user" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delete">删除</a>
</script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<%--<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>--%>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="../../layui/layui.js"></script>
<script>
    layui.use('table', function () {
        var table = layui.table;
        var retabel = table.render({
            elem: '#demo'
            , page: true
            , url: '${path}/br/page'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , limit: 5
            , cols: [[
                {field: 'trId', width: 80, title: 'ID', sort: true}
                , {field: 'trName', width: 80, title: '用户名'}
                , {field: 'trSex', width: 80, title: '性别'}
                , {field: 'trTime', width: 80, title: '时间'}
                , {field: 'trEmail', width: 80, title: '邮件'}
                , {field: 'trPassword', width: 80, title: '密码'}
                , {toolbar: '#toolbarDemo'}
            ]]
        });
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            switch (obj.event) {
                case 'add':
                    $(".add-user").click(function () {
                        $('#br_Addmodel').modal({
                            backdrop: "static"
                        });
                        AddUser();
                    });
                    break;
                case 'delete':
                    //ok
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
                    var id = data.trId;
                    var trname = data.trName;
                    $('#tr_static_id').text(id);
                    $('.tr_static_id').val(id);
                    $('#tr_static_name').text(id);
                    $('.tr_static_id').val(id);
                    $('.updet-user').click(function () {
                        $('#br_updetAdmodle').modal({
                            backdrop: "static"
                        });
                        UpdeUser();
                    });
                    break;
            };
        });
        //模糊查询
        $('#br_search').click(function () {
            var like = $('#br_check_like').val();
            alert(like)
            retabel.reload({
                url: "${path}/br/sellike",
                where: {"name": like},
                page: {
                    curr: 1
                }
            });
        });
    });


    //用户更新  ok
    function UpdeUser() {
        $('#br-updet').click(function () {
            $.ajax({
                url: "${path}/br/upde",
                data: $("#br_updetAdmodle form").serialize(),
                success: function (result) {
                    console.log(result)
                    if (result.code == 100) {
                        $("#br_updetAdmodle").modal('hide');
                        layer.msg("添加成功", {icon: 6});
                    } else {
                        $("#br_updetAdmodle").modal('hide');
                        layer.msg("添加失败", {icon: 5});
                    }
                }
            })
        })

    }

    //用户添加
    function AddUser() {
        $('#br_save_btn').click(function () {
            $.ajax({
                url: "${path}/br/AddUser",
                type: "get",
                data: $('#br_Addmodel form').serialize(),
                success: function (result) {
                    console.log(result)
                    if (result.code == 100) {
                        $("#br_Addmodel").modal('hide');
                        layer.msg("添加成功", {icon: 6});
                    } else {
                        $("#br_Addmodel").modal('hide');
                        layer.msg("添加失败", {icon: 5});
                    }
                }
            });
        });
    };

</script>
</html>
