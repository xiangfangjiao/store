<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>免税网店</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/statics/css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/statics/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/statics/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/jquery.countdown.css" /> <!-- countdown --> 
<!-- //js -->  
<!-- web fonts --> 
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //web fonts -->  
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //end-smooth-scrolling --> 
</head> 
<body>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<%@ include file="common/header.jsp" %>
	<!-- banner -->
	<div class="banner">
		<div class="container">
			<h3>Electronic Store, <span>Special Offers</span></h3>
		</div>
	</div>
	<!-- //banner --> 
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-5 wthree_banner_bottom_left">
				<div class="${pageContext.request.contextPath}/statics/images/mac1.jpg">
					<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
					<img src="${pageContext.request.contextPath}/statics/images/mk3.jpg" alt=" " class="img-responsive" />
						<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
					</a>
				</div> 
					
					
			</div>
			<div class="col-md-7 wthree_banner_bottom_right">
				<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab" class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">口红</a></li>
						<li role="presentation"><a href="#audio" role="tab" id="audio-tab" data-toggle="tab" aria-controls="audio">包包</a></li>
						<li role="presentation"><a href="#video" role="tab" id="video-tab" data-toggle="tab" aria-controls="video">鞋子</a></li>
						<li role="presentation"><a href="#tv" role="tab" id="tv-tab" data-toggle="tab" aria-controls="tv">首饰</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/mac1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac4.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac5.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mac2.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div> 
									<h5><a href="${pageContext.request.contextPath}/client/macsingle">mac口红</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$189</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Mobile Phone1" /> 
											<input type="hidden" name="amount" value="350.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>  
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/ysl1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ysl2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ysl3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ysl4.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ysl5.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ysl6.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="${pageContext.request.contextPath}/client/yslsingle">ysl口红</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$302</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Mobile Phone2" /> 
											<input type="hidden" name="amount" value="302.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/jfx1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx4.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx5.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx4.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/jfx5.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="${pageContext.request.contextPath}/client/jfxsingle">纪梵希口红</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$245</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Mobile Phone3" /> 
											<input type="hidden" name="amount" value="245.00"/>   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="audio" aria-labelledby="audio-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/ck1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ck2.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">ck包包</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$250</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Headphones" /> 
											<input type="hidden" name="amount" value="250.00" />    
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/gucc1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucci1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucc2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucci1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucc1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucc2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucci1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/gucc2.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">古驰包包</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$150</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Headphones" /> 
											<input type="hidden" name="amount" value="150.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/mk1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/mk2.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">mk包包</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$180</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Audio Player" /> 
											<input type="hidden" name="amount" value="180.00"/>   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="video" aria-labelledby="video-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/nk1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk4.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk5.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/nk3.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="${pageContext.request.contextPath}/client/single2">nike球鞋</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$850</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Laptop" /> 
											<input type="hidden" name="amount" value="850.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/adds1.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds2.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds3.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds1.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds2.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds3.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds1.png" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/adds2.png" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">阿迪达斯鞋</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$280</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Notebook" /> 
											<input type="hidden" name="amount" value="280.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/kw1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw4.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw3.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw1.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/kw3.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">匡威鞋</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$880/p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Kid's Toy" /> 
											<input type="hidden" name="amount" value="80.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane fade" id="tv" aria-labelledby="tv-tab">
							<div class="agile_ecommerce_tabs">
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/TRINITY系列.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/手镯.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/钻戒.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/手镯.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/钻戒.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/手镯.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">卡地亚首饰</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$820</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Refrigerator" /> 
											<input type="hidden" name="amount" value="820.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/耳饰.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/戒指.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/手镯.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/手镯.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/戒指.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/耳饰.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">格拉芙首饰</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$680</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="LED Tv"/> 
											<input type="hidden" name="amount" value="680.00"/>   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="col-md-4 agile_ecommerce_tab_left">
									<div class="hs-wrapper">
										<img src="${pageContext.request.contextPath}/statics/images/ELSA PERETTI心形项链.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/六爪镶嵌钻戒.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/六爪镶嵌钻戒2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/六爪镶嵌钻戒.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/六爪镶嵌钻戒2" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ELSA PERETTI心形项链.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/六爪镶嵌钻戒2.jpg" alt=" " class="img-responsive" />
										<img src="${pageContext.request.contextPath}/statics/images/ELSA PERETTI心形项链.jpg" alt=" " class="img-responsive" />
										<div class="w3_hs_bottom">
											<ul>
												<li>
													<a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
												</li>
											</ul>
										</div>
									</div>
									<h5><a href="single.html">蒂芙尼首饰</a></h5>
									<div class="simpleCart_shelfItem">
										<p>$510</p>
										<form action="#" method="post">
											<input type="hidden" name="cmd" value="_cart" />
											<input type="hidden" name="add" value="1" /> 
											<input type="hidden" name="w3ls_item" value="Washing Machine" /> 
											<input type="hidden" name="amount" value="510.00" />   
											<button type="submit" class="w3ls-cart">加入购物车</button>
										</form>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						
					</div>
				</div> 
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	
	
	<!-- new-products -->
	<div class="new-products">
		<div class="container">
			<h3>热销品</h3>
			<div class="agileinfo_new_products_grids">
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="${pageContext.request.contextPath}/statics/images/mac1.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/mac7.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/mac2.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/mac3.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/mac4.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="${pageContext.request.contextPath}/client/single">mac口红</a></h5>
						<div class="simpleCart_shelfItem">
							<p>$189</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Red Laptop"> 
								<input type="hidden" name="amount" value="500.00">   
								<button type="submit" class="w3ls-cart">加入购物车</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="${pageContext.request.contextPath}/statics/images/kouchi1.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/kouchi2.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/kouchi3.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/kouchi1.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/kouchi3.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">蔻驰包包</a></h5>
						<div class="simpleCart_shelfItem">
							<p>$370</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Black Phone"> 
								<input type="hidden" name="amount" value="370.00">   
								<button type="submit" class="w3ls-cart">加入购物车</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="${pageContext.request.contextPath}/statics/images/nk1.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/nk3.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/nk2.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/nk5.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/nk4.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">nike球鞋</a></h5>
						<div class="simpleCart_shelfItem">
							<p>$800</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Kids Toy"> 
								<input type="hidden" name="amount" value="100.00">   
								<button type="submit" class="w3ls-cart">加入购物车</button>
							</form>
						</div>  
					</div>
				</div>
				<div class="col-md-3 agileinfo_new_products_grid">
					<div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
						<div class="hs-wrapper hs-wrapper1">
							<img src="${pageContext.request.contextPath}/statics/images/耳饰.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/手镯.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/戒指.jpg" alt=" " class="img-responsive" />
							<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" /> 
							<div class="w3_hs_bottom w3_hs_bottom_sub">
								<ul>
									<li>
										<a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
									</li>
								</ul>
							</div>
						</div>
						<h5><a href="single.html">格拉芙首饰</a></h5>
						<div class="simpleCart_shelfItem">
							<p>$950</p>
							<form action="#" method="post">
								<input type="hidden" name="cmd" value="_cart">
								<input type="hidden" name="add" value="1"> 
								<input type="hidden" name="w3ls_item" value="Induction Stove"> 
								<input type="hidden" name="amount" value="250.00">   
								<button type="submit" class="w3ls-cart">加入购物车</button>
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //new-products -->
	<!-- top-brands -->
	<div class="top-brands">
		<div class="container">
			<h3>产品图</h3>
			<div class="sliderfig">
				<ul id="flexiselDemo1">			
					<li>
						<img src="${pageContext.request.contextPath}/statics/images/mac7.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/statics/images/mk2.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/statics/images/nk2.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/statics/images/项链.jpg" alt=" " class="img-responsive" />
					</li>
					<li>
						<img src="${pageContext.request.contextPath}/statics/images/戒指.jpg" alt=" " class="img-responsive" />
					</li>
				</ul>
			</div>
			<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems:2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
			</script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.flexisel.js"></script>
		</div>
	</div>
	<!-- //top-brands --> 
	<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="col-md-6 w3agile_newsletter_left">
				<h3>Newsletter</h3>
				<p>Excepteur sint occaecat cupidatat non proident, sunt.</p>
			</div>
			<div class="col-md-6 w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="submit" value="" />
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //newsletter -->
	<%@ include file="common/footer.jsp" %>
</body>
</html>