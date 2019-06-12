<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>后台模板</title>
		<link rel="stylesheet" href="assets/css/amazeui.css" />
		<link rel="stylesheet" href="assets/css/core.css" />
		<link rel="stylesheet" href="assets/css/menu.css" />
		<link rel="stylesheet" href="assets/css/index.css" />
		<link rel="stylesheet" href="assets/css/admin.css" />
		<link rel="stylesheet" href="assets/css/page/typography.css" />
		<link rel="stylesheet" href="assets/css/page/form.css" />
		<link rel="stylesheet" href="assets/css/component.css" />
	</head>
	<body>
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">		
			<div class="am-topbar-left am-hide-sm-only">
                <a href="index.html" class="logo"><span>${staff.stName}</span><i class="zmdi zmdi-layers"></i></a>
            </div>
	
			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li><h4 class="page-title">主页</h4></li>
				</ul>
				
				<ul class="am-nav am-navbar-nav am-navbar-right">
					<li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
					<li class="hidden-xs am-hide-sm-only">
                        <form role="search" class="app-search">
                            <input type="text" placeholder="Search..." class="form-control">
                            <a href=""><img src="assets/img/search.png"></a>
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
	                            <img src="assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
	                            <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
	                        </div>
	                        <h5><a href="#">[注销]</a> </h5>
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
						        <li><a href="html/table_complete.jsp" class="am-cf"> 游客管理</a></li>
						        <li><a href="html/orderManage.jsp">订单管理</a></li>
						        <li><a href="html/staffManage.jsp">员工管理</a></li>
						        <li><a href="html/hotelManage.jsp">酒店管理</a></li>
						        <li><a href="html/guidManage.jsp">导游管理</a></li>
						        <li><a href="html/TouristManage.jsp">旅游团管理</a></li>
                                  <li><a href="html/touristSpot.jsp">景点管理</a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 权限管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
						        <li><a href="html/staffRoleManage.jsp" class="am-cf"> 员工权限</a></li>
						        <li><a href="html/roleManage.jsp" class="am-cf"> 角色管理</a></li>
						        <li><a href="html/menuManage.jsp" class="am-cf"> 菜单管理</a></li>
						      </ul>
						    </li>
						    <li class="admin-parent">
						      <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 日志查看 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						      <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
						        <li><a href="html/form_basic.html" class="am-cf"> 游客日志</a></li>
						        <li><a href="html/form_validate.html">员工日志</a></li>
						      </ul>
						    </li>
                             <li><a href="html/dataStatistics.jsp"><span class="am-icon-line-chart"></span>数据统计</a></li>
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
				<div class="am-g">
					<!-- Row start -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">月收入</h4>
								<div class="widget-chart-1 am-cf">
                                    <div id="widget-chart-box-1" style="height: 110px;width: 110px;float: left;">
                                    </div>

                                    <div class="widget-detail-1" style="float: right;">
                                        <h2 class="p-t-10 m-b-0"> 49408 </h2>
                                        <p class="text-muted">月收入</p>
                                    </div>
                                </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">订单量</h4>
								<div class="widget-box-2">
                                    <div class="widget-detail-2">
                                        <span class="badge  pull-left m-t-20  am-round" style="color: #fff; background: #0e90d2;">24% <i class="zmdi zmdi-trending-up"></i> </span>
                                        <h2 class="m-b-0"> 367 </h2>
                                        <p class="text-muted m-b-25">Revenue today</p>
                                    </div>
                                    <div class="am-progress am-progress-xs am-margin-bottom-0">
									    <div class="am-progress-bar" style="width: 80%"></div>
									</div>
                                </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">本周收入</h4>
								<div class="widget-chart-1 am-cf">
                                    <div id="widget-chart-box-2" style="height: 110px;width: 110px;float: left;">
                                    </div>

                                    <div class="widget-detail-1" style="float: right;">
                                        <h2 class="p-t-10 m-b-0"> 17783 </h2>
                                        <p class="text-muted">周收入</p>
                                    </div>
                                </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">用户量</h4>
								<div class="widget-box-2">
                                    <div class="widget-detail-2">
                                        <span class="badge  pull-left m-t-20  am-round progress-bar-pink" style="color: #fff;">52% <i class="zmdi zmdi-trending-up"></i> </span>
                                        <h2 class="m-b-0"> 274 </h2>
                                        <p class="text-muted m-b-25">Revenue today</p>
                                    </div>
                                    <div class="am-progress am-progress-xs am-margin-bottom-0" style="background: rgba(255, 138, 204, 0.2);">
									    <div class="am-progress-bar progress-bar-pink" style="width: 80%"></div>
									</div>
                                </div>
							</div>
						</div>
					<!-- Row end -->
				</div>
				
				<div class="am-g">
					<!-- Row start -->
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">景点访问量</h4>
							<div id="index-pie-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>
					
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">周收入情况</h4>
							<div id="index-bar-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>
					
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">两周订单量</h4>
							<div id="index-line-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>
					<!-- Row end -->
				</div>
				
				<div class="am-g">
					<!-- Row start -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="assets/img/avatar-3.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">王兰</h4>
                                        <p class="text-muted m-b-5 font-13">wang@gmail.com</p>
                                        <small class="text-warning"><b>超级管理员</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="assets/img/avatar-2.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">曹彦</h4>
                                        <p class="text-muted m-b-5 font-13">cao@gmail.com</p>
                                        <small class="text-custom"><b>经理</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="assets/img/avatar-4.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">李钟志</h4>
                                        <p class="text-muted m-b-5 font-13">lizhong@gmail.com</p>
                                        <small class="text-success"><b>副经理</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="assets/img/avatar-10.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">罗超</h4>
                                        <p class="text-muted m-b-5 font-13">luochao@gmail.com</p>
                                        <small class="text-info"><b>主管</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
					<!-- Row end -->
					</div>
					
					
					<!-- Row start -->
					<div class="am-g">
						<!-- col start -->
						<div class="am-u-md-4">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">新员工</h4>
								<div class="inbox-widget nicescroll" style="height: 315px; overflow: hidden; outline: none;" tabindex="5000">
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="assets/img/avatar-1.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">小芳</p>
                                            <p class="inbox-item-text">普通职员</p>
                                            <p class="inbox-item-date">13:40 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="assets/img/avatar-2.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">小美</p>
                                            <p class="inbox-item-text">普通职员</p>
                                            <p class="inbox-item-date">10:15 AM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="assets/img/avatar-10.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">小兰</p>
                                            <p class="inbox-item-text">普通职员</p>
                                            <p class="inbox-item-date">13:34 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="assets/img/avatar-4.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">小于</p>
                                            <p class="inbox-item-text">高级职员</p>
                                            <p class="inbox-item-date">13:17 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="assets/img/avatar-5.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">小如</p>
                                            <p class="inbox-item-text">高级职员</p>
                                            <p class="inbox-item-date">12:20 PM</p>
                                        </div>
                                    </a>   
                                </div>
							</div>
						</div>
						<!-- col end -->
						
						<!-- col start -->
						<div class="am-u-md-8">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">最新订单</h4>
								<div class="am-scrollable-horizontal am-text-ms" style="font-family: '微软雅黑';">
                                        <table class="am-table   am-text-nowrap">
                                            <thead>
                                            <tr>
                                                <th>编号</th>
                                                <th>旅游团</th>
                                                <th>预定时间</th>
                                                <th>价格</th>
                                                <th>导游</th>
                                                <th>状态</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="order" items="${orderList }" varStatus="i">
                                                    <tr>
                                                        <td>${order.orId}</td>
                                                        <td>${order.tgName}</td>
                                                        <td>${order.orTime}</td>
                                                        <td>${order.tgPrice}</td>
                                                        <td>${order.guName}</td>
                                                        <c:if test="${order.orBoolean eq '完成'}">
                                                            <td><span class="label label-success">完成</span></td>
                                                        </c:if>
                                                        <c:if test="${order.orBoolean eq '已预定'}">
                                                            <td><span class="label label-warning">已预定</span></td>
                                                        </c:if>
                                                        <c:if test="${order.orBoolean eq '已退订'}">
                                                            <td><span class="label label-danger">已退订</span></td>
                                                        </c:if>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
							</div>
						</div>
						<!-- col end -->
					</div>
			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="assets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="assets/js/app.js" ></script>
		<script type="text/javascript" src="assets/js/blockUI.js" ></script>
		<script type="text/javascript" src="assets/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="assets/js/charts/indexChart.js" ></script>

	</body>
	
</html>
