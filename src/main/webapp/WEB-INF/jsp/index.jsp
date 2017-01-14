<%@page import="com.liming.ts.common.PageParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<!--<![endif]-->
<head>
<link rel="icon"
	href="http://www.goubanjia.com/theme/goubanjia/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="http://www.goubanjia.com/theme/goubanjia/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="http://www.goubanjia.com/theme/goubanjia/css/index.min.css?v=1.4">
<link rel="stylesheet" type="text/css"
	href="http://www.goubanjia.com/theme/goubanjia/css/dialog.min.css">
<script>

</script>
</head>

<body>

	<!-- start website header -->
	<div id="page-header" class="wrap header" style="margin-top: 0px;">
		<header id="masthead" class="site-header" role="banner"> <!-- start hgroup header -->
		<div class="hgroup">
			<h1 class="site-title">
				<a class="home-link" href="http://www.goubanjia.com/" title="全网代理IP"
					rel="home">全网代理IP</a>
			</h1>
			<h2 class="site-description" id="site-description">最便宜、最稳定、实时更新、API接口、实用软件</h2>
		</div>

		<!-- start image header -->
		<div class="clear"></div>
		</header>
	</div>
	<!-- end website header -->
	<!-- start website menu -->
	<div id="primary-nav">
		<div class="wrap nav">
			<div id="site-navigation" class="main-navigation" role="navigation">
				<h3 class="menu-toggle">Menu</h3>
				<a class="assistive-text" href="#content" title="Skip to content">Skip
					to content</a>
				<ul class="nav-menu">
					<li id="menu_index"
						class="menu-item menu-item-type-custom menu-item-object-custom ">
						<a href="http://localhost:8080/StudentDemo/house/indexs">首页</a>
					</li>

					<li id="menu_api"
						class="menu-item menu-item-type-taxonomy menu-item-object-custom ">
						<a href="http://localhost:8080/StudentDemo/house/fetch">API接口</a>
					</li>

					<li id="menu_user"
						class="menu-item menu-item-type-post_type menu-item-object-custom">
						<a href="http://localhost:8080/StudentDemo/house/help"
						style="color: #F3FF3A;">帮助中心</a>
					</li>
					<li id="menu_qq" style="margin-right: 10px;"
						class="menu-item menu-item-type-taxonomy menu-item-object-custom right"><i
						class="qq-icon" style="cursor: pointer;"
						onclick="window.open('http://jq.qq.com/?_wv=1027&k=VFVEFs','_blank')"></i>QQ群：66782959
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end website menu -->

	<script type="text/javascript">
	document.getElementById('menu_index').setAttribute("class", "menu-item menu-item-type-custom menu-item-object-custom current-menu-item");
	document.getElementById('menu_index').setAttribute("href", "#");
</script>
	<!-- start content -->
	<div class="wrap fullwidth">
		<div id="content" style="width: auto;">
			<div id="post-2" class="post-2 page type-page status-publish hentry">
				<div class="entry entry-content">
					<blockquote style="font-style: normal;">
						<p>
							<b style='font-size: 14px;'>你们的代理IP是怎么获取到的？</b>
						</p>
						<p>
							① 全网代理IP使用5台4核ECS服务器，运行分布式IP与端口扫描系统，每天扫描IP量几十万条，今日已经扫描 <strong
								style="color: red;">636820</strong> 条。
						</p>
						<p>②
							我们不间断的运行着IP验证系统，精确地检测每一个代理IP的匿名度、响应时间、数据传输速度、地域、运营商，每秒钟都在验证，保证网站的IP都是高度可用的。</p>
						<p>③ 我们提供了极其丰富的代理筛选和API接口，每次提取的IP不相同，只为更便捷地提取、更便捷的开发。</p>

					</blockquote>
				</div>

				<div class="clear"></div>

				<div class="entry entry-content">
					<div class="entry-title">最新 20 个可用免费高速HTTP代理IP（2016-11-28
						09:58:20 更新）</div>
					<!-- start list -->
					<div id="list">
						<table class="table">
							<thead>
								<tr>
									<th>IP:PORT</th>
									<th>端口</th>
									<th>国家</th>
									<th>省市</th>
									<th>运营商</th>
									<th>录入时间</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${pageParam.getData()}" var="item">
									<tr>
										<td>${item.ip}</td>
										<td>${item.port}</td>
										<td>${item.country}</td>
										<td>${item.province }----${item.city}</td>
										<td>${item.isp}</td>
										<td>${item.findTime}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						
						<div class="wp-pagenavi">
							<span>第</span>
							
								<%
									PageParam  pageParam =(PageParam) request.getAttribute("pageParam");
									int currPage =pageParam.getCurrPage();
									int totalPage = pageParam.getTotalPage();
									
									for(int i=1;i<=totalPage;i++){
										
										if(i==currPage){
											
											%><span  class="current"> <%= currPage %></span><%		
													
										}else{	
											
											%><a href="indexs.html?page= <%=i %>"><%=i %></a><%
													
										}	
									}															
								%>	
								
									
								<a href="indexs">2</a>
								<a href="indexs3.html">3</a>							
							<span>页</span>
						</div>
						
						
					</div>
					<!-- end list -->
					<div class="center"></div>
				</div>

			</div>
		</div>

		<div class="clear"></div>

		<div id="footer">

			<div class="copyright" style="display: none;">
				<span class="footerleft">Copyright &copy; 2016</span> <span
					class="footerright">All rights reserved</span>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- end content -->
	<script type="text/javascript">
</script>
	<script type="text/javascript">
</script>
	<script type="text/javascript"
		src="http://www.goubanjia.com/theme/goubanjia/javascript/jquery-1.11.3.min.js"></script>
	<script type="text/javascript"
		src="http://www.goubanjia.com/theme/goubanjia/javascript/dialog.min.js"></script>
	<script type="text/javascript"
		src="http://www.goubanjia.com/theme/goubanjia/javascript/common.js?v=1.0"></script>
	<script type="text/javascript"
		src="http://www.goubanjia.com/theme/goubanjia/javascript/pde.js?v=1.0"></script>
	<script type="text/javascript">X.D='http://www.goubanjia.com/';</script>
</body>
</html>