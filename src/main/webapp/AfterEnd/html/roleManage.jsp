<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>后台模板</title>
		<link rel="stylesheet" href="../assets/css/amazeui.css" />
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/css/core.css" />
		<link rel="stylesheet" href="../assets/css/menu.css" />
		<link rel="stylesheet" href="../assets/css/index.css" />
		<link rel="stylesheet" href="../assets/css/admin.css" />
		<link rel="stylesheet" href="../assets/css/page/typography.css" />
		<link rel="stylesheet" href="../assets/css/page/form.css" />
        <!-- layui表格框架 -->
        <link rel="stylesheet" href="../../layui/css/layui.css" media="all"/>
	</head>
	<body>
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
	                            <img src="../assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
	                            <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
	                        </div>
	                        <h5><a href="#">Mat Helme</a> </h5>
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
						        <li><a href="table_basic.html" class="am-cf"> 基本表格</a></li>
						        <li><a href="table_complete.html">完整表格</a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 统计图表 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						        <li><a href="chart_line.html" class="am-cf"> 折线图</a></li>
						        <li><a href="chart_columnar.html" class="am-cf"> 柱状图</a></li>
						        <li><a href="chart_pie.html" class="am-cf"> 饼状图</a></li>
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
                        <div class="am-u-sm-12">
							<div class="layui-row">
								<div class="layui-col-md6 layui-col-md-offset1">
									<form id="roform" class="layui-form" action="" lay-filter="addstaff">
										<div class="layui-form-item">
											<label class="layui-form-label">角色</label>
											<div class="layui-input-inline">
												<input type="text" name="roName"
													   autocomplete="off" placeholder="请输入添加的角色名" class="layui-input">
											</div>
											<div class="layui-input-inline">
												<button class="layui-btn layui-btn-danger layui-btn-radius" lay-submit="" lay-filter="finish">添加</button>
											</div>
										</div>
									</form>
								</div>
							</div>
                            <table class="layui-hide" id="roleTable" lay-filter="demo"></table>
                        </div>
                    </div>
                </div>
            </div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->

		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="../assets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="../assets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="../assets/js/app.js" ></script>
		<script type="text/javascript" src="../assets/js/blockUI.js" ></script>
        <%--layui引入--%>
        <script src="../../layui/layui.js"></script>

        <script type="text/javascript">
            layui.use(['table','form','layer'],function(){
                var table = layui.table
                    ,form = layui.form
					,layuier=layui.layer;

                var roleTable = table.render({
                    elem:'#roleTable'
                    ,url:'${request.getContextPath()}/role/showAll'
                    ,cols:[[
                        {field:'roId', width:80, title: '编号',sort: true}
                        ,{field:'roName', width:110, title: '角色'}
                        ,{title:'操作',fixed:'right',width:210,align:'center',toolbar:'#barDemo'}
                    ]]

                });

                //添加
                form.on('submit(finish)', function(data){
                    var a = JSON.stringify(data.field);
                    var sss = JSON.parse(a);//将格式解析为json格式。

					// var sss = $("#roform").serializeArray();
                    console.log(sss);
                    roleTable.reload({
                        url:'${request.getContextPath()}/role/add'
                        ,where:sss

                    });
                    return false;
                });


                //监听工具条
                table.on('tool(demo)',function(obj){
                    var data = obj.data;
                    var event = obj.event;
                    if(event=='detail'){
                        var ss = "编号："+data.roId+"<br/>角色："+data.roName
                        layer.alert(ss);//查看
                    }else if(event=='edit'){
                        var parameters = "roId="+data.roId;
                        console.log("${request.getContextPath()}/role/edit?"+parameters);
                        window.location.href="${request.getContextPath()}/role/edit?"+parameters;//编辑

                    }else if(event=='del'){//删除
                        layer.confirm('真的要删除吗',function(index){

                            $.getJSON("${request.getContextPath()}/role/delete",{"roId":data.roId},function(data){
								obj.del();//删除对应行（tr）的DOM结构，并更新缓存
								layer.close(index);//关闭弹出来的窗口
                            })
                        })
                    }
                });
            });


        </script>

        <script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-primary  layui-btn-xs" lay-event="detail">查看</a>
            <a class="layui-btn layui-btn-xs" lay-event="edit">编辑权限</a>
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
        </script>
	</body>
	
</html>
