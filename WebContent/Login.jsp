<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link href="./login/style_log.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="./login/style.css">
<link rel="stylesheet" type="text/css" href="./login/userpanel.css">
<link rel="stylesheet" type="text/css" href="./login/jquery.ui.all.css">
<link rel="stylesheet" type="text/css"
	href="./login/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="./login/css/muke.css">

<script>
	function checkForm() {
		//alert("aa");
		/**校验用户名*/
		//1.获取用户输入的数据
		var uValue = document.getElementById("username").value;
		//alert(uValue);
		if (uValue == "") {
			//2.给出错误提示信息
			alert("用户名不能为空!");
			return false;
		}

		/*校验密码*/
		var pValue = document.getElementById("password").value;
		if (pValue == "") {
			alert("密码不能为空!");
			return false;
		}

	}
</script>

</head>
<body class="backg_huibai" mycollectionplug="bind">
	<!-- 顶部 -->
	<div class="width100 float_l height20 img_backg1">
		<div class="width100 float_l height20 line_hei80">
			<!-- 顶部左边 -->
			<div class="float_l">
				<div class="float_l margin_l20">
					<a href="HomePage.html"><img src="img/logo.png"></a>
				</div>
				<div class="float_l">
					<ul class="ul_li fon_siz16">
						<li><a href="show">首页</a></li>
						<li><a href="Class_1.jsp">课程</a></li>
						<li><a>评论交流</a></li>
					</ul>
				</div>
			</div>

			<!-- 顶部右边 -->
			<div class="float_r">
				<div class="float_l top_input">
					<input class="posi_relative" type="text" name="" id=""
						placeholder="请输入想搜索的内容..."> <img
						class="img_sousuo bianshou" src="img/uiz4.png">
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="login_m">
		<div class="login_logo">
			<img src="./login/logo.png" width="196" height="46">
		</div>
		<h1 style="text-align: center">登录</h1>
		<br>
		<form action="Login" method="post" onsubmit="return checkForm()">
			<div class="login_boder">
				<div class="login_padding" id="login_model">
					<h2>账户名</h2>
					<label> <input type="text" id="username" name="name"
						class="txt_input txt_input2" value="">
					</label>
					<h2>密码</h2>
					<label> <input type="password" name="password"
						id="password" class="txt_input" value="">
					</label>
					<div class="rem_sub">
						<div class="rem_sub_l"></div>
						<label>
							<form method='post' action="HomePage.html">
								<input type="submit" class="sub_button" name="button"
									id="button" value="登录" style="opacity: 0.7;">
							</form>
						</label> <br> <br> <label><p class="forgot">
								<a id="iforget" href="Register.jsp">没有账号?点此注册。</a>
							</p></label>
					</div>
				</div>
				<br>
			</div>
		</form>
	</div>
	<br>
	<br>
</body>
</html>