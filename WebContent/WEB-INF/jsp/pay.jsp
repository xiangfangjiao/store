<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html >
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
<link
	href="${pageContext.request.contextPath}/statics/css/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath}/statics/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="${pageContext.request.contextPath}/statics/css/fasthover.css"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="${pageContext.request.contextPath}/statics/css/popuo-box.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link
	href="${pageContext.request.contextPath}/statics/css/font-awesome.css"
	rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script
	src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/statics/css/jquery.countdown.css" />
<!-- countdown -->
<!-- //js -->
<!-- web fonts -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web fonts -->
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
	function firm(){
		if(confirm("支付成功，返回首页!")){
			location.href="${pageContext.request.contextPath}/index";
		}else{
			alert("回到首页");
			location.href="${pageContext.request.contextPath}/index";
		}
	}
</script>
<!-- //end-smooth-scrolling -->
</head>
<body>

	<!-- for bootstrap working -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/statics/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<%@ include file="common/header.jsp"%>
	<!-- banner -->
	<div class="banner banner10">
		<div class="container">
			<h2>支付信息</h2>
		</div>
	</div>
	<!-- //banner -->
	<!-- breadcrumbs -->
	<div class="breadcrumb_dress">
		<div class="container">
			<ul>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> 首页</a> <i>/</i></li>
				<li>支付信息</li>
			</ul>
		</div>
	</div>

	<!-- pay -->
	<div class="typo codes icons main-grid-border">
		<div class="container">
			<div class="grid_3 grid_4 w3_agileits_icons_page">
				<div class="icons">
					<h3 class="agileits-title">支付信息</h3>
					<section id="new">
						<div class="row fontawesome-icon-list" style="margin: auto;">
							<div style="margin-left:200px;height: 260px;">选择支付：
							<br /> 
							<br /> 
							<br /> 
							<table style="width:1000px;">
								<tr>
									<td>
										<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" />支付宝 <br/>
										 <br/>
										<img src="${pageContext.request.contextPath}/statics/images/zfb1.jpg" align="middle" /> 
									</td>
									<td></td>
									<td >
										<input type="radio" name="pd_FrpId" value="BOC-NET-B2C" checked="checked" />微信 <br/>
										 <br/>
										<img src="${pageContext.request.contextPath}/statics/images/wx1.jpg" align="middle" />
									</td>
								</tr>
							</table>
							<br /> 
							<br /> 
							<input name="Submit2" type="submit" onclick="firm()" value="确认支付" />
							
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>

	<!-- //pay -->

	<%@ include file="common/footer.jsp"%>
</body>
</html>
