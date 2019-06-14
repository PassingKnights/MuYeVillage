<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title></title>	
		<link rel="stylesheet" href="../assets/css/core.css" />
		<link rel="stylesheet" href="../assets/css/menu.css" />
		<link rel="stylesheet" href="../assets/css/amazeui.css" />
		<link rel="stylesheet" href="../assets/css/component.css" />
		<link rel="stylesheet" href="../assets/css/page/form.css" />
	</head>
	<body>
		<div class="account-pages">
			<div class="wrapper-page">
				<div class="text-center">
	                <a href="index.html" class="logo"><span>小熊旅行社</span></a>
	            </div>
	            
	            <div class="m-t-40 card-box">
	            	<div class="text-center">
	                    <h4 class="text-uppercase font-bold m-b-0">后台管理</h4>
	                </div>
	                <div class="panel-body">
	                	<form class="am-form">
	                		<div class="am-g">
	                			<div class="am-form-group">
							      <input id="username" type="email" class="am-radius"  placeholder="用户名">
							    </div>
							
							    <div class="am-form-group form-horizontal m-t-20">
							      <input id="password" type="password" class="am-radius"  placeholder="密码">
							    </div>
							    
							    <div class="am-form-group ">
		                           	<label style="font-weight: normal;color: #999;">
								        <input type="checkbox" class="remeber"> Remember me
								    </label>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        	<button id="login" type="button" class="am-btn am-btn-primary am-radius" style="width: 100%;height: 100%;">登录</button>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        <a href="page-recoverpw.html" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
		                        </div>
	                		</div>

	                	</form>
							
	                </div>
	            </div>
			</div>
		</div>


	<script src="${request.getContextPath()}/js/jquery-3.3.1.js"></script>
	<script>
		$("#login").click(function () {
			var username = $("#username").val();
			var password = $("#password").val();
			$.getJSON("${request.getContextPath()}/staff/login",{"username":username,"password":password},function (data) {
				if(data.result=='失败'){
				    alert("账号密码不正确");
				}else {
				    window.location.href="${request.getContextPath()}/order/toHome";
				}
            })
        })
	</script>
	</body>
</html>
