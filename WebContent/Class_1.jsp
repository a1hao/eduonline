<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>课程分类列表-P1</title>
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/muke.css">
<link rel="stylesheet" type="text/css" href="class.css">
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
                <input class="posi_relative" type="text" name="" id="" placeholder="请输入想搜索的内容...">
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
    	<div class="width100 float_l margin_b20">
        	<div class="float_l">
            	<span class="fon_siz16">语言学系列</span>
            </div>
            <div class="float_r bianshou">
            	<span><a href="class_all?tid=2">更多</a></span>
            </div>
        </div>

            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/日语1.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=26">动漫日语教程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/日语2.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=27">日语零基础入门到中级</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
             
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/法语1.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=28">带你迈出法语学习第一步</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/韩语1.jpg">
                </div>
               <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=29">韩语TOPIK初级冲刺班</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/韩语2.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=30">韩语学习就那么简单</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div> 
        </div>
    </div>
    <!--第二行-->
    <div>&nbsp</div> <div>&nbsp</div>  <div>&nbsp</div> 
 <div class="center">
 
 <div class="width100 float_l margin_b20">
        	<div class="float_l">
            	<span class="fon_siz16">计算机类</span>
            </div>
            <div class="float_r bianshou">
            	<span><a href="class_all?tid=7">更多</a></span>
            </div>
        </div>

            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/java1.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=31">Java基础编程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/java2.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=32">Java语言基础与OPP入门</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
             
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/计算机1.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=33">计算机组成原理</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/嵌入1.jpg">
                </div>
               <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=34">嵌入式系统开发</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/c1.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=35">C语言基础课程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div> 
        </div>
    </div>
    <!--第三行-->
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div>&nbsp</div><div>&nbsp</div><div>&nbsp</div>
     <div>&nbsp</div><div>&nbsp</div><div>&nbsp</div>
     <div>&nbsp</div>
 <div class="center">
 
  <div class="width100 float_l margin_b20">
        	<div class="float_l">
            	<span class="fon_siz16">设计类</span>
            </div>
            <div class="float_r bianshou">
            	<span><a href="class_all?tid=1">更多</a></span>
            </div>
        </div>

            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/ps1.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=36">暗色调人像PS教程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/pr.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=37">pr零基础教程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                    <span class="float_l color_red">免费</span>
                    <span class="float_r color_gray"></span>
                </div>
            </div>
             
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/ps2.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=38">室内环境人像ps调色教程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                    <img src="img/ae1.jpg">
                </div>
               <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=39">e3d制作时光穿梭隧道</a> </span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div>
            
            <div class="width_224 height172 float_l border_shadow jingguoxianshi over_pos bianshou">
                <div class="width100 float_l img_100 z_inx_1">
                     <img src="img/ae2.jpg">
                </div>
                <div style="float:left;width:78%"><span class="margin_t15 float_l "><a href="playvideo?shibian=40">“终结者”制作教程</a></span></div>
                <div>&nbsp</div>
                <div style="float:left;width:22%"><span class="float_l color_red">免费</span></div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                </div>
            </div> 
        </div>
    </div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div>
    <div class="page">
    <div><span><a href="Class_1.jsp">上一页</a></span></div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div ><a href="Class_1.jsp">1</a></div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div ><a href="Class_2.jsp">2</a></div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div ><a href="Class_3.jsp">3</a></div>
    <div>&nbsp</div> <div>&nbsp</div> <div>&nbsp</div>
    <div><span><a class="a" href="Class_3.jsp">下一页</a></span></div>
    </div>
    </div>
    </body>
    </html>