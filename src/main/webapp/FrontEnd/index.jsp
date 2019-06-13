<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>主页</title>

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
    <!-- SECTION: HEADER -->
    <section class="c3 c3-slider">
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                    <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                </ol>			

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">

                    <div class="item active">
                        <!--<img src="images/slider/" alt="Chania" width="460" height="345">-->
                        <div class="carousel-caption slider-cap">
                            <h1 class="wow fadeInDown" data-wow-duration="1s">稻城亚丁｜转山转水转佛塔，只为今生遇见</h1>
                            <p class="wow fadeInUp" data-wow-duration="1.5s">两人即可成团，落地租车，酒店预订，景区门票等等，都可以轻松搞定</p>
                            <a href="tour-details.html" class="hs1 wow fadeInUp" data-wow-duration="2.0s">现在开始！</a>

                        </div>
                    </div>

                    <div class="item">
                        <!--<img src="images/slider/2.png" alt="Chania" width="460" height="345">-->
                        <div class="carousel-caption slider-cap">
                            <h1 class="wow fadeInDown" data-wow-duration="1s">好的酒店对的你，这就是我们的开始</h1>
                            <p class="wow fadeInUp" data-wow-duration="1.5s">领先酒店预订，快人一步的选择，快人一步的享受。预订酒店客房，享受美好的假期</p>
                            <a href="hotels-list.jsp" class="hs1 wow fadeInUp" data-wow-duration="2.0s">现在开始！</a>
                        </div>
                    </div>

                    <div class="item">
                        <!--<img src="images/slider/3.png" alt="Chania" width="460" height="345">-->
                        <div class="carousel-caption slider-cap">
                            <h1 class="wow fadeInDown" data-wow-duration="1s">蜜月套餐6晚7天。丽江大理，放飞心灵的地方</h1>
                            <p class="wow fadeInUp" data-wow-duration="1.5s">大理是可以洗心的；还有一个朋友说，大理的云可以让自己呆呆地看上一整天。</p>
                            <a href="tour-details.html" class="hs1 wow fadeInUp" data-wow-duration="2.0s">现在开始！</a>
                        </div>
                    </div>					
                </div>
            </div>
        </div>
    </section>

    <!--====== HOME PLACES ==========-->
    <section>
        <div class="rows pad-bot-redu tb-space">
            <div class="container">
                <!-- TITLE & DESCRIPTION -->
                <div class="spe-title">
                    <h2>Top<span>著名景点</span>本月</h2>
                    <div class="title-line">
                        <div class="tl-1"></div>
                        <div class="tl-2"></div>
                        <div class="tl-3"></div>
                    </div>
                    <p>山山水水，白雪郁郁，遍地的足迹，弥漫物语。走出你的天地，踏上你的征程。</p>
                </div>
                <div>
                    <!-- TOUR PLACE 1 -->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <!-- OFFER BRAND -->
                        <div class="band">
                            <img src="images/band.png" alt="" />
                        </div>
                        <!-- IMAGE -->
                        <div class="v_place_img">
                            <img src="images/t5.1.jpg" width="350" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <!-- TOUR TITLE & ICONS -->
                        <div class="b_pack rows">
                            <!-- TOUR TITLE -->
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="https://map.baidu.com/search/%E5%85%B5%E9%A9%AC%E4%BF%91/@12165560.1616604,4057208.2253099997,17.23z?querytype=s&da_src=shareurl&wd=%E5%85%B5%E9%A9%AC%E4%BF%91&c=179&src=0&pn=0&sug=0&l=13&b=(13357507.792262392,3504276.7776481197;13381517.36441624,3518352.5648318804)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&device_ratio=2">兵马俑<span class="v_pl_name">(西安)</span></a></h4>
                            </div>
                            <!-- TOUR ICONS -->
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
                                        <a href=""><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- TOUR PLACE 2 -->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <!-- OFFER BRAND -->
                        <div class="band">
                            <img src="images/band1.png" alt="" />
                        </div>
                        <!-- IMAGE -->
                        <div class="v_place_img">
                            <img src="images/t4.1.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <!-- TOUR TITLE & ICONS -->
                        <div class="b_pack rows">
                            <!-- TOUR TITLE -->
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">故宫<span class="v_pl_name">(北京)</span></a></h4>
                            </div>
                            <!-- TOUR ICONS -->
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
                                        <a href="https://map.baidu.com/search/%E6%95%85%E5%AE%AB/@12957571.777506411,4827097.3565299995,16.57z?querytype=s&da_src=shareurl&wd=%E6%95%85%E5%AE%AB&c=233&src=0&pn=0&sug=0&l=17&b=(12164396.554988604,4056526.052392763;12166723.768332195,4057890.3982272362)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&device_ratio=2"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- TOUR PLACE 3 -->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/t3.1.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">九寨沟<span class="v_pl_name">(四川)</span></a></h4>
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
                                        <a href="https://map.baidu.com/search/%E4%B9%9D%E5%AF%A8%E6%B2%9F/@11559567.517771937,3890420.10297,12.35z?querytype=s&da_src=shareurl&wd=%E4%B9%9D%E5%AF%A8%E6%B2%9F&c=132&src=0&pn=0&sug=0&l=13&b=(11833032,3415266;11876808,3440930)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&device_ratio=2"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- TOUR PLACE 4 -->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/t2.1.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">布达拉宫<span class="v_pl_name">(西藏)</span></a></h4>
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
                                        <a href="https://map.baidu.com/search/%E5%B8%83%E8%BE%BE%E6%8B%89%E5%AE%AB/@10143900.134781608,3438669.955,18.25z?querytype=s&da_src=shareurl&wd=%E5%B8%83%E8%BE%BE%E6%8B%89%E5%AE%AB&c=185&src=0&pn=0&sug=0&l=12&b=(11525112.136823218,3870220.384021994;11594022.898720656,3910619.8219180056)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&device_ratio=2"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- TOUR PLACE 5 -->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/t1.1.png" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">东方明珠<span class="v_pl_name">(上海)</span></a></h4>
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
                                        <a href="https://map.baidu.com/search/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/@13526093.4028454,3642279.815325,19z?querytype=s&da_src=shareurl&wd=%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0&c=100&src=0&pn=0&sug=0&l=18&b=(10143325.213126436,3438332.9029770116;10144475.05643678,3439007.0070229885)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&device_ratio=2"><img src="images/map.png" alt="Location" title="Location" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- TOUR PLACE 6 -->
                    <div class="col-md-4 col-sm-6 col-xs-12 b_packages">
                        <div class="v_place_img"><img src="images/c1.jpg" width="305" height="203" alt="Tour Booking" title="Tour Booking" />
                        </div>
                        <div class="b_pack rows">
                            <div class="col-md-8 col-sm-8">
                                <h4><a href="tour-details.html">西湖<span class="v_pl_name">(杭州)</span></a></h4>
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
                                        <a href="https://map.baidu.com/search/%E8%A5%BF%E6%B9%96/@13369512.578339316,3511314.67124,13.87z?querytype=s&da_src=shareurl&wd=%E8%A5%BF%E6%B9%96&c=289&src=0&pn=0&sug=0&l=19&b=(13525751.4028454,3642079.315325;13526435.4028454,3642480.315325)&from=webmap&biz_forward=%7B%22scaler%22:2,%22styles%22:%22pl%22%7D&device_ratio=2"><img src="images/map.png" alt="Location" title="Location" />
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

    <!--====== HOME HOTELS ==========-->
    <section>
        <div class="rows tb-space pad-top-o pad-bot-redu">
            <div class="container">
                <!-- TITLE & DESCRIPTION -->
                <div class="spe-title">
                    <h2>Top <span>大酒店</span> 预订现在开始!</h2>
                    <div class="title-line">
                        <div class="tl-1"></div>
                        <div class="tl-2"></div>
                        <div class="tl-3"></div>
                    </div>
                    <p>领先的酒店预订。预订酒店客房，享受与众不同的度假体验</p>
                </div>
                <!-- HOTEL GRID -->
                <div class="to-ho-hotel">
                    <!-- HOTEL GRID -->
                    <div class="col-md-4">
                        <div class="to-ho-hotel-con">
                            <div class="to-ho-hotel-con-1">
                                <div class="hot-page2-hli-3">
                                    <img src="images/hci1.png" alt="">
                                </div>
                                <div class="hom-hot-av-tic">
                                    可用票：42张
                                </div>
                                <img src="images/hotels/gd1.png" width="348" height="221" alt="">
                            </div>
                            <div class="to-ho-hotel-con-23">
                                <div class="to-ho-hotel-con-2">
                                    <h4>玉龙海畔度假村</h4>
                                </div>
                                <div class="to-ho-hotel-con-3">
                                    <ul>
                                        <li>城市：丽江
                                            <div class="dir-rat-star ho-hot-rat-star">
                                                评级: <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                            </div>
                                        </li>
                                        <li><span class="ho-hot-pri-dis">￥720</span><span class="ho-hot-pri">￥420</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="to-ho-hotel-con-5">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 420</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 570</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 52</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="to-ho-hotel-con-4">
                                    <a href="booking1.html" class="link-btn hom-hot-book-btn">立即预订</a><a href="hotel-details.html" class="link-btn hom-hot-view-btn">查看更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- HOTEL GRID -->
                    <div class="col-md-4">
                        <div class="to-ho-hotel-con">
                            <div class="to-ho-hotel-con-1">
                                <div class="hot-page2-hli-3">
                                    <img src="images/hci1.png" alt="">
                                </div>
                                <div class="hom-hot-av-tic">
                                    可用票: 520
                                </div>
                                <img src="images/hotels/gd2.png" width="348" height="221" alt="">
                            </div>
                            <div class="to-ho-hotel-con-23">
                                <div class="to-ho-hotel-con-2">
                                    <h4>大理大德生福客栈</h4>
                                </div>
                                <div class="to-ho-hotel-con-3">
                                    <ul>
                                        <li>城市：云南
                                            <div class="dir-rat-star ho-hot-rat-star">
                                                评级: <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                            </div>
                                        </li>
                                        <li><span class="ho-hot-pri-dis">￥840</span><span class="ho-hot-pri">￥540</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="to-ho-hotel-con-5">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 420</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 570</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 52</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="to-ho-hotel-con-4">
                                    <a href="booking1.html" class="link-btn hom-hot-book-btn">立即预订</a><a href="hotel-details.html" class="link-btn hom-hot-view-btn">查看更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- HOTEL GRID -->
                    <div class="col-md-4">
                        <div class="to-ho-hotel-con">
                            <div class="to-ho-hotel-con-1">
                                <div class="hot-page2-hli-3">
                                    <img src="images/hci1.png" alt="">
                                </div>
                                <div class="hom-hot-av-tic">
                                   可用票: 92
                                </div>
                                <img src="images/hotels/gd3.png" width="348" height="221" alt="">
                            </div>
                            <div class="to-ho-hotel-con-23">
                                <div class="to-ho-hotel-con-2">
                                    <h4>三亚湾海居铂尔曼度假酒店</h4>
                                </div>
                                <div class="to-ho-hotel-con-3">
                                    <ul>
                                        <li>城市：三亚
                                            <div class="dir-rat-star ho-hot-rat-star">
                                                评级: <i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i>
                                            </div>
                                        </li>
                                        <li><span class="ho-hot-pri-dis">￥680</span><span class="ho-hot-pri">￥380</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="to-ho-hotel-con-5">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 420</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> 570</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> 52</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="to-ho-hotel-con-4">
                                    <a href="booking1.html" class="link-btn hom-hot-book-btn">立即预订</a><a href="hotel-details.html" class="link-btn hom-hot-view-btn">查看更多</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!--====== EVENTS ==========-->
    <section>
        <div class="rows tb-space">
            <div class="container events events-1" id="inner-page-title">
                <!-- TITLE & DESCRIPTION -->
                <div class="spe-title">
                    <h2>Top <span>旅游景点</span> 本周</h2>
                    <div class="title-line">
                        <div class="tl-1"></div>
                        <div class="tl-2"></div>
                        <div class="tl-3"></div>
                    </div>
                    <p>全球最热门的景点体验。预订旅行套餐，享受与众不同的度假体验</p>
                </div>
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="搜索.." title="Type in a name">
                <table id="myTable">
                    <tbody>
                        <tr>
                            <th>#</th>
                            <th>Event Name</th>
                            <th class="e_h1">Date</th>
                            <th class="e_h1">Time</th>
                            <th class="e_h1">City</th>
                            <th>Book</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td><img src="images/p1.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">稻城亚丁</a>
                            </td>
                            <td class="e_h1">6.20.2019</td>
                            <td class="e_h1">7:00 </td>
                            <td class="e_h1">川藏</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><img src="images/p2.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">维多利亚港</a>
                            </td>
                            <td class="e_h1">6.24.2019</td>
                            <td class="e_h1">5:00 </td>
                            <td class="e_h1">香港</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td><img src="images/p3.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">长城</a>
                            </td>
                            <td class="e_h1">6.28.2019</td>
                            <td class="e_h1">10:00 </td>
                            <td class="e_h1">北京</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td><img src="images/p4.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">外滩 </a>
                            </td>
                            <td class="e_h1">6.23.2019</td>
                            <td class="e_h1">20:00 </td>
                            <td class="e_h1">上海</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td><img src="images/p5.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">雷锋塔 </a>
                            </td>
                            <td class="e_h1">6.29.2019</td>
                            <td class="e_h1">19:00 </td>
                            <td class="e_h1">杭州</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td><img src="images/p6.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">秦淮河 </a>
                            </td>
                            <td class="e_h1">6.20.2019</td>
                            <td class="e_h1">8:00</td>
                            <td class="e_h1">南京</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td><img src="images/p7.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">鼓浪屿 </a>
                            </td>
                            <td class="e_h1">6.20.2019</td>
                            <td class="e_h1">14:00</td>
                            <td class="e_h1">厦门</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td><img src="images/p8.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">锦里古街 </a>
                            </td>
                            <td class="e_h1">6.20.2019</td>
                            <td class="e_h1">10.00 </td>
                            <td class="e_h1">成都</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td><img src="images/p9.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">钟楼 </a>
                            </td>
                            <td class="e_h1">6.22.2019</td>
                            <td class="e_h1">21:00 </td>
                            <td class="e_h1">西安</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td><img src="images/p10.jpg" width="110" height="80.97" alt="" /><a href="#" class="events-title">象鼻山 </a>
                            </td>
                            <td class="e_h1">6.21.2019</td>
                            <td class="e_h1">21:00</td>
                            <td class="e_h1">桂林</td>
                            <td><a href="booking.html" class="link-btn">立即预订 </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>


    <!--====== POPULAR TOUR PLACES ==========-->
    <section>
        <div class="rows pla pad-bot-redu tb-space">
            <div class="pla1 p-home container">
                <!-- TITLE & DESCRIPTION -->
                <div class="spe-title spe-title-1">
                    <h2>Top <span>旅游团套餐 </span> 本月 </h2>
                    <div class="title-line">
                        <div class="tl-1"></div>
                        <div class="tl-2"></div>
                        <div class="tl-3"></div>
                    </div>
                    <p>最新最好的服务旅游团套餐。预订旅行套餐，享受与众不同的度假体验 </p>
                </div>
                <div class="popu-places-home">
                    <!-- POPULAR PLACES 1 -->
                    <div class="col-md-6 col-sm-6 col-xs-12 place">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <img src="images/tuan1.jpg" width="247" height="222.73" alt="" />
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <h3><span>海南藏族自治州跟团游</span> 8 Days / 7 Nights</h3>
                            <p>【跟团游】纯玩钜献♥大漠戈壁♥环游西北♥茶卡盐湖☂青海湖♥敦煌☛青海兰州大环线✈8日游</p>
                            <a href="tour-details.html" class="link-btn">了解详情</a>
                        </div>
                    </div>
                    <!-- POPULAR PLACES 2 -->
                    <div class="col-md-6 col-sm-6 col-xs-12 place">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <img src="images/tuan2.jpg" width="247" height="222.73" alt="" />
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <h3><span>大理8天7夜跟团游</span> 8 Days / 7 Nights</h3>
                            <p>【跟团游】暑期惊天价♥爆品0自费（五星酒店、四大5A景区）不带一分钱游云南の儿童免车餐 </p>
                            <a href="tour-details.html" class="link-btn">了解详情</a>
                        </div>
                    </div>
                </div>
                <div class="popu-places-home">
                    <!-- POPULAR PLACES 3 -->
                    <div class="col-md-6 col-sm-6 col-xs-12 place">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <img src="images/tuan3.jpg" width="247" height="222.73" alt="" />
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <h3><span>厦门5天4夜跟团游 </span> 5 Days / 4 Nights</h3>
                            <p>【半自助游】亲子10人团|住国际五星希尔顿|海景地铁+3大美食+5D秀+鼓浪屿|厦门5日</p>
                            <a href="tour-details.html" class="link-btn">了解详情</a>
                        </div>
                    </div>
                    <!-- POPULAR PLACES 4 -->
                    <div class="col-md-6 col-sm-6 col-xs-12 place">
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <img src="images/tuan4.jpg" width="247" height="222.73" alt="" />
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <h3><span>丽江6天5夜跟团游</span> 6 Days / 5 Nights</h3>
                            <p>【跟团游·促销】青春不留遗憾☂五星温泉酒店☂纯玩0购物无年龄限制｜昆明大理丽江6天｜鲜花铺床</p>
                            <a href="tour-details.html" class="link-btn">了解详情</a>
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

