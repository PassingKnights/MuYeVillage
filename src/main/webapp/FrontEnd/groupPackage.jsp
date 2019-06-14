﻿<%@ page language="java" contentType="text/html; charset=Utf-8"
         pageEncoding="utf-8"%>
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
                <h2><span>旅游团套餐 -</span> Top 最热门的团套餐</h2><ul><li><a href="#inner-page-title">Home</a></li><li><i class="fa fa-angle-right" aria-hidden="true"></i> </li><li><a href="#inner-page-title" class="bread-acti">旅游团套餐</a></li></ul>
                <p>预订旅行套餐，享受与众不同的度假体验 </p>
            </div>
        </div>
    </section>

    <section>
        <div class="rows home_enq">
            <div class="container">
                <div class="home_form">
                    <!-- SLIDER ENQUIRY FORM -->
                    <form id="home_enquiry" name="home_enquiry" action="">
                        <ul>
                            <li class="col-md-2 col-sm-12 col-xs-12">
                                <h4>查询旅游团</h4>
                            </li>
                            <li class="col-md-2 col-sm-6 col-xs-12">
                                <input type="text" id="qename" name="qename" placeholder="景点">
                            </li>

                            <li class="col-md-2 col-sm-6 col-xs-12">
                                <input type="text" id="qemail" name="qemail" placeholder="出发时间">
                            </li>
                            <li class="col-md-2 col-sm-6 col-xs-12">
                                <input type="text" id="qephone" name="qephone" placeholder="价格">
                            </li>
                            <li class="col-md-2 col-sm-6 col-xs-12">
                                <input id="tijiao" type="submit" value="搜索">
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--====== PLACES ==========-->
    <section>
        <div class="rows inn-page-bg com-colo">
            <div class="container inn-page-con-bg tb-space pad-bot-redu-5" id="inner-page-title">
                <!--===== PLACES ======-->
                <div id="lijiang" class="rows p2_2">
                    <div class="col-md-6 col-sm-6 col-xs-12 p2_1">
                        <div class="band"><img src="images/band.png" alt="" />
                        </div>
                        <img src="images/fm1.jpg" width="540" height="346.58" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 p2">
                        <h3>丽江5晚/6天  <span><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span></h3>
                        <p>【跟团游】纯玩0购物不限年龄|昆大丽6日|双廊网红下午茶+海景酒店+私人游艇+雪山登顶</p>
                        <div class="ticket">
                            <ul>
                                <li>可用票  : 48</li>
                                <li>开始日期  : 06.27.2019</li>
                                <li>结束日期  : 07.03.2019</li>
                            </ul>
                        </div>
                        <div class="featur">
                            <h4>丽江</h4>
                            <ul>
                                <li>住宿 </li>
                                <li>6 早餐 , 5 晚餐 </li>
                                <li>头等舱观光 </li>
                                <li>高档型酒店</li>
                            </ul>
                        </div>
                        <div class="p2_book">
                            <ul>
                                <li><a href="${request.getContextPath()}/order/toOrderInfo?tgId=22" class="link-btn">立即预订</a>
                                </li>
                                <li><a href="tour-details.html" class="link-btn">查看套餐 </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--===== PLACES END ======-->
                <!--===== PLACES ======-->
                <div id="dali" class="rows p2_2">
                    <div class="col-md-6 col-sm-6 col-xs-12 p2_1">
                        <img src="images/fm2.jpg" width="540" height="346.58" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 p2">
                        <h3>大理6晚/7天  <span><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span></h3>
                        <p>【跟团游·促销】暑期预热丨直飞昆明大理香格里拉7日丨吃火锅看表演丨双古城+洱海游轮 </p>
                        <div class="ticket">
                            <ul>
                                <li>可用票  : 48</li>
                                <li>开始日期  : 06.24.2019</li>
                                <li>结束日期  : 06.29.2019</li>
                            </ul>
                        </div>
                        <div class="featur">
                            <h4>丽江</h4>
                            <ul>
                                <li>住宿 </li>
                                <li>7 早餐 , 6 晚餐 </li>
                                <li>头等舱观光 </li>
                                <li>高档型酒店</li>
                            </ul>
                        </div>
                        <div class="p2_book">
                            <ul>
                                <li><a href="${request.getContextPath()}/order/toOrderInfo?tgId=26" class="link-btn">立即预订</a>
                                </li>
                                <li><a href="tour-details.html" class="link-btn">查看套餐</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--===== PLACES END ======-->
                <!--===== PLACES ======-->
                <div id="sanya" class="rows p2_2">
                    <div class="col-md-6 col-sm-6 col-xs-12 p2_1">
                        <img src="images/fm3.jpg" width="540" height="346.58" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 p2">
                        <h3>三亚6天5夜自由行  <span><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span></h3>
                        <p>【自由行】亲子酒店/三亚湾红树林木棉6日游送亚马逊水上乐园，西岛&天堂公园沙滩一日游</p>
                        <div class="ticket">
                            <ul>
                                <li>可用票  : 48</li>
                                <li>开始日期  : 06.23.2019</li>
                                <li>结束日期  : 06.28.2019</li>
                            </ul>
                        </div>
                        <div class="featur">
                            <h4>三亚</h4>
                            <ul>
                                <li>住宿 </li>
                                <li>8 早餐 , 3 晚餐 </li>
                                <li>头等舱观光 </li>
                                <li>高档型酒店</li>
                            </ul>
                        </div>
                        <div class="p2_book">
                            <ul>
                                <li><a href="${request.getContextPath()}/order/toOrderInfo?tgId=27" class="link-btn">立即预订</a>
                                </li>
                                <li><a href="tour-details.html" class="link-btn">查看套餐</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--===== PLACES END ======-->
                <!--===== PLACES ======-->
                <div id="beihai" class="rows p2_2">
                    <div class="col-md-6 col-sm-6 col-xs-12 p2_1">
                        <img src="images/fm4.jpg" width="540" height="346.58" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 p2">
                        <h3>北海5天4夜自由行  <span><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span></h3>
                        <p>自由行】🔥亲子海岛⊙飞北海+涠洲岛5日⊙赠赶海+海底世界/住海景公寓+船票+上岛费 </p>
                        <div class="ticket">
                            <ul>
                                <li>可用票  : 48</li>
                                <li>开始日期  : 06.30.2019</li>
                                <li>结束日期  : 07.05.2019</li>
                            </ul>
                        </div>
                        <div class="featur">
                            <h4>北海</h4>
                            <ul>
                                <li>住宿 </li>
                                <li>8 早餐 , 3 晚餐 </li>
                                <li>头等舱观光 </li>
                                <li>高档型酒店</li>
                            </ul>
                        </div>
                        <div class="p2_book">
                            <ul>
                                <li><a href="${request.getContextPath()}/order/toOrderInfo?tgId=25" class="link-btn">立即预订</a>
                                </li>
                                <li><a href="tour-details.html" class="link-btn">查看套餐</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--===== PLACES END ======-->
                <!--===== PLACES ======-->
                <div id="menggu" class="rows p2_2">
                    <div class="col-md-6 col-sm-6 col-xs-12 p2_1">
                        <img src="images/fm.5.jpg" width="540" height="346.58" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 p2">
                        <h3>蒙古8天7夜跟团行  <span><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span></h3>
                        <p>【跟团游】网红星选☼穿越大草原☼星空帐篷蒙古包☼呼伦贝尔+湿地牧场8日游☼草原BBQ☼</p>
                        <div class="ticket">
                            <ul>
                                <li>可用票  : 48</li>
                                <li>开始日期  : 06.30.2019</li>
                                <li>结束日期  : 07.07.2019</li>
                            </ul>
                        </div>
                        <div class="featur">
                            <h4>呼伦贝尔</h4>
                            <ul>
                                <li>住宿 </li>
                                <li>8 早餐 , 3 晚餐 </li>
                                <li>头等舱观光 </li>
                                <li>高档型酒店</li>
                            </ul>
                        </div>
                        <div class="p2_book">
                            <ul>
                                <li><a href="${request.getContextPath()}/order/toOrderInfo?tgId=23" class="link-btn">立即预订</a>
                                </li>
                                <li><a href="tour-details.html" class="link-btn">查看套餐</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--===== PLACES END ======-->
                <!--===== PLACES ======-->
                <div id="yanan" class="rows p2_2">
                    <div class="col-md-6 col-sm-6 col-xs-12 p2_1">
                        <img src="images/fm.6.jpg" width="540" height="346.58" alt="" />
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12 p2">
                        <h3>延安4天三夜跟团行  <span><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></span></h3>
                        <p>【自由行】西安双飞4天3晚自由行 游兵马俑+华清宫+骊山+茂陵+乾陵+法门寺+明城墙</p>
                        <div class="ticket">
                            <ul>
                                <li>可用票  : 48</li>
                                <li>开始日期  : 06.25.2019</li>
                                <li>结束日期  : 06.29.2019</li>
                            </ul>
                        </div>
                        <div class="featur">
                            <h4>西安</h4>
                            <ul>
                                <li>住宿 </li>
                                <li>8 早餐 , 3 晚餐 </li>
                                <li>头等舱观光 </li>
                                <li>高档型酒店</li>
                            </ul>
                        </div>
                        <div class="p2_book">
                            <ul>
                                <li><a href="${request.getContextPath()}/order/toOrderInfo?tgId=24" class="link-btn">立即预订</a>
                                </li>
                                <li><a href="tour-details.html" class="link-btn">查看套餐</a>
                                </li>
                            </ul>
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

    <script src="../js/jquery-3.3.1.js"></script>
    <script>
        $("#tijiao").click(function () {

            var spot = $("#qename").val();
            console.log(spot);
            if (spot=="丽江") {
                $("#lijiang").siblings().hide();
                $("#lijiang").show();
            }else if (spot=="大理") {
                $("#dali").siblings().hide();
                $("#dali").show();
            }else if (spot=="蒙古") {
                $("#menggu").siblings().hide();
                $("#menggu").show();
            }else if (spot=="北海") {
                $("#beihai").siblings().hide();
                $("#beihai").show();
            }else if (spot=="延安") {
                $("#yanan").siblings().hide();
                $("#yanan").show();
            }else if (spot=="三亚") {
                $("#sanya").siblings().hide();
                $("#sanya").show();
            }
        })
    </script>
</body>

</html>

