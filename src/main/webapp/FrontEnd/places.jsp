<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title></title>

    <!--== META TAGS ==-->
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700%7CMontserrat:400,700" rel="stylesheet">

    <!-- FONT-AWESOME ICON CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!--== ALL CSS FILES ==-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/mob.css">
    <link rel="stylesheet" href="css/animate.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>


    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>

    <!--====== TOP HEADER ==========-->
    <section>
        <div class="rows head" data-spy="affix" data-offset-top="120">
            <div class="container">
                <div>
                    <!--====== BRANDING LOGO ==========-->
                    <div class="col-md-4 col-sm-12 col-xs-12 head_left">
                        <a href="index.jsp"><strong><span style="color: white;font-size: 30px">小熊旅行社</span></strong>
                        </a>
                    </div>
                    <!--====== HELP LINE & EMAIL ID ==========-->
                    <div class="col-md-8 col-sm-12 col-xs-12 head_right head_right_all">
                        <ul>
                            <li><a href="#">帮助热线: 14736800842</a>
                            </li>
                            <li><a href="#">Email: 405656434@qq.com</a>
                            </li>
                            <li>
                                <div class="dropdown">
                                    <c:if test="${user eq null}">
                                        <button class="dropbtn">登录</button>
                                    </c:if>
                                    <c:if test="${user ne null}">
                                        <button class="dropbtn">${user.trName}</button>
                                        <div class="dropdown-content">
                                            <a href="#"><i class="fa fa-address-book-o" aria-hidden="true"></i>我的信息</a>
                                            <a href="#"><i class="fa fa-bookmark-o" aria-hidden="true"></i> 我的预订</a>
                                            <a href="#"><i class="fa fa-umbrella" aria-hidden="true"></i> 旅游套餐</a>
                                            <a href="#"><i class="fa fa-bed" aria-hidden="true"></i> 酒店预订</a>
                                            <a href="#"><i class="fa fa-ban" aria-hidden="true"></i> 取消预订</a>
                                            <a href="#"><i class="fa fa-print" aria-hidden="true"></i> Prient电子机票</a>
                                            <a href="#" class="ho-dr-con-last"><i class="fa fa-align-justify" aria-hidden="true"></i> 订单查询</a>
                                            <a href="#"><i class="fa fa-sign-in" aria-hidden="true"></i> 注销</a>
                                        </div>
                                    </c:if>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== NAVIGATION MENU ==========-->
    <section>
        <div class="rows main_menu">
            <div class="container res-menu">
                <nav class="navbar navbar-inverse">
                    <div>
                        <!-- Brand and toggle get grouped for better mobile display(MOBILE MENU) -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <img src="images/logo.png" alt="" class="mob_logo" />
                        </div>
                        <!-- NAVIGATION MENU -->
                        <div class="collapse navbar-collapse" id="myNavbar">
                            <ul class="nav navbar-nav">
                                <li><a href="index.jsp">主页</a></li>
                                <li><a href="groupPackage.jsp">旅游团套餐</a></li>
                                <li><a href="hotels-list.jsp">酒店</a>
                                <li><a href="blog.jsp">博客</a></li>
                                <li><a href="places.jsp">景点</a></li>
                                <li><a href="contact.html">联系我们</a></li>
                            </ul>
                            <div class="menu_book"><a href="booking.html">预订您的套餐</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </section>
    <!--====== BANNER ==========-->
    <section>
        <div class="rows inner_banner">
            <div class="container">
                <h2><span>Now Book -</span> 你的观光胜地 </h2><ul><li><a href="#inner-page-title">主页</a></li><li><i class="fa fa-angle-right" aria-hidden="true"></i> </li><li><a href="#inner-page-title" class="bread-acti">观光 </a></li></ul>
                <p>浏览名胜古迹，下一个奇迹就是你 </p>
            </div>
        </div>
    </section>
    <!--====== PLACES ==========-->
    <section>
        <div class="rows inn-page-bg com-colo">
            <div class="container inn-page-con-bg tb-space pad-bot-redu" id="inner-page-title">
                <!-- TITLE & DESCRIPTION -->
                <div class="spe-title col-md-12">
                    <h2>旅游 <span>观光</span> 名景</h2>
                    <div class="title-line">
                        <div class="tl-1"></div>
                        <div class="tl-2"></div>
                        <div class="tl-3"></div>
                    </div>
                    <p>选择你心中的港湾，你心中那个Ta就在那儿等你。</p>
                </div>
                <div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/fm1.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">洱海 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band1.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/fm2.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">云南 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/fm3.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">海南 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/fm4.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">三亚 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/fm5.jpg"  width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">呼和浩特 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band1.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/fm.6.jpg" width="305" height="203"  alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">西安 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/p9.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">西安 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band1.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/p8.jpg"  width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">西安 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/p7.jpg" width="305" height="203"  alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">厦门<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/p10.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">桂林 <span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/p2.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">上海<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band1.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/p5.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">杭州<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/p3.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">北京<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band1.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/p4.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">上海<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/p1.jpg"  width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">川藏<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/fm3.jpg" width="305" height="203"  alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">三亚<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/y2.jpg" width="305" height="203"  alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">西藏<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--====== PACKAGE ==========-->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="band"><img src="images/band1.png" alt="" />
                        </div>
                        <div class="v_place_img"><img src="images/y1.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">四川<span class="v_pl_name"></span></a></h4>
                            </div>
                            <div class="col-md-4 col-sm-4 pack_icon">
                                <ul>
                                    <li>
                                        <a href="#"><img src="images/clock.png" alt="Date" title="Tour Timing" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/info.png" alt="Details" title="View more details" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/price.png" alt="Price" title="Price" />
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--====== TIPS BEFORE TRAVEL ==========-->
    
    <!--====== FOOTER 1 ==========-->
    <section>
        <div class="rows">
            <div class="footer1 home_title tb-space">
                <div class="pla1 container">
                    <!-- FOOTER OFFER 1 -->
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="disco">
                            <h3>30%<span>OFF</span></h3>
                            <h4>Eiffel Tower,Rome</h4>
                            <p>valid only for 24th Dec</p>
                            <a href="booking.html">Book Now</a>
                        </div>
                    </div>
                    <!-- FOOTER OFFER 2 -->
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="disco1 disco">
                            <h3>42%<span>OFF</span></h3>
                            <h4>Colosseum,Burj Al Arab</h4>
                            <p>valid only for 18th Nov</p>
                            <a href="booking.html">Book Now</a>
                        </div>
                    </div>
                    <!-- FOOTER MOST POPULAR VACATIONS -->
                    <div class="col-md-6 col-sm-12 col-xs-12 foot-spec footer_places">
                        <h4><span>Most Popular</span> Vacations</h4>
                        <ul>
                            <li><a href="tour-details.html">Angkor Wat</a>
                            </li>
                            <li><a href="tour-details.html">Buckingham Palace</a>
                            </li>
                            <li><a href="tour-details.html">High Line</a>
                            </li>
                            <li><a href="tour-details.html">Sagrada Família</a>
                            </li>
                            <li><a href="tour-details.html">Statue of Liberty </a>
                            </li>
                            <li><a href="tour-details.html">Notre Dame de Paris</a>
                            </li>
                            <li><a href="tour-details.html">Taj Mahal</a>
                            </li>
                            <li><a href="tour-details.html">The Louvre</a>
                            </li>
                            <li><a href="tour-details.html">Tate Modern, London</a>
                            </li>
                            <li><a href="tour-details.html">Gothic Quarter</a>
                            </li>
                            <li><a href="tour-details.html">Table Mountain</a>
                            </li>
                            <li><a href="tour-details.html">Bayon</a>
                            </li>
                            <li><a href="tour-details.html">Great Wall of China</a>
                            </li>
                            <li><a href="tour-details.html">Hermitage Museum</a>
                            </li>
                            <li><a href="tour-details.html">Yellowstone</a>
                            </li>
                            <li><a href="tour-details.html">Musée d'Orsay</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== FOOTER 2 ==========-->
    <section>
        <div class="rows">
            <div class="footer">
                <div class="container">
                    <div class="foot-sec2">
                        <div>
                            <div class="row">
                                <div class="col-sm-3 foot-spec foot-com">
                                    <h4><span>Holiday</span> Tour & Travels</h4>
                                    <p>World's leading tour and travels Booking website,Over 30,000 packages worldwide.</p>
                                </div>
                                <div class="col-sm-3 foot-spec foot-com">
                                    <h4><span>Address</span> & Contact Info</h4>
                                    <p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A. Landmark : Next To Airport</p>
                                    <p>
                                        <span class="strong">Phone: </span>
                                        <span class="highlighted">+101-1231-1231</span>
                                    </p>
                                </div>
                                <div class="col-sm-3 col-md-3 foot-spec foot-com">
                                    <h4><span>SUPPORT</span> & HELP</h4>
                                    <ul class="two-columns">
                                        <li>
                                            <a href="#">About Us</a>
                                        </li>
                                        <li>
                                            <a href="#">FAQ</a>
                                        </li>
                                        <li>
                                            <a href="#">Feedbacks</a>
                                        </li>
                                        <li>
                                            <a href="#">Blog </a>
                                        </li>
                                        <li>
                                            <a href="#">Use Cases</a>
                                        </li>
                                        <li>
                                            <a href="#">Advertise us</a>
                                        </li>
                                        <li>
                                            <a href="#">Discount</a>
                                        </li>
                                        <li>
                                            <a href="#">Vacations</a>
                                        </li>
                                        <li>
                                            <a href="#">Branding Offers </a>
                                        </li>
                                        <li>
                                            <a href="#">Contact Us</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-3 foot-social foot-spec foot-com">
                                    <h4><span>Follow</span> with us</h4>
                                    <p>Join the thousands of other There are many variations of passages of Lorem Ipsum available</p>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== FOOTER - COPYRIGHT ==========-->
    <section>
        <div class="rows copy">
            <div class="container">
                <p>Copyrights © 2017 Company Name. All Rights Reserved</p>
            </div>
        </div>
    </section>

    <section>
        <div class="icon-float">
            <ul>
                <li><a href="#" class="sh">1k <br> Share</a>
                </li>
                <li><a href="#" class="fb1"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                </li>
                <li><a href="#" class="gp1"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                </li>
                <li><a href="#" class="tw1"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                </li>
                <li><a href="#" class="li1"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                </li>
                <li><a href="#" class="sh1"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                </li>
            </ul>
        </div>
    </section>

    <!--========= Scripts ===========-->
    <script src="js/jquery-latest.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>

