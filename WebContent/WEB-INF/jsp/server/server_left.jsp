<%@ page language="java" pageEncoding="UTF-8"%>
<div id="leftSide">
	<div class="logo">
		<a href="index.html"><img
			src="${pageContext.request.contextPath}/statics/image/logo.png"
			alt="" /></a>
	</div>

	<div class="sidebarSep"></div>

	<!-- Left navigation -->
	<ul id="menu" class="nav">
		<li class="dash">
		<li class="ui"><a href="${pageContext.request.contextPath}/manage" title=""><span>客户管理</span></a></li>
		
		<li class="forms"><a href="#" title="" class="exp"><span>商品管理</span></a>
			<ul class="sub">
				<li><a href="${pageContext.request.contextPath}/allgoods" title="">全部商品</a></li>
				<li><a href="${pageContext.request.contextPath}/addgoods" title="">添加商品</a></li>
				<li><a href="${pageContext.request.contextPath}/category" title="">商品类别</a></li>
			</ul></li>
		<li class="files"><a href="#" title="" class="exp"><span>订单管理</span></a>
			<ul class="sub">
				<li><a href="${pageContext.request.contextPath}/order" title="">全部订单</a></li>
				<li ><a href="${pageContext.request.contextPath}/order_pay" title="">未发货订单</a></li>
				<li><a href="${pageContext.request.contextPath}/order_over" title="">已发货订单</a></li>
			
			</ul></li>
	</ul>
</div>