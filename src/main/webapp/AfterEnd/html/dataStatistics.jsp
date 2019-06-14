<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>数据统计</title>
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
                <a href="index.html" class="logo"><span>${staff.stName}</span><i class="zmdi zmdi-layers"></i></a>
            </div>
	
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">数据分析</h4></li>
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
                    <div class="card-box" style="height: 800px;">
                        <div class="am-u-sm-12">
							<div class="layui-row">
								<div class="layui-col-md6">
									<div id="order" style="width: 450px;height:400px;"></div>
								</div>
								<div class="layui-col-md6">
									<div id="chart" style="width: 450px;height:400px;"></div>
								</div>
							</div>
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
		<%--echarts--%>
		<script src="../../echarts/echarts.min.js"></script>


        <script type="text/javascript">
            var myChart = echarts.init(document.getElementById('chart'));
            var order = echarts.init(document.getElementById('order'));
            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: '旅游点订单数'
                },
                tooltip: {},
                legend: {
                    data:['订单数']
                },
                xAxis: {
                    data: ["丽江","大理","长城","北海","九寨沟","三亚"]
                },
                yAxis: {},
                series: [{
                    name: '订单数',
                    type: 'bar',
                    data: [25, 20, 36, 24, 26, 20]
                }]
            };

            var option2 = {
                title:{
                    text:"周情况"
				},
                tooltip: {
                    trigger: 'axis'
                },
                legend: {
                    data:['丽江','大理','长城','北海','三亚']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                toolbox: {
                    feature: {
                        saveAsImage: {}
                    }
                },
                xAxis: {
                    type: 'category',
                    boundaryGap: false,
                    data: ['周一','周二','周三','周四','周五','周六','周日']
                },
                yAxis: {
                    type: 'value'
                },
                series: [
                    {
                        name:'丽江',
                        type:'line',
                        stack: '总量',
                        data:[1200, 1320, 1010, 1304, 900, 2306, 2108]
                    },
                    {
                        name:'大理',
                        type:'line',
                        stack: '总量',
                        data:[2204, 1822, 1911, 2334, 2490, 3320, 3130]
                    },
                    {
                        name:'长城',
                        type:'line',
                        stack: '总量',
                        data:[150, 232, 201, 154, 190, 330, 410]
                    },
                    {
                        name:'北海',
                        type:'line',
                        stack: '总量',
                        data:[3250, 3352, 3051, 3345, 3940, 3530, 3250]
                    },
                    {
                        name:'三亚',
                        type:'line',
                        stack: '总量',
                        data:[4820, 3932, 3901, 3934, 1290, 1330, 1320]
                    }
                ]
            };
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
			order.setOption(option2);
        </script>
	</body>
	
</html>
