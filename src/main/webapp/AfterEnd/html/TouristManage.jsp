<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台模板</title>

    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/core.css" />
    <link rel="stylesheet" href="../assets/css/menu.css" />
    <link rel="stylesheet" href="../assets/css/index.css" />
    <link rel="stylesheet" href="../assets/css/admin.css" />
    <link rel="stylesheet" href="../assets/css/page/typography.css" />
    <link rel="stylesheet" href="../assets/css/page/form.css" />
    <!-- 引入的js文件 -->
    <script src="../../js/jquery-3.3.1.js"></script>
    <!-- layui表格框架 -->
    <link rel="stylesheet" href="../../layui/css/layui.css" media="all"/>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link  href="../../bootstrap-table/dist/bootstrap-table.min.css">
<%--模态框--%>

    <link href="https://unpkg.com/bootstrap-table@1.14.2/dist/bootstrap-table.min.css" rel="stylesheet">

    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <script src="../../bootstrap-table/dist/bootstrap-table.min.js"></script>
    <script src="../../bootstrap-table/src/locale/bootstrap-table-zh-CN.js"></script>

</head>
<body>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="index.html" class="logo"><span>${staff.stName}</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">旅游团管理</h4></li>
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
                    <img src="../assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><a href="login.jsp">[注销]</a> </h5>
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
                <li><a href="index.html"><span class="am-icon-home"></span> 主页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 数据管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                        <li><a href="table_complete.jsp" class="am-cf"> 游客管理</a></li>
                        <li><a href="orderManage.jsp">订单管理</a></li>
                        <li><a href="staffManage.jsp">员工管理</a></li>
                        <li><a href="hotelManage.jsp">酒店管理</a></li>
                        <li><a href="guidManage.jsp">导游管理</a></li>
                        <li><a href="TouristManage.jsp">旅游团管理</a></li>
                        <li><a href="touristSpot.jsp">景点管理</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 权限管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                        <li><a href="staffRoleManage.jsp" class="am-cf"> 员工权限</a></li>
                        <li><a href="roleManage.jsp" class="am-cf"> 角色管理</a></li>
                        <li><a href="menuManage.jsp" class="am-cf"> 菜单管理</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 日志查看 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
                        <li><a href="form_basic.html" class="am-cf"> 游客日志</a></li>
                        <li><a href="form_validate.html">员工日志</a></li>
                    </ul>
                </li>
                <li><a href="dataStatistics.jsp"><span class="am-icon-line-chart"></span>数据统计</a></li>
            </ul>
        </div>
    </div>

    <div class="content-page table-responsive" >
        <button class="btn btn-warning btn-primary btn-lg" type="button" style="margin-left:150px">添加</button>
        <div>
            <form action="" >
                团名<input type="text" name="tgName">
                人数<input type="text" name="tgSize">
                酒店<input type="text" name="hId">
                旅游时长<input type="text" name="tgDays">
                价格<input type="text" name="tgPrice">
            </form>
        </div>



        <form class="form-search" style="float: right;margin-right: 200px" >
            <input type="text" class="input-medium search-query"  >
            <button type="submit" class="btn btn-success" >搜索</button>
        </form>
        <table id="mytab" class="table table-hover"></table>



    </div>
</div>
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>


<script type="text/javascript" src="../assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="../assets/js/app.js" ></script>
<script type="text/javascript" src="../assets/js/blockUI.js" ></script>
<%--layui引入--%>
<script src="../../layui/layui.js"></script>
<script type="text/javascript">
    $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').focus()
    })




$(function () {

        $('#mytab').bootstrapTable({
            url :'/tourisGroup/paging',//请求路径
            queryParams: "queryParams",
            toolbar: "#toolbar",
            sidePagination: "true",
            striped: true, // 是否显示行间隔色
            //search : "true",
            uniqueId: "ID",
            pageSize: "5",
            pagination: true, // 是否分页
            sortable: true, // 是否启用排序
            columns: [{
                checkbox:true
            },
                {
                title: '编号',
                field: 'tgId',
                    align: 'center',


            }, {
                title: '团名',
                field: 'tgName',
                align: 'center',
            }, {
                title: '人数',
                field: 'tgSize',
                    align: 'center',
            }, {
                title: '酒店',
                field: 'hId',
                    align: 'center',
            }, {
                title: '导游编号',
                field: 'guId',
                    align: 'center',
            }, {
                title: '旅游时长',
                field: 'tgDays',
                    align: 'center',
            }, {
                title: '旅游团建立时间',
                field: 'tgTime',
                    align: 'center',
            }, {
                title: '价格',
                field: 'tgPrice',
                    align: 'center',
            }, {
                title: '旅游点',
                field: 'spId',
                    align: 'center',
            }, {
                title: '实际人数',
                field: 'tgNumber',
                    align: 'center',
            }, {
                title: '出发地点',
                field: 'tgPlace',
                    align: 'center',
            }, {
                title: '实际总金额',
                field: 'tgAllprice',
                    align: 'center',
            }, {
                title: '出发时间',
                field: 'tgStarttime',
                    align: 'center',
            }, {
                title: '结束时间',
                field: 'tgEndtime',
                    align: 'center',
            }, {
                title: '操作',
                field: 'b',
                align: 'center',
                width : 250,
                    formatter: operateFormatter,
                events:Window.operateEvents= {
                    "click #bian":function (e,value,row,index) {
            
                    },
                    "click #de":function (e,value,row,index) {



                        }
    

                    },


            }
            ]
        });
    function operateFormatter(value, row, index) {
        return [
            '<button id="bian" type="button" class="RoleOfedita btn btn-primary" style="margin-right:15px;">编辑</button>',
            '<button id="de" type="button" class="RoleOfeditb btn btn-primary" style="margin-right:15px;" onclick="onRemove(\''+row.tgId+'\')">删除</button>',
            '<button id="se" type="button" class="RoleOfeditc btn btn-primary" style="margin-right:15px;">查看</button>'
        ].join('')
    }



})
</script>


</body>

</html>






