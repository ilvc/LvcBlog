<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>

<html lang="zh-CN">
<script
	src="chrome-extension://eojeoeddgeaeahpmfabdfpfialkoplcb/_locales/en/Kernel.js?0.5383648139636812"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>iLvc | Lvc唯爱</title>
<meta name="description" content="LvcBlog">
<meta name="keywords" content="LvcBlog blog ilvc lvc">

<meta name="HandheldFriendly" content="True">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/monokai_sublime.min.css">
<link href="resources/css/magnific-popup.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/screen.css">
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="resources/js/loading.js"></script> -->
<style id="fit-vids-style">
.fluid-width-video-wrapper {
	width: 100%;
	position: relative;
	padding: 0;
}

.fluid-width-video-wrapper iframe, .fluid-width-video-wrapper object,
	.fluid-width-video-wrapper embed {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
/* .loading {
  display: table;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: #fff;
  z-index: 5;
}

.loading .progress {
  display: table-cell;
  vertical-align: middle;
  text-align: center;
} */
</style>


</head>
<body class="home-template">
	<!-- <div class="loading" id="loading">
   		<div class="progress" id="progress">0%</div>
   </div> -->
	<!-- start header -->
	<header class="main-header"
		style="background-image: url(resources/img/xk.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">

					<!-- start logo -->
					<a class="branding" href="#"
						title="iLvc 开源博客平台"><img
						src="resources/img/ilogoko.png" width="10%" height="10%"
						alt="iLvc 开源博客平台" title="iLvc | Lvc唯爱"></a>
					<!-- end logo -->
				</div>
			</div>
		</div>
	</header>
	<!-- end header -->

	<!-- start navigation -->
	<nav class="main-navigation">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="navbar-header">
						<span class="nav-toggle-button collapsed" data-toggle="collapse"
							data-target="#main-menu"> <span class="sr-only">Toggle
								navigation</span> <i class="fa fa-bars"></i>
						</span>
					</div>
					<div class="collapse navbar-collapse" id="main-menu">
						<ul class="menu">
							<li class="nav-current" role="presentation"><a
								href="${pageContext.request.contextPath}/">首页</a></li>
							<%-- <li role="presentation"><a
								href="${pageContext.request.contextPath}/archive">归档</a></li> --%>
							<li role="presentation"><a
								href="${pageContext.request.contextPath}/categories/categories-cloud">分类</a></li>
							<li role="presentation"><a
								href="${pageContext.request.contextPath}/tags/tag-cloud">标签</a></li>
							<li role="presentation"><a
								href="${pageContext.request.contextPath}/guestBook">留言本</a></li>
							<li role="presentation"><a
								href="${pageContext.request.contextPath}/FAQ/links-could" title="问题与解决方案">收藏夹</a></li>
							<li role="presentation"><a
								href="${pageContext.request.contextPath}/about">关于</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- end navigation -->


	<!-- start site's main content area -->
	<section class="content-wrap">
		<div class="container">
			<div class="row">

				<main class="col-md-8 main-content">

			<c:forEach items="${applicationScope.posts}" var="post">
				
				<article id="98" class="post">

					<div class="post-head">
						<h1 class="post-title">
							<a href="${pageContext.request.contextPath}/blog/post/${post.id}">${post.title}</a>
						</h1>
						<div class="post-meta">
							<span class="author">作者：<a
								href="${pageContext.request.contextPath}/about">${post.user.userName}</a></span> •
							<time class="post-date" 
								title="${post.createDate}">${fn:substring(post.createDate,0,10)}</time>
								<span class="author">分类：<a href="${pageContext.request.contextPath}/categories/${post.categories.categoriesName}">${post.categories.categoriesName}</a></span>
						</div>
					</div>
					<div class="post-content">
						${fn:substring(post.html,0,500)}
					</div>
					<div class="post-permalink">
						<a href="${pageContext.request.contextPath}/blog/post/${post.id}"
							class="btn btn-default">阅读全文</a>
					</div>

					<footer class="post-footer clearfix">
						<div class="pull-left tag-list">
							<i class="fa fa-folder-open-o"></i>
							<c:forEach items="${post.tags }" var="tag">
								<a href="${pageContext.request.contextPath}/tags/${tag.tagName}">${tag.tagName}</a>
							</c:forEach>
						</div>
						
						<div class="pull-right share"></div>
					</footer>
					
				</article>
			
			</c:forEach>

				


				<%-- <nav class="pagination" role="navigation">
					<span class="page-number">第 ${page.page } 页 ⁄ ${totalPage} 共 页</span> <a
						class="older-posts" href="blog/post/page/2"><i
						class="fa fa-angle-right"></i></a>
				</nav>
			 --%>
			<!-- 首页的 分页栏 -->
				${indexPage}

				</main>

				<aside class="col-md-4 sidebar">
					<!-- start widget -->
					<!-- end widget -->

					<!-- start tag cloud widget -->
					<div class="widget">
						<h4 class="title">交流</h4>
						<div class="content community">
							
							<p>
								<a href="https://github.com/lvcAI" title="lvcAI-GitHub"
									target="_blank">
									<i class="fa fa-comments"></i> GitHub </a>
							</p>
							<p>
								<a href="http://weibo.com/2883343161/profile?rightmod=1&wvr=6&mod=personinfo&is_all=1" title="ilvc官方微博"
									target="_blank">
									<i class="fa fa-weibo"></i> 新浪微博</a>
							</p>
							<p>
								<a href="http://music.163.com/#/user/home?id=113643683" title="网 易 云"
									target="_blank">
									<i class="fa fa-music"></i> 网 易 云</a>
							</p>
							<p>
							<a href="https://jq.qq.com/?_wv=1027&k=47a5ekC" title="小伙伴们的技术学习交流群" >交流QQ群：632944013 </a>
							</p>
						</div>
					</div>
					<!-- end tag cloud widget -->

					<!-- start tag cloud widget -->
					<div class="widget">
						<h4 class="title">分类</h4>
						<div class="content tag-cloud">
						<c:forEach var="categories" items="${categoriess}">
								<a href="${pageContext.request.contextPath}/categories/${categories.categoriesName}">${categories.categoriesName}</a>
							</c:forEach>
							 <a
								href="${pageContext.request.contextPath}/categories/categories-cloud/">...</a>
						</div>
					</div>
					<!-- end tag cloud widget -->

					<!-- start tag cloud widget -->
					<div class="widget">
						<h4 class="title">标签云</h4>
						<div class="content tag-cloud">
							<c:forEach var="tag" items="${tagss}">
								<a href="${pageContext.request.contextPath}/tags/${tag.tagName}">${tag.tagName}</a>
							</c:forEach>
							 <a href="${pageContext.request.contextPath}/tags/tag-cloud">...</a>
						</div>
					</div>
					<!-- end tag cloud widget -->

					<!-- start widget -->
					<!-- end widget -->

					<!-- start widget -->
					<!-- end widget -->
				</aside>

			</div>
		</div>
	</section>

	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="widget">
						<h4 class="title">最新文章</h4>
						<div class="content recent-post">
							<c:forEach var="post" items="${posts}" end="3">
							
								<div class="recent-single-post">
								<a href="${pageContext.request.contextPath}/blog/post/${post.id}"
									class="post-title">${post.title}</a>
								<div class="date">${fn:substring(post.createDate,0,10)}</div>
							</div>
							</c:forEach>
							
						</div>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="widget">
						<h4 class="title">标签云</h4>
						<div class="content tag-cloud">
							<c:forEach var="tag" items="${tagss}">
								<a href="${pageContext.request.contextPath}/tags/${tag.tagName}">${tag.tagName}</a>
							</c:forEach>
							 <a href="${pageContext.request.contextPath}/tags/tag-cloud/" >...</a>
						</div>
					</div>
				</div>

				<div class="col-sm-4">
					<div class="widget">
						<h4 class="title">友情链接</h4>
						<div class="content tag-cloud friend-links">
							<a href="http://pjc.party" title="彭佳成的博客" target="_blank">彭佳成的博客</a> 
							<hr/>
							<a href="http://bootcss.com/" title="Bootstrap中文网" target="_blank">Bootstrap中文网</a> 
							<a href="http://www.runoob.com/" title="菜鸟教程" target="_blank">菜鸟教程</a>
							<a href="http://www.csdn.net/" title="CSDN" target="_blank">CSDN</a>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<span>Copyright © <a href="http://pjc.party">iLvc</a></span>
					|  <span><a href="#"
						target="_blank">测试版@iLvc 0.1.0</a></span> | <span></span>
				</div>
			</div>
		</div>
	</div>

	<a href="#" id="back-to-top" style="display: block;"><i class="fa fa-angle-up"></i></a>
	
<script type="text/javascript">



	  //防止页面后退
    history.pushState(null, null, document.URL);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, document.URL);});
</script>
</body>
</html>