<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		var time = 5;
		var secondEle = document.getElementById("second");
		var timer = setInterval(function() {
			secondEle.innerHTML = time;
			time--;
			if (time == 0) {
				clearInterval(time);
				location.href = "Login.jsp";
			}
		}, 1000);
	}
</script>
</head>
<body>
	恭喜你，注册成功，
	<span style="color: red" id="second">5</span>秒后跳转登陆界面，如不跳转点击
	<a href="Login.jsp">这里</a>!
</body>
</html>