<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>精美的CSS3登录注册切换表单页面模板</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
</head>
<body>


<div class="cotn_principal">
    <div class="cont_centrar">
        <div class="cont_login">
            <div class="cont_info_log_sign_up">
                <div class="col_md_login">
                    <div class="cont_ba_opcitiy">
                        <h2>登录</h2>
                        <p>如果没有账号请先注册哟</p>
                        <button class="btn_login" onClick="cambiar_login()">LOGIN</button>
                    </div>
                </div>
                <div class="col_md_sign_up">
                    <div class="cont_ba_opcitiy">
                        <h2>注册</h2>
                        <p>欢迎加入我们</p>
                        <button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN UP</button>
                    </div>
                </div>
            </div>
            <div class="cont_back_info">
                <div class="cont_img_back_grey"> <img src="images/po.jpg" alt="" /> </div>
            </div>
            <div class="cont_forms" >
                <div class="cont_img_back_"> <img src="images/po.jpg" alt="" /> </div>
                <div class="cont_form_login"> <a href="#" onClick="ocultar_login_sign_up()" ><i class="material-icons">&#xE5C4;</i></a>
                    <h2>登录</h2>
                    <input type="text" id="email" placeholder="邮箱" />
                    <input type="password" id="password" placeholder="密码" />
                    <button class="btn_login" id="login" onClick="cambiar_login()">登录</button>
                </div>
                <div class="cont_form_sign_up"> <a href="#" onClick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
                    <h2>注册</h2>
                    <input type="text" id="username" placeholder="用户名" />
                    <input type="text" id="uemail" placeholder="邮箱" />
                    <input type="password" id="upassword" placeholder="密码" />
                    <input type="text" id="uphone" placeholder="电话" />
                    <button class="btn_sign_up" id="register" onClick="cambiar_sign_up()">注册</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="js/index.js"></script>
<script src="js/jquery-3.3.1.js"></script>

<script>
    $("#login").click(function () {
        var email = $("#email").val();
        var password = $("#password").val();

        $.getJSON("${request.getContextPath()}/user/login",{"trEmail":email,"trPassword":password},function (data) {
            console.log(data.result);
            if(data.result=='失败'){
                alert("邮箱或密码不正确");
            }else if(data.result=='成功'){
                window.location.href="FrontEnd/index.jsp";
            }
        })
    })

    $("#register").click(function () {
        var username = $("#username").val();
        var uemail = $("#uemail").val();
        var upassword = $("#upassword").val();
        var uphone = $("#uphone").val();

        var s = {"trName":username,"trEmail":uemail,"trPassword":upassword,"trPhone":uphone};
        $.ajax({
            url:"${request.getContextPath()}/user/register",
            data:s,
            success: function (data) {
                console.log(data);

                if(data=='失败'){
                    alert("邮箱已存在");
                }else if(data=='成功'){
                    alert("注册成功，可以登录了");
                }
            }
        })
    })
</script>
</body>
</html>

