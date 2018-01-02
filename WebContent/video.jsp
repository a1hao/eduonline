<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>视频播放页</title>
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/muke.css">
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<link rel="stylesheet" type="text/css" href="video/plyr.css">
<link rel="stylesheet" type="text/css" href="video/border.css">
<link rel="stylesheet" type="text/css" href="css/button.css">
<script src="video/plyr.js"></script>
<style>
    body{background-color: #262626}
    .m{ margin-left: auto; margin-right: auto; width: 640px; margin-top: 100px; }
    
</style>
</head>

<body class="backg_huibai">
<!-- 顶部 -->
<div class="width100 float_l height4 img_backg1">
    <div class="width100 float_l height80 line_hei80">
        <!-- 顶部左边 -->
        <div class="float_l">
            <div class="float_l margin_l20">
             <a href="HomePage.html">
                <a href="HomePage.html"><img src="img/logo.png"></a>
            </a>
            </div>
            <div class="float_l">
                <ul class="ul_li fon_siz16">
                     <li><a href="show">首页</a></li>
                    <li><a href="Class_1.jsp">课程</a></li>
                    <li><a href="change.jsp">修改密码 </a></li>
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
        </div></div>
        <div style="float:left;width:20%;">&nbsp&nbsp&nbsp</div>
    <!-- 视频播放栏-->
    <div style="float:left;width:60%;">
    <div class="m">
     
    <video poster="vs.png" controls>
      <source src="video/${videolist.video}" type="video/mp4">
      <!-- <source src="path/to/video.webm" type="video/webm">-->
      <!-- Captions are optional -->
    </video>

     </div>

    <script>plyr.setup();</script>
    </div>
     <!--视频介绍栏-->
    <div style="float:left;width:20%;">
    <div style="text-align:center;margin:50px 0; font:normal 20px/20px 'MicroSoft YaHei';color:#00008B">${videolist.texttitle }</div>
    ${videolist.text}
    </div></div>
         <!--收藏按钮-->
     <div class="demo">
   <c:choose>
   <c:when test="${isboolean==1}">
      <a href="#" class="button white">
                已经收藏
     </a>
     </c:when>
        <c:otherwise>
          <a href="shoucang_check?shibian=${videolist.shibian }" class="button white" onclick="return confirm('是否收藏此视频？');">
                  添加收藏
                </a>
    
        
        </c:otherwise>
    
   
   </c:choose>
   
     

    

    </div>
   <!--评论交流区-->
   <div>&nbsp</div>
   <div>&nbsp</div>
   <div>&nbsp</div>
   <div style="float:left" class="b"><br><h3>评论区</h3><br><table class="p"><tr><th width="20%" >用户</th><th width="60%">评论内容</th><th width="20%">评论时间</th></tr>
   
   
  <c:choose>
   <c:when test="${pingjialist==null||pingjialist.size()==0}">
     <tr class="tr2"><td width="20%">抢夺第一位沙发</td><td width="60%">快到右边发表评论</td><td width="20%">时间</td></tr>
   </c:when>
   <c:when test="${pingjialist!=null}">
     <c:forEach items="${pingjialist}" var="item">
      <tr class="tr2"><td width="20%">${item.name }</td><td width="60%">${item.pingjia}</td><td width="20%">时间</td></tr>
      </c:forEach>
   </c:when>
   </c:choose>
   
  </table></div>
  <div style="float:left" class="b"><br><h3>写下你的评论</h3><form method='post' action="tijiao?pid=${videolist.shibian }"><textarea name="text"></textarea><input type="submit" class="tijiao" id="tijiao" value="提交评论"> </form></div>
  
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
    </body></html>