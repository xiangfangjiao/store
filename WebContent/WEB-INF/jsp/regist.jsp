<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Electronic Store a Ecommerce Online Shopping Category Bootstrap Responsive Website Template | Home :: w3layouts</title>
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

	<%@ include file="common/header.jsp" %>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header modal --><h4 class="modal-title" id="myModalLabel">别再等待，马上注册！</h4>
	
        <div class="nNote nInformation hideit">
            <p>${error }</p>
        </div>
				<div class="modal-body modal-body-sub">
					<div class="row">
						<div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
							<div class="sap_tabs">	
								<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
									<ul>
										<li class="resp-tab-item" aria-controls="tab_item-0">
										<a href="${pageContext.request.contextPath}/logins">登录</a></li>
										<li class="resp-tab-item" aria-controls="tab_item-1">
										<a href="${pageContext.request.contextPath}/regist">注册</a></li>
									</ul> 
									<div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
										<div class="facts">
											<div class="register">
												<form:form action=""  cssClass="form" method="post" modelAttribute="user">			
													<form:input placeholder="账户" path="userName" type="text" required="required"/>
													<form:input placeholder="电子邮件" path="userEmail" type="email" required="required"/>	
													<form:password placeholder="密码" path="userPsw" required="required"/>	
													<input placeholder="确认密码"  name="reUserPsw" id="reUserPsw"  type="password" required="required"/>
													<form:input style="margin-top: 14px;" placeholder="电话号码" path="userPhone" type="text" required="required"/>
													<form:input style="margin-top: 14px;" placeholder="昵称" path="userAlice" type="text" required="required"/>
													<div class="formRow" style="margin-top: 10px">
								                    	<form:label path="userSex">性别:</form:label>
								                        <div class="formRight">
								                        		<form:radiobutton path="userSex" value="男"/>男&nbsp;&nbsp;&nbsp;&nbsp;
								                        		<form:radiobutton path="userSex" value="女"/>女&nbsp;&nbsp;&nbsp;&nbsp;
								                        		<form:radiobutton path="userSex" value="保密"/>保密
								                        </div>
								                       </div>
													<div class="sign-up" style="margin-left: 170px;">
														<input type="submit" value="注册"/>
													</div>
												</form:form>
											</div>
										</div>
									</div> 			        					            	      
								</div>	
							</div>
							<script src="${pageContext.request.contextPath}/statics/js/easyResponsiveTabs.js" type="text/javascript"></script>
							<script type="text/javascript">
								$(document).ready(function () {
									$('#horizontalTab').easyResponsiveTabs({
										type: 'default', //Types: default, vertical, accordion           
										width: 'auto', //auto or any width like 600px
										fit: true   // 100% fit in a container
									});
								});
							</script>
							<div id="OR" class="hidden-xs">OR</div>
						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<div class="row text-center sign-with">
								<div class="col-md-12">
									<h3 class="other-nw">Sign in with</h3>
								</div>
								<div class="col-md-12">
									<ul class="social">
										<li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
										<li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
										<li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
										<li class="social_behance"><a href="#" class="entypo-behance"></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
	<!-- header -->
	<%@ include file="common/footer.jsp" %>
</body>
</html>