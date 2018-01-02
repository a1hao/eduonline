<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息修改</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/pnf.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="content">
		<div id="register_box">
			<div id="head">
				<a href="HomePage.html"><img src="login/logo.png"></a>
				<h1>个人中心</h1>
				<div class="tag">在本页可修改你的密码、昵称</div>
			</div>
			<div id="main_box">
				<form class="register" action="Update" method="post" >
					
					<c:choose>
					<c:when test="${name==null}">
						<div class="float_l margin_l35">
							<h1>${name} ,您好</h1>
						</div>
					</c:when>
				</c:choose>
				
					<br />
					<div class="text">
						<span style="color: red">用户名:</span>
						<input type="text" name="name" placeholder="用户名" value="${name}"/><br />
					</div>
					<div class="text">
						<span style="color: red">会员昵称:</span>
						<input type="text" name="ncname" placeholder="昵称" value="${ncname}"/><br />
					</div>
					<div class="text">
						<span style="color: red">原密码：</span>
						<input type="text" name="password" placeholder="原密码" value="${password}"/><br />
					</div>
					<div class="text">
						<span style="color: red">新密码：</span>
						<input type="password" name="newpassword" placeholder="新密码" /><br />
					</div>

					<input type="submit" value="我已写好，马上上传" /> <br />
				</form>

				<div class="right_box">
					<div id="benefits">
						<h1>VIP会员的好处</h1>
						<br />

						<ul>
							<li>
								<div class="he">更多的视频观看</div> <span>本站内置许多仅供VIP会员的高质量学习视频。</span>
							</li>
							<li>
								<div class="he">私人导师全面指导</div> <span>有问题不知道问谁？加入VIP，加入我们的大家庭，相信你的问题很快就会迎刃而解。</span>
							</li>
							<li>
								<div class="he">无广告，播放不拖延</div> <span>无广告在线浏览视频不拖延，祝你学业有成</span>
							</li>
						</ul>
					</div>
					<br />
					<br />
					<br />
					<div id="facebook-con">
						<h1>点击下方加入VIP</h1>
						<br />
					</div>
					<div class="fbl">
						<br /> <a href="VIP.html"> <a href="VIP.html">加入VIP</a>
						</a> <br />
					</div>
				</div>
			</div>
			<div id="footer_box"></div>
		</div>
	</div>
</body>
</html>