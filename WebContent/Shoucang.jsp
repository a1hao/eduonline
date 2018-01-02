<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>我的收藏</title>
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/muke.css">
<link rel="stylesheet" type="text/css" href="css/class.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
</head>

<body class="backg_huibai">

<!-- 顶部 -->

<div class="width100 float_l height490 img_backg20">
	<div class="width100 float_l height80 line_hei80">
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
            <form action="search_class">
                <input class="posi_relative" type="text" name="keyword" id="" placeholder="请输入想搜索的内容...">
                <img class="img_sousuo bianshou" src="img/uiz4.png">
                                 <img src="img/uiz5.png">
                  <img src="img/uiz3.png">
             </form>
            </div>
            <div class="float_l margin_l20">
            </div>
            <div class="float_l margin_l40">
            </div>
            <c:choose>
						<c:when test="${name==null}">
            <div class="float_l margin_l35">
                <a href="Login.jsp">登录</a> 
            </div>
            <div class="float_l margin_l30 margin_r40"> <a href="Register.jsp">注册</a> </div>
                        </c:when>
        				<c:otherwise> 
        	<div class="float_l margin_l35"><a href="#">用户：${name}</a></div>
        	<div class="float_l margin_l35"><a href="Shoucang">我的收藏</a></div>
            <div class="float_l margin_l30 margin_r40"><a href="cancellation.jsp">注销 </a> </div>
             <div class="float_l margin_l30 margin_r40"><a href="change.jsp">修改密码 </a> </div>
        				</c:otherwise>
        			</c:choose>
        </div>
	</div>
	
	

 <div class="width100 float_l">
     <!--第一行-->
 
 <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
   <div class="center">
                <span class="fon_siz16">我的收藏</span>
            </div>
            
             <c:forEach items="${shoucanglist}" var="item">
             
              <div class="width100 float_l">
                <!--收藏课程名字-->
                <div style="float:left"><a href="playvideo?shibian=${item.shibian }">${item.texttitle}</a></div>
                <!--删除收藏-->
                <div style="float:left">
                <form method="post" action="Shoucang_shangchu?shibian=${item.shibian}">
                 <input class="button orange small" type="submit"  id="tijiao" value="删除收藏？" onclick="return confirm('是否删除此收藏？');"> 
                 </form>
                 </div>
                 
                 </div>
                 </c:forEach>
        </div>




    </div>
    </body>
    </html>