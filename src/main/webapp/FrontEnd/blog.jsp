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
                <h2><span>最佳旅游 -</span> 你城市的行李 </h2><ul><li><a href="#inner-page-title">Home</a></li><li><i class="fa fa-angle-right" aria-hidden="true"></i> </li><li><a href="#inner-page-title" class="bread-acti">Blog Posts</a></li></ul>
                <p>分享你的旅游奇遇，和大家一起探讨旅行的奥秘 </p>
            </div>
        </div>
    </section>
    <!--====== ALL POST ==========-->
    <section>
        <section>
            <div class="rows inn-page-bg com-colo">
                <div class="container inn-page-con-bg tb-space pad-bot-redu-5" id="inner-page-title">
                    <!-- TITLE & DESCRIPTION -->
                    <div class="spe-title col-md-12">
                        <h2>假日旅游  <span>博客 </span> 帖子 </h2>
                        <div class="title-line">
                            <div class="tl-1"></div>
                            <div class="tl-2"></div>
                            <div class="tl-3"></div>
                        </div>
                        <p>最与众不同的你，说出你的故事。说不定我们曾插身而过 </p>
                    </div>
                    <!--===== POSTS ======-->
                    <div class="rows">
                        <div class="posts">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <img src="images/bk1.jpg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <h3>稻城亚丁｜转山转水转佛塔，只为今生遇见 </h3>
                                <h5><span class="post_author">作者：背包客 </span><span class="post_date">日期：2019年5月12日 </span><span class="post_city">City: 稻城</span></h5>
                                <p>到川藏地区游玩，强烈建议自驾，出行方便的多。在 稻城 机场达到大厅，有一个专门的落地自驾服务区，可以直接办理租车服务，简单方便。如果是第一次或者对 稻城 旅行不太熟悉的朋友，建议在这了解或者直接办理 甘孜 旅游一卡通，服务内容包括旅游定制，两人即可成团，落地租车，酒店预订，景区门票等等，都可以轻松搞定。另外，还可以享受机场的VIP待遇，走VIP安检 通道 ，在VIP候机室休息。</p>
                                <a href="#" class="link-btn">查看全文</a>
                            </div>
                        </div>
                        <div class="posts">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <img src="images/bk2.jpg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <h3>不如去大理 | 大理五月五日行记 </h3>
                                <h5><span class="post_author">作者：潘神</span><span class="post_date">日期：2019年6月12日</span><span class="post_city">City: 大理</span></h5>
                               <p>　　曾有一个朋友对我说，大理是可以洗心的；还有一个朋友说，大理的云可以让自己呆呆地看上一整天。

                                   　　十年前，无所畏惧的少年们踏上自由的旅程，短暂定居在丽江一隅的纳西族四合院，然后某一个周末，乘坐着大巴车第一次来到大理。下关的风吹得猛烈，上关的花开得灿烂，不曾看到苍山的积雪，但是记忆里最深刻的却是返回丽江的时候，大巴车拥堵在半山腰，司机关闭了车厢里的所有灯光，抬头的瞬间，车窗外的月亮竟是如此的明亮，如此的巨大。这是我迄今为止看到过的最大的月亮，而且它很神奇地挂在矮矮的天边，有一种比自己乘坐的大巴车位置还要低矮的错觉；远远望去，似乎自己就这样坐着月亮身边的一朵云上。</p>
                                <a href="#" class="link-btn">查看全文</a>
                            </div>
                        </div>
                        <div class="posts">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <img src="images/bk3.gif" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <h3>三亚攻略，教你如何花最少的钱，玩转不一样的三亚 </h3>
                                <h5><span class="post_author">作者：3423425</span><span class="post_date">日期：2019年6月12日</span><span class="post_city">City: 三亚</span></h5>
                                <p>三面青山一面海，半城渔船半城车。曾经游走在人间天堂的  江南  苏杭，也曾穿行过大漠孤烟的塞外风光，但在我的心里都有这样一个梦想的地方，在那里有暖阳微风，有海洋美食，那是海阔天空，是蔚蓝澄澈，是美丽，是梦幻，是浪漫，是心灵最深处的渴望，那里就是  三亚  。</p>
                                <a href="#" class="link-btn">查看全文</a>
                            </div>
                        </div>
                        <div class="posts">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <img src="images/bk4.jpg" alt="" />
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <h3>台湾自由行不完全攻略 ：小姐妹，逃学去毕旅 </h3>
                                <h5><span class="post_author">作者：guns324</span><span class="post_date">日期：2019年6月12日</span><span class="post_city">City: 台北</span></h5>
                                <p>  住宿一般在booking定，一般需要信用卡。

                                    对于初级观光客来说，我并不特别建议纯粹的airbnb，主要是酒店可以提供很多便利设施。比如叫车、行程建议、自助洗衣机等。

                                    这里记录一下我们住的酒店。其中除了垦丁的民宿外的酒店都提供自助洗衣、烘干服务，很方便。

                                    这些酒店都还不错，其中台北和花莲考虑了性价比，垦丁的民宿主要是好看到没朋友，高雄的酒店是我们临走前的小奢侈。</p>
                                <a href="#" class="link-btn">查看全文</a>
                            </div>
                        </div>
                    </div>
                    <!--===== POST END ======-->
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
    </section>
        <!--========= Scripts ===========-->
        <script src="js/jquery-latest.min.js"></script>
        <script src="js/bootstrap.js"></script>
		<script src="js/wow.min.js"></script>
		<script src="js/custom.js"></script>
</body>

</html>

