<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<!--<![endif]-->
<head>
<meta charset="UTF-8">

<link rel="icon"
	href="http://www.goubanjia.com/theme/goubanjia/favicon.ico"
	type="image/x-icon" />
<link rel="shortcut icon"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
	href="http://www.goubanjia.com/theme/goubanjia/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="http://www.goubanjia.com/theme/goubanjia/css/index.min.css?v=1.4">
<style type="text/css">
.hidden {
	display: none;
}

.error {
	color: #f00;
}
</style>

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
		<!-- start social header --> <!-- start image header -->
		<div class="clear"></div>
		</header>
	</div>

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

					<li id="menu_fetch"
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
						onclick="window.open('http://jq.qq.com/?_wv=1027&k=VFVEFs','_blank')"></i>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end website menu -->

	<script type="text/javascript">
		document
				.getElementById('menu_fetch')
				.setAttribute("class",
						"menu-item menu-item-type-custom menu-item-object-custom current-menu-item");
		document.getElementById('menu_fetch').setAttribute("href", "#");
	</script>
	<!-- start content -->
	<div class="wrap fullwidth">
		<div id="content" style="width: auto;">

			<div id="breadcrumbs">
				<a href="http://www.goubanjia.com/">首页</a>&raquo;&raquo;&nbsp;
				提取代理IP
			</div>

			<div id="post-2" class="post-2 page type-page status-publish hentry">

				<div class="entry entry-content">


					<form id="fetchForm" target="_blank" method="POST"
						class="largeinput" accept-charset="UTF-8"  action="${domain }get.html">
						
						
						<div class="control-group">
							<label class="control-label" for="name">提取数量</label>
							<div class="controls">
								<input id="num" type="text" name="num" class="span4 required"
									value="100" placeholder="填入数字,一次做多提取10000个"> 
															 			
									<span  class="star">*&nbsp;</span> <a style="display: none;"
									href="${domain}help/" target="_blank">数量该怎么填?</a>
								<p id="num_err" class="err" style="display: none;"></p>
							</div>
						</div>
						
						
						
						<div class="control-group">
							<label class="control-label" for="name">所在国家</label>
							<div class="controls">
								<input id="num" type="text" name="country" class="span4 required"
									value="" placeholder="比如：中国"> 
															 		
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label" for="name">运营商</label>
							<div class="controls" >
							
							<select  name="isp">
								<option value="">不限</option>
								<option value="电信">电信</option>
								<option value="联通">联通</option>
								<option value="移动">移动</option>
								<option value="网通">网通</option>
							
							
							</select>		
							</div>
						</div>
						
						
					
				      				

						<div class="submit" style="margin-top: 22px;">
							<span class="smallbutton"><a id="postcontent"
								href="javascript:fetchForm.submit();">立即提取</a></span>&nbsp;&nbsp; 
								
						</div>

					</form>

				</div>

				<div class="clear"></div>
				<script type="text/javascript"
					src="http://www.goubanjia.com/theme/goubanjia/javascript/jquery-1.11.3.min.js"></script>
				<script type="text/javascript">	var d='http://www.goubanjia.com/';eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('$(i(){$("3[6=o]").n(i(){"2"==$(4).5("2")?($(4).9("2"),$("#j 3[g=8]").9("2").7({2:!1}),$("#k 3[g=8]").9("2").7({2:!1}),$("3[6=k]").9("2").7({2:!1}),$("3[6=j]").9("2").7({2:!1})):($(4).5("2","2"),$("3[6=k]").5("2","2").7({2:!0}),$("3[6=j]").5("2","2").7({2:!0}),$("#j 3[g=8]").5("2","2").7({2:!0}),$("#k 3[g=8]").5("2","2").7({2:!0}))});$("3[6=k]").n(i(){"2"==$(4).5("2")?($(4).9("2"),$("#k 3[g=8]").9("2").7({2:!1}),$("3[6=o]").9("2").7({2:!1})):($(4).5("2","2"),$("#k 3[g=8]").5("2","2").7({2:!0}),"2"==$("3[6=j]").5("2")&&$("3[6=o]").5("2","2").7({2:!0}))});$("3[6=j]").n(i(){"2"==$(4).5("2")?($(4).9("2"),$("#j 3[g=8]").9("2").7({2:!1}),$("3[6=o]").9("2").7({2:!1})):($(4).5("2","2"),$("#j 3[g=8]").5("2","2").7({2:!0}),"2"==$("3[6=k]").5("2")&&$("3[6=o]").5("2","2").7({2:!0}))});$("#j 3[g=8]").n(i(){"2"==$(4).5("2")?($(4).9("2"),$("3[6=j]").9("2").7({2:!1}),$("3[6=o]").9("2").7({2:!1})):$(4).5("2","2")});$("#k 3[g=8]").n(i(){"2"==$(4).5("2")?($(4).9("2"),$("3[6=k]").9("2").7({2:!1}),$("3[6=o]").9("2").7({2:!1})):$(4).5("2","2")});$("#1r").n(i(){r b=!0,c=!0;$("#j 3[g=8]").p(i(){"2"!=$(4).5("2")&&(b=!1)});$("#k 3[g=8]").p(i(){"2"!=$(4).5("2")&&(c=!1)});v(b&&!c){r a=[];a.q("\\C\\D");$("#k 3[g=8]:2").p(i(){a.q($(4).l())});$("3[6=s]").l(a.t(","))}1p!b&&c?(a=[],a.q("\\1b\\C\\D"),$("#j 3[g=8]:2").p(i(){a.q($(4).l())}),$("3[6=s]").l(a.t(","))):b||c?b&&c&&$("3[6=s]").l(""):(a=[],$("#j 3[g=8]:2").p(i(){a.q($(4).l())}),$("#k 3[g=8]:2").p(i(){a.q($(4).l())}),$("3[6=s]").l(a.t(",")));r f=[];$("#G 3[g=8]:2").p(i(){f.q($(4).l())});$("3[6=G]").l(f.t(","));$(".1q").T().Y();v(!$("3[6=19]").l())H $("#1c").u("\\1g\\1i\\1j\\1m\\1n\\1o\\z").A(),!1;r e=$("3[6=O]").l();v(!(e&&1<=e&&P>=e))H $("#Q").u("\\R\\S\\B\\U\\V\\W\\X-1x\\Z\\10\\11\\B\\12\\z").A(),!1;$("#13").5("14",d+"15/16.17").18()});$("3[6=N]").n(i(){1==$("3[6=N]:2").1a?$("#m-e-h").1d("E"):$("#m-e-h").1f("E")});$(".F-1h").n(i(){1==$(4).5("w-x")?($(4).u("\\1k\\1l\\I\\J\\K\\L\\M\\y \\1s"),$(4).5("w-x","0")):($(4).u("\\1t\\1u\\I\\J\\K\\L\\M\\y \\1v"),$(4).5("w-x","1"));$(".1w-F").1e()})});',62,96,'||checked|input|this|attr|name|prop|checkbox|removeAttr|||||||type||function|area_china|area_foreign|val||click|area_all|each|push|var|area|join|html|if|data|status|u9879|uff01|show|u6570|u4e2d|u56fd|hidden|config|area_ex|return|u9ad8|u7ea7|u914d|u7f6e|u9009|distinct|num|1E4|num_err|u63d0|u53d6|empty|u91cf|u5e94|u8be5|u662f1|hide|u4e4b|u95f4|u7684|u5b57|fetchForm|action|fetch|output|shtml|submit|order|length|u975e|orderid_err|removeClass|slideToggle|addClass|u8bf7|handler|u8f93|u5165|u6536|u8d77|u8ba2|u5355|u53f7|else|err|postcontent|u25b2|u5c55|u5f00|u25bc|default|10000'.split('|'),0,{}))</script>
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

	<a href="http://www.goubanjia.com/article/index.shtml"
		class="knowledge" title="代理知识库"></a>
	<a href="#" onclick="gotoTop();return false;" class="totop"
		title="点我飞回顶部"></a>


	<script type="text/javascript">

</script>
</body>
</html>