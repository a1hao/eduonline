<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>${tname}的所有课程视频</title>
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/muke.css">
<link rel="stylesheet" type="text/css" href="css/class.css">
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
                    <li><a href="change.jsp">个人中心</a></li>
                </ul>
            </div>
        </div>
        
        <!-- 顶部右边 -->
        <div class="float_r">
            <div class="float_l top_input">
                <form action="search_class">
                <input class="posi_relative" type="text" name="keyword" id="" placeholder="请输入想搜索的内容...">
                              <img src="img/uiz5.png">
                  <img src="img/uiz3.png">
             </form>
                <img class="img_sousuo bianshou" src="img/uiz4.png">
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
  <div>
                <span class="fon_siz16">${tname}</span>
            </div>
             <div>&nbsp</div>
             
             
            <c:forEach items="${list}" var="item">
        	<div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
            	<div class="width100 float_l img_100 z_inx_1">
                	<img src="img/${item.picture }">
                </div>
                <div class="img_backg2 donghua">
                    <span class="margin_t15 float_l "><a href="playvideo?shibian=${item.shibian }">${item.texttitle }</a></span>
                    <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">${item.text}</span>
                </div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                    <span class="float_l color_red">
                    <c:choose>
						<c:when test="${item.members==0}">
						  免费
						</c:when>
												<c:when test="${item.members==1}">
						会员才可以 免费看
						</c:when>
						</c:choose></span>
            	</div>
            </div>  
           </c:forEach>

        </div>
            
    </div>
    
    <div class="width100 float_l padding_t30 height193">
	<div class="width_1200 margin_auto">
    	<div class="width100 float_l text_c margin_b30">
        	<a class="img_backg5" href="#"></a>
            <a class="img_backg6 posi_relative wexinmaxianshi" href="#"><i class="weixinweima dis_none"><img src="img/idx-btm.png"></i></a>
            <a class="img_backg7" href="#"></a>
            <a class="img_backg8" href="#"></a>
        </div>
        <div class="width100 float_l text_c yejiao color_gray">
            <a>关于我们</a>
            <a>企业合作</a>
            <a>人才招聘</a>
            <a>讲师招募</a>
            <a>联系我们</a>
            <a>意见反馈</a>
            <a>友情链接</a>
    	</div>
        <div class="width100 float_l text_c border_t margin_t20 padding_t20 color_gray fon_siz12">
        	<span>© 2016 imoroc.com  京ICP备13042132号</span>
        </div>
    </div>
</div>
    </div>
    </body>
    </html>