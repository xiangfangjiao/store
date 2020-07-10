<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 使用 taglib 引用标签库uri,表示标签库定义prefix 前缀（核心库）-->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>免税网店</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/statics/css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<!-- //js -->
<!-- web fonts -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web fonts -->
<!-- for bootstrap working -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/statics/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
</head>
<body>
	<%@ include file="common/header.jsp"%>
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>个人信息</h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> 首页</a> <i>/</i></li>
				<li>个人信息</li>
			</ul>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- web icons -->
	<div class="typo codes icons main-grid-border">
		<div class="container">
			<div class="grid_3 grid_4 w3_agileits_icons_page">
				<div class="icons">
					<h3 class="agileits-title">个人信息</h3>
						<h3 class="page-header page-header icon-subheading">查看你的个人信息</h3>
						
						<div class="row fontawesome-icon-list" style="margin: auto;">

							<!-- Main content wrapper -->
							<div class="nNote nInformation hideit">
								<p>${error }</p>
							</div>
							<div class="widget">
								<div class="title">
									<h6>头像</h6>
								</div>
								<ul>
									<li><img id="uPhoto" style="width: 64px;"
										src="${pageContext.request.contextPath}/statics/file/${user.userPhoto}"
										alt="" /></li>
								</ul>
								<label class="btn btn-info"> <input type="file"
									id="photo" name="photo" onchange="upload();" type="file"
									style="left: -9999px; position: absolute;"> <span>上传新头像</span>
								</label>
							</div>
							<form role="form" action="${pageContext.request.contextPath }/client/person" method="post"
							class="register-form" id="myform">
							<div class="form-group">
								<label>账户</label> <input name="id" class="form-control" id="id"
									value="${user.userName }"disabled>
							</div>
							<div class="form-group">
								<label>邮箱</label> <input name="e-mail"
									class="form-control required email" id="e-mail" value="${user.userEmail }">
							</div>
							<div class="form-group">
								<label>手机号</label> <input type="text" name="phone"
									class="form-control " id="phone" value="${user.userPhone }" disabled>
							</div>
							<div class="form-group">
								<label>等级</label> <input type="text" name="level"
									class="form-password form-control " id="level"
									value="${user.userLevel }" disabled>
							</div>
							<div class="form-group">
								<label>昵称</label> <input type="text" name="name"
									class="form-control" id="name" value="${user.userAlice }">
							</div>
							<div class="form-group">
								<label> 性别 :</label><br> 
								<label><input type="radio" name="sex" id="Sex0" value="0" >男 &nbsp;&nbsp;&nbsp;</label>
								<label><input type="radio" name="sex" id="Sex1" value="1">女&nbsp;&nbsp;&nbsp;</label>
								<label><input type="radio" name="sex" id="Sex2" value="2" checked>保密 </label><br>
								
							</div>
							<button type="submit" class="btn btn-primary">修改</button>
						</form>
						</div>
						
				</div>
			</div>
		</div>
	</div>
	<!-- //web icons -->
	<%@ include file="common/footer.jsp" %>
</body>
</html>