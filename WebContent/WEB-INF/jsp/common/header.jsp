<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    	<!-- header modal -->
    	<ul style="float: left;color:red;margin-left:140px;margin-top:37px;  ">
    	<li>
    	<a href="${pageContext.request.contextPath}/logins" title=""><img src="${pageContext.request.contextPath}/statics/image/icons/topnav/logout.png" alt="" />
    	<h2>请登录</h2>
    	</a>
    	
        	<c:if test="${!empty loginer}">
        		<div class="welcome"><a href="#" title=""><img style="width: 16px;" src="${pageContext.request.contextPath}/statics/file/${loginer.userPhoto}" alt="" /></a><span>您好, ${loginer.userAlice }</span></div>
        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        		<a href="${pageContext.request.contextPath}/client/gaipassword">修改密码？</a>
        	</c:if>
    	</li>

    	</ul>
		
	<!-- header modal -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_logo">
				<h1><a href="index.html">Free Store<span>Your stores. Your place.</span></a></h1>
			</div>
			<div class="search">
				<input class="search_box" type="checkbox" id="search_box">
				<label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
				<div class="search_form">
					<form action="${pageContext.request.contextPath}/client/sousuo" method="post">
						<input type="text" name="Search" placeholder="搜索商品...">
						<input type="submit" value="Send">
					</form>
				</div>
			</div>
			<div class="cart cart box_1" style="margin-top:70px; "> 
				<form action="" method="post" class="last"> 
					<input type="hidden" name="cmd" value="_cart" />
					<input type="hidden" name="display" value="1" />
					<button class="w3view-cart" type="submit" onclick="Tow()" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
				</form>   
			</div>  
		</div>
	</div>
	<!-- //header -->
	<!-- navigation -->
	<div class="navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header nav_2">
					<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div> 
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath}/index" class="act">首页</a></li>	
						<!-- Mega Menu -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">品牌分类 <b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="row">
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>包包</h6>
											<li><a href="${pageContext.request.contextPath}/client/products1">ck</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">gucci </a></li> 
											<li><a href="${pageContext.request.contextPath}/client/products1">mk</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">蔻驰<span>New</span></a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>口红</h6>
											<li><a href="${pageContext.request.contextPath}/client/products1">MAC</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">ysl</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">纪梵希</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">香奈儿 <span>New</span></a></li>
										</ul>
									</div>
									<div class="col-sm-3">
										<ul class="multi-column-dropdown">
											<h6>鞋子</h6>
											<li><a href="${pageContext.request.contextPath}/client/products1">nike球鞋</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">阿迪达斯</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">彪马鞋</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">匡威鞋<span>New</span></a></li>
										</ul>
									</div>
									<div class="col-sm-2">
										<ul class="multi-column-dropdown">
											<h6>首饰</h6>
											<li><a href="${pageContext.request.contextPath}/client/products1">蒂芙尼</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">格拉芙</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">卡地亚</a></li>
											<li><a href="${pageContext.request.contextPath}/client/products1">香奈儿 <span>New</span></a></li>
										</ul>
									</div>
									
									
								</div>
							</ul>
						</li>
						<li><a href="${pageContext.request.contextPath}/client/about">关于我们</a></li> 
						<li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">信息和优惠<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/client/personal">个人信息</a></li>
								<li><a href="${pageContext.request.contextPath}/client/member">会员专享</a></li>     
							</ul>
						</li>  
						<li><a href="${pageContext.request.contextPath}/client/mail">加入我们</a></li>
                    	<li><a href="${pageContext.request.contextPath}/loginout" title=""><img src="${pageContext.request.contextPath}/statics/image/icons/topnav/logout.png" alt="" /><span>登出</span></a></li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- //navigation -->