﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="css/radio.css">

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

    <!--====== HOTELS LIST ==========-->
    <section class="hot-page2-alp hot-page2-pa-sp-top">
        <div class="container">
            <div class="row inner_banner bg-none">
                <div class="hot-page2-alp-tit">
                    <h1>温情的酒店，选择对的就是你的爱巢  </h1><ul><li><a href="#inner-page-title">Home</a></li><li><i class="fa fa-angle-right" aria-hidden="true"></i> </li><li><a href="#inner-page-title" class="bread-acti">Hotels & Restaurants</a></li></ul>
<p>好的酒店对的人，让我住进你的心房。 </p>

                </div>

            </div>

            <div class="row">
                <div class="hot-page2-alp-con">
                    <!--LEFT LISTINGS-->
                    <div class="col-md-3 hot-page2-alp-con-left">
                        <!--PART 1 : LEFT LISTINGS-->
                        <div class="hot-page2-alp-con-left-1">
                            <h3>推荐酒店 </h3>
                        </div>
                        <!--PART 2 : LEFT LISTINGS-->
                        <div class="hot-page2-hom-pre hot-page2-alp-left-ner-notb">
                            <ul>
                                <!--LISTINGS-->
                                <li>
                                    <a href="#">
                                        <div class="hot-page2-hom-pre-1 hot-page2-alp-cl-1-1">
                                            <img src="images/jd1.jpg" height="24" width="24" alt="">
                                        </div>
                                        <div class="hot-page2-hom-pre-2 hot-page2-alp-cl-1-2">
                                            <h5>三亚海棠湾9号度假酒店 </h5>
                                            <span>城市：三亚</span>
                                        </div>
                                        <div class="hot-page2-hom-pre-3 hot-page2-alp-cl-1-3">
                                            <span>4.2</span>
                                        </div>
                                    </a>
                                </li>
                                <!--LISTINGS-->
                                <li>
                                    <a href="#">
                                        <div class="hot-page2-hom-pre-1 hot-page2-alp-cl-1-1">
                                            <img src="images/hotels/2.jpg" height="24" width="24" alt="">
                                        </div>
                                        <div class="hot-page2-hom-pre-2 hot-page2-alp-cl-1-2">
                                            <h5>湖景皇宫酒店 </h5>
                                            <span>城市：中国北京 </span>
                                        </div>
                                        <div class="hot-page2-hom-pre-3 hot-page2-alp-cl-1-3">
                                            <span>4.4</span>
                                        </div>
                                    </a>
                                </li>
                                <!--LISTINGS-->
                                <li>
                                    <a href="#">
                                        <div class="hot-page2-hom-pre-1 hot-page2-alp-cl-1-1">
                                            <img src="images/hotels/3.jpg" height="24" width="24" alt="">
                                        </div>
                                        <div class="hot-page2-hom-pre-2 hot-page2-alp-cl-1-2">
                                            <h5>一流的格兰德酒店 </h5>
                                            <span>城市：德国柏林 </span>
                                        </div>
                                        <div class="hot-page2-hom-pre-3 hot-page2-alp-cl-1-3">
                                            <span>5.0</span>
                                        </div>
                                    </a>
                                </li>
                                <!--LISTINGS-->
                                <li>
                                    <a href="#">
                                        <div class="hot-page2-hom-pre-1 hot-page2-alp-cl-1-1">
                                            <img src="images/hotels/4.jpg" height="24" width="24" alt="">
                                        </div>
                                        <div class="hot-page2-hom-pre-2 hot-page2-alp-cl-1-2">
                                            <h5>巴塞罗那大巴勒斯坦 </h5>
                                            <span>城市：印度钦奈 </span>
                                        </div>
                                        <div class="hot-page2-hom-pre-3 hot-page2-alp-cl-1-3">
                                            <span>3.0</span>
                                        </div>
                                    </a>
                                </li>
                                <!--LISTINGS-->
                                <li>
                                    <a href="#">
                                        <div class="hot-page2-hom-pre-1 hot-page2-alp-cl-1-1">
                                            <img src="images/hotels/8.jpg" height="24" width="24" alt="">
                                        </div>
                                        <div class="hot-page2-hom-pre-2 hot-page2-alp-cl-1-2">
                                            <h5>环球豪华大酒店 </h5>
                                            <span>城市：巴西里约 </span>
                                        </div>
                                        <div class="hot-page2-hom-pre-3 hot-page2-alp-cl-1-3">
                                            <span>3.4</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!--PART 7 : LEFT LISTINGS-->
                        <div class="hot-page2-alp-l3 hot-page2-alp-l-com">
                            <h4><i class="fa fa-calendar-check-o" aria-hidden="true"></i> 房间可用支票 </h4>
                            <div class="hot-page2-alp-l-com1 hot-room-ava-check">
                                <form>
                                    <ul>
                                        <li>
                                            <label>进入你的城市 </label>
                                            <input type="text" placeholder="Enter City">
                                        </li>
                                        <li>
                                            <label>出发日期 </label>
                                            <input type="date">
                                        </li>
                                        <li>
                                            <label>返回日期 </label>
                                            <input type="date">
                                        </li>
                                        <li>
                                            <input type="submit" value="SUBMIT">
                                        </li>
                                    </ul>
                                </form>
                            </div>
                        </div>
                        <!--PART 4 : LEFT LISTINGS-->
                        <div class="hot-page2-alp-l3 hot-page2-alp-l-com">
                            <h4><i class="fa fa-map-marker" aria-hidden="true"></i> 选择城市  & 国家 </h4>
                            <div class="hot-page2-alp-l-com1 hot-page2-alp-p4">
                                <form>
                                    <ul>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp41" class="styled" type="checkbox" checked="">
                                                <label for="chp41">
                                                   美国纳什维尔 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp42" class="styled" type="checkbox">
                                                <label for="chp42">
                                                  英国赫尔 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp43" class="styled" type="checkbox">
                                                <label for="chp43">
                                                  韩国首尔 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp44" class="styled" type="checkbox">
                                                <label for="chp44">
                                                   卢布尔雅那，斯洛文尼亚 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp45" class="styled" type="checkbox">
                                                <label for="chp45">
                                                   波兰弗罗茨瓦夫 
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </form>
                                <a href="javascript:void(0);" class="hot-page2-alp-p4-btn-s">查看更多 </a>
                            </div>
                        </div>
                        <!--END PART 4 : LEFT LISTINGS-->
                        <!--PART 5 : LEFT LISTINGS-->
                        <div class="hot-page2-alp-l3 hot-page2-alp-l-com">
                            <h4><i class="fa fa-dollar" aria-hidden="true"></i> 选择价格范围 </h4>
                            <div class="hot-page2-alp-l-com1 hot-page2-alp-p5">
                                <form>
                                    <ul>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp51" class="styled" type="checkbox" checked="">
                                                <label for="chp51">
                                                    5000元以上
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp52" class="styled" type="checkbox">
                                                <label for="chp52">
                                                    ￥4000 - ￥5000
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp53" class="styled" type="checkbox">
                                                <label for="chp53">
                                                    ￥3000 - ￥4000
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp54" class="styled" type="checkbox">
                                                <label for="chp54">
                                                    ￥2000 - ￥3000
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp55" class="styled" type="checkbox">
                                                <label for="chp55">
                                                    ￥2000 - Below
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </form>
                                <a href="javascript:void(0);" class="hot-page2-alp-p5-btn-s">查看更多</a>
                            </div>
                        </div>
                        <!--END PART 5 : LEFT LISTINGS-->
                        <!--PART 6 : LEFT LISTINGS-->
                        <div class="hot-page2-alp-l3 hot-page2-alp-l-com">
                            <h4><i class="fa fa-star-o" aria-hidden="true"></i> 选择评级 </h4>
                            <div class="hot-page2-alp-l-com1 hot-page2-alp-p5">
                                <form>
                                    <ul>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp61" class="styled" type="checkbox" checked="">
                                                <label for="chp61">
                                                    <span class="ho-hot-rat-star-list">
                                                        <span class="hot-list-left-part-rat">5.0</span> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i>
                                                    </span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp62" class="styled" type="checkbox">
                                                <label for="chp62">
                                                    <span class="ho-hot-rat-star-list">
                                                        <span class="hot-list-left-part-rat">4.0</span> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp63" class="styled" type="checkbox">
                                                <label for="chp63">
                                                    <span class="ho-hot-rat-star-list">
                                                        <span class="hot-list-left-part-rat">3.0</span> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp64" class="styled" type="checkbox">
                                                <label for="chp64">
                                                    <span class="ho-hot-rat-star-list">
                                                        <span class="hot-list-left-part-rat">2.0</span> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </span>
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp65" class="styled" type="checkbox">
                                                <label for="chp65">
                                                    <span class="ho-hot-rat-star-list">
                                                        <span class="hot-list-left-part-rat">1.0</span> <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </span>
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </form>
                                <a href="javascript:void(0);" class="hot-page2-alp-p5-btn-s">查看更多</a>
                            </div>
                        </div>
                        <!--END PART 5 : LEFT LISTINGS-->
                        <!--PART 6 : LEFT LISTINGS-->
                        <div class="hot-page2-alp-l3 hot-page2-alp-l-com">
                            <h4><i class="fa fa-heart-o" aria-hidden="true"></i> 酒店设施 </h4>
                            <div class="hot-page2-alp-l-com1 hot-page2-alp-p5">
                                <form>
                                    <ul>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp71" class="styled" type="checkbox" checked="">
                                                <label for="chp71">
                                                    游泳池 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp72" class="styled" type="checkbox">
                                                <label for="chp72">
                                                    Wi-Fi和计算机 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp73" class="styled" type="checkbox">
                                                <label for="chp73">
                                                   厨房设施 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp74" class="styled" type="checkbox">
                                                <label for="chp74">
                                                    音乐与健身房 
                                                </label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="checkbox checkbox-info checkbox-circle">
                                                <input id="chp75" class="styled" type="checkbox">
                                                <label for="chp75">
                                                  吃饭 
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </form>
                                <a href="javascript:void(0);" class="hot-page2-alp-p5-btn-s">查看更多</a>
                            </div>
                        </div>
                        <!--END PART 7 : LEFT LISTINGS-->
                    </div>
                    <!--END LEFT LISTINGS-->

                    <!--RIGHT LISTINGS-->
                    <div class="col-md-9 hot-page2-alp-con-right">
                        <div class="hot-page2-alp-con-right-1">
                            <!--LISTINGS-->
                            <div class="row">
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.5</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd1.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                可用客房：42间 
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>三亚海棠湾9号度假酒店 </h3></a>
                                            <ul>
                                                <li>三亚海棠区海棠湾301路 .</li>
                                                <li> 电话  0898-38888855 传真  0898-38851915</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等..</p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd2.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                可用客房：18间 
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>上海和平饭店 </h3></a>
                                            <ul>
                                                <li> 上海黄浦区南京东路20号.</li>
                                                <li>电话  021-61386888 传真  021-61386951</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">5.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd3.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 53
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>北京丽景湾国际酒店 </h3></a>
                                            <ul>
                                                <li> 北京朝阳区东四环十里堡北里28号 .</li>
                                                <li> 电话  010-85858888</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.5</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd4.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                              可用客房：42间 
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>马哥孛罗香港酒店 </h3></a>
                                            <ul>
                                                <li>位置: 香港,油尖旺,九龙尖沙咀广东道3号海港城.</li>
                                                <li>电话00852--21130088</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd5.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 18
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>广州粤海喜来登酒店 </h3></a>
                                            <ul>
                                                <li>美国法明顿山180号套房乌节湖路28800号.</li>
                                                <li>+101-1231-1231, +61 6541-4561-12</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">5.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd6.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 53
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>澳门喜来登金沙城中心大酒店 Sheraton Grand Macao Hotel, Cotai Central  </h3></a>
                                            <ul>
                                                <li>位置: 澳门,路氹,路氹连贯公路 .</li>
                                                <li>电话00853--28802000</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.5</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd12.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 42
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>北京京瑞温泉国际酒店 </h3></a>
                                            <ul>
                                                <li>北京朝阳区东三环南路17号 .</li>
                                                <li>电话  010-67668866 传真  010-67655969</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.5</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/hotels/l1.jpeg.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 42
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>香港铜锣湾皇冠假日酒店 </h3></a>
                                            <ul>
                                                <li>位置: 香港,湾仔,铜锣湾礼顿道八号 .</li>
                                                <li>电话00852--39803980传真00852-39803900</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd7.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 18
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>杭州雅诗阁来福士中心服务公寓 </h3></a>
                                            <ul>
                                                <li>杭州江干区新业路228号来福士中心T1楼18层 .</li>
                                                <li>电话  0571-56026222 传真  0571-56026200</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">5.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd8.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 53
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>深圳花园格兰云天大酒店 </h3></a>
                                            <ul>
                                                <li> 深圳福田区深南中路田面城市大厦4028号 .</li>
                                                <li>电话  0755-82816666</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.5</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd9.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 42
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>厦门瑞颐大酒店  </h3></a>
                                            <ul>
                                                <li>厦门思明区鹭江道12号 .</li>
                                                <li>电话  0592-6366666</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd10.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                Available Rooms: 18
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>南京朗昇希尔顿酒店 </h3></a>
                                            <ul>
                                                <li>南京建邺区江东中路100号 .</li>
                                                <li>电话  025-86658888 传真  86658888</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">5.0</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/hotels/l9.jpeg.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                可用客房：53间 
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>三亚亚龙湾凯莱仙人掌度假酒店 </h3></a>
                                            <ul>
                                                <li> 三亚吉阳区亚龙湾国家旅游渡假区 .</li>
                                                <li> 电话  0898-88568866</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->
                                <!--LISTINGS START-->
                                <div class="hot-page2-alp-r-list">
                                    <div class="col-md-4 hot-page2-alp-r-list-re-sp">
                                        <a href="javascript:void(0);">
                                            <div class="hotel-list-score">4.5</div>
                                            <div class="hot-page2-hli-1">
                                                <img src="images/jd11.jpg" width="286.83" height="245.85" alt="">
                                            </div>
                                            <div class="hom-hot-av-tic hom-hot-av-tic-list">
                                                可用客房：42间
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="hot-page2-alp-ri-p2">
                                            <a href="hotel-details.html"><h3>上海外滩华尔道夫酒店  </h3></a>
                                            <ul>
                                                <li>上海黄浦区中山东一路2号 .</li>
                                                <li>电话  021-63229988 传真  021-63219888</li>
                                            </ul>
                                            <p><b>便利设施 : </b>厨房设施、游泳池、电视、Wi-Fi、吹风机、毛巾、餐饮、运动、停车场、音乐、健身房、游乐场等.. </p>
                                        </div>
                                    </div>
									<div class="col-md-2">
										<div class="hot-page2-alp-ri-p3">
											<div class="hot-page2-alp-r-hot-page-rat">25%Off</div>
											<span class="hot-list-p3-1">每晚价格 </span>
											<span class="hot-list-p3-2">￥650</span>
											<span class="hot-list-p3-3">￥550</span>
											<span class="hot-list-p3-4">
												<a href="booking1.html" class="hot-page2-alp-quot-btn">立即预定</a>
											</span>
										</div>
									</div>									
                                </div>
                                <!--END LISTINGS-->								
                            </div>
                        </div>
                    </div>
                    <!--END RIGHT LISTINGS-->
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

