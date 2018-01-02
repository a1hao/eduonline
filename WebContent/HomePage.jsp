<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>首页</title>
<script type="text/javascript" src="js/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/muke.css">
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
</head>

<body class="backg_huibai">

<!-- 顶部 -->
<div class="width100 float_l height490 img_backg1">
	<div class="width100 float_l height80 line_hei80">
        <!-- 顶部左边 -->
        <div class="float_l">
            <div class="float_l margin_l20">
                <img src="img/logo.png">
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
             </form>
                             <img class="img_sousuo bianshou" src="img/uiz4.png">
            </div>
            <div class="float_l margin_l20">
                <img src="img/uiz5.png">
            </div>
            <div class="float_l margin_l40">
                <img src="img/uiz3.png">
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
	</div>
</div>

<!-- 轮播图 -->
<div class="width100 float_l margin_t-405 margin_b40">
	<div class="width_1200 margin_auto">
    	<div class="width100 float_l height460 posi_relative">
        	<div class="width100 float_l">
                <div class="focusBox">
                    <ul class="pic">
                        <li><a><img src="home_img/lunbo_img/lunbo1.jpg" /></a></li>
                        <li><a><img src="home_img/lunbo_img/lunbo2.jpg" /></a></li>
                        
                    </ul>
                    <a class="prev" href="javascript:void(0)"></a>
                    <a class="next" href="javascript:void(0)"></a>
                    <ul class="hd">
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
            
            <div class="width_224 float_l height460 posi_absolute backg_jqian padding_t5 bianshou">
            	<div class="width100 float_l tab_qiehuan ">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>设计学</span>
                            <span class="float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg15">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>Photoshop</a></li>
                                    <li>/</li>
                                    <li><a>After Effect</a></li>
                                    <li>/</li>
                                    <li><a>Premiere</a></li>
                                    <li>/</li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | ps入门教程</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 手机UI设计基础</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | PS入门基础-魔幻调色</a></li>
                                    <li class="width100 float_l margin_b15"><a>课程 | Pr从入门到精通</a></li>
                                    <li class="width100 float_l margin_b15"><a>课程 | AE特效制作</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="width100 float_l tab_qiehuan">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>语言学</span>
                            <span class="float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg16">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>日语</a></li>
                                    <li>/</li>
                                    <li><a>韩语</a></li>
                                    <li>/</li>
                                    <li><a>法语</a></li>
                                    <li>/</li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | 日语五十音图入门</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 韩语入门教学</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 法语基础入门</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="width100 float_l tab_qiehuan">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>心理学</span>
                            <span class="float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg17">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>基础心理学</a></li>
                                    <li>/</li>
                                    <li><a>发展与教育心理学</a></li>
                                    <li>/</li>
                                    <li><a>应用心理学</a></li>
                                    <li>/</li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | 从零开始学心理</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 认知心理学入门</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 发展与教育心理学的研究</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="width100 float_l tab_qiehuan">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>数学</span>
                            <span class="float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg18">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>初中数学</a></li>
                                    <li>/</li>
                                    <li><a>高中数学</a></li>
                                    <li>/</li>
                                    <li><a>高等数学</a></li>
                                    <li>/</li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | 线性代数</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 概率与概率论</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 微积分</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="width100 float_l tab_qiehuan">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>计算机</span>
                            <span class=" float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg16">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>硬件设计</a></li>
                                    <li>/</li>
                                    <li><a>软件开发</a></li>
                                    <li>/</li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | 计算机基本组成原理</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 嵌入式工程开发</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | Java程序设计基础</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="width100 float_l tab_qiehuan">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>英语</span>
                            <span class="float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg15">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>初中英语</a></li>
                                    <li>/</li>
                                    <li><a>高中英语</a></li>
                                    <li>/</li>
                                    <li><a>大学英语</a></li>
                                    <li>/</li>
                                    <li><a>专业英语</a></li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | 30天突破专业英语四级</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 高中英语阅读理解提分攻略</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 专业六级英语听力以及写作</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="width100 float_l tab_qiehuan ">
                	<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">
                        <div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">
                            <span>语文</span>
                            <span class="float_r">></span>
                        </div>
                    </div>
                    <div class="width_700 float_l lunbofenlei dis_none img_backg17">
                    	<div class="width100 float_l padding40">
                        	<div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>
                                <ul class="width100 ul_lis float_l">
                                	<li><a>小学语文</a></li>
                                    <li>/</li>
                                    <li><a>初中语文</a></li>
                                    <li>/</li>
                                    <li><a>高中语文</a></li>
                                    <li>/</li>
                                    <li><a>大学语文</a></li>
                                </ul>
                            </div>
                            
                            <div class="width100 float_l margin_b40">
                            	<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>
                                <ul class="width100 ul_lis float_l">
                                	<li class="width100 float_l margin_b15"><a>课程 | 初中语文阅读提分攻略</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 小学语文满分作文攻略</a></li>
									<li class="width100 float_l margin_b15"><a>课程 | 大学语言论文写作攻略</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>
            
        </div>
    </div>
</div>
<script>
	$('.tab_qiehuan').hover(function(){
         $(this).children(".bianhuabeijing").css("background-color","#8a8f93").next().css("display","block")
	},function(){
    	 $(this).children(".bianhuabeijing").css("background-color","#a9aaae").next().css("display","none")
	});
</script>

<script type="text/javascript">
	jQuery(".focusBox").slide({ mainCell:".pic",effect:"left", autoPlay:true, delayTime:500});
</script>

<!-- 实战推荐 -->
<div class="width100 float_l margin_b40">
	<div class="width_1200 margin_auto">
    
    	<div class="width100 float_l margin_b20">
        	<div class="float_l">
            	<span class="fon_siz16">推荐课程</span>
            </div>
            <div class="float_r bianshou">
            	<span><a href="class_all?tid=9">更多</a></span>
            </div>
        </div>
        
        <div class="width100 float_l">
       
            <c:forEach items="${recommendVideoList}" var="item">
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
           
            <div class="width_224 height172 float_l  border_shadow jingguoxianshi over_pos bianshou">
            	<div class="width100 float_l img_100 z_inx_1">
                	<img src="img/学习心理学.png">
                </div>
                <div class="img_backg2 donghua">
                    <span class="margin_t15 float_l "><a href="playvideo?shibian=24">学习心理学</a></span>
                    <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">掌握学习心理学，Day Day Up，做个学习的王者</span>
                </div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                    <span class="float_l color_red">免费</span>
                    <span class="float_r color_gray">
            	</div>
            </div>
        </div>
         
    </div>
</div>

<!-- 免费好课 -->
<div class="width100 float_l margin_b40">
	<div class="width_1200 margin_auto">
    
    	<div class="width100 float_l margin_b20">
        	<div class="float_l">
            	<span class="fon_siz16">免费好课</span>
            </div>
            <div class="float_r bianshou">
            	<span><a href="class_all?tid=8">更多</a></span>
            </div>
        </div>
        
        <div class="width100 float_l">
        	
         <c:forEach items="${freeVideoList}" var="item">
        	<div class="width_224 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
            	<div class="width100 float_l img_100 z_inx_1">
                	<img src="img/${item.picture }">
                </div>
                <div class="img_backg2 donghua">
                    <span class="margin_t15 float_l "><a href="playvideo?shibian=${item.shibian }">${item.texttitle }</a></span>
                    <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">${item.text}</span>
                </div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                    <span class="float_l color_red"><c:choose>
						<c:when test="${item.members==0}">
						  免费
						</c:when>
												<c:when test="${item.members==1}">
						会员才可以免费看
						</c:when>
						</c:choose></span>
            	</div>
            </div>  
             </c:forEach>
                         <div class="width_224 height172 float_l  border_shadow jingguoxianshi over_pos bianshou">
            	<div class="width100 float_l img_100 z_inx_1">
                	<img src="img/学习心理学.png">
                </div>
                <div class="img_backg2 donghua">
                    <span class="margin_t15 float_l "><a href="playvideo?shibian=24">学习心理学</a></span>
                    <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">掌握学习心理学，Day Day Up，做个学习的王者</span>
                </div>
                <div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
                    <span class="float_l color_red">免费</span>
                    <span class="float_r color_gray">
            	</div>
            </div>
        </div>
        
    </div>
</div>


    
<!-- 免费好课 --></div>

<!-- iOS 工程师 --><!-- 页脚 -->
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



</body>
</html>