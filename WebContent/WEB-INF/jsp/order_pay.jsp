<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>未发货订单</title>
<link href="${pageContext.request.contextPath}/statics/css/main.css"
	rel="stylesheet" type="text/css" />

<script
	src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/spinner/ui.spinner.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/spinner/jquery.mousewheel.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/jquery-ui.min.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/charts/excanvas.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/charts/jquery.sparkline.min.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/uniform.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.cleditor.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.validationEngine.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.tagsinput.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/autogrowtextarea.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.maskedinput.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.dualListBox.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/forms/chosen.jquery.min.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/wizard/jquery.form.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/wizard/jquery.validate.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/wizard/jquery.form.wizard.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/uploader/plupload.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/uploader/plupload.html5.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/uploader/plupload.html4.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/uploader/jquery.plupload.queue.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/tables/datatable.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/tables/tablesort.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/tables/resizable.min.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.tipsy.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.collapsible.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.prettyPhoto.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.progress.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.timeentry.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.colorpicker.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.jgrowl.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.breadcrumbs.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.sourcerer.js"></script>

<script
	src="${pageContext.request.contextPath}/statics/js/plugins/calendar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/statics/js/plugins/elfinder.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/custom.js"></script>

<!-- Shared on MafiaShare.net  -->
<!-- Shared on MafiaShare.net  -->
</head>

<body>

	<!-- Left side content -->
	<%@ include file="server/server_left.jsp"%>

	<!-- Right side -->
	<div id="rightSide">

		<!-- Top fixed navigation -->
		<%@ include file="server/server_top_nav.jsp"%>

		<!-- Responsive header -->
		<%@ include file="server/server_header.jsp"%>

		<div class="line"></div>
		<!-- Tables inside tabs -->
        <div class="widget rightTabs">  
            <div class="title"><img src="images/icons/dark/frames.png" alt="" class="titleIcon" /><h6>订单详情</h6></div>     
            
            
            <div class="tab_container">
                <div id="tab3" class="tab_content np">
                    <table cellpadding="0" cellspacing="0" width="100%" class="sTable">
                        <thead>
                            <tr>
                                <td>用户名</td>
                                <td>商品名称</td>
                                <td>总价</td>
                                <td>订单状态</td>
                                <td>支付方式</td>
                                <td>支付方式</td>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orders}" var="orders">
                            <tr>
                                <td>${orders.user.userName }</td>
                                <td>${orders.goods.proName}</td>
                                <td>${orders.total}</td>
                                <c:choose>
            						<c:when test="${orders.isornotpay==0}">
            						<td class="center">已付款<a href="${pageContext.request.contextPath}/order_pay_shield/${orders.oid }">未发货</a></td>
            						</c:when>
            						<c:otherwise>
            						<td class="center">已付款<a href="">出货中</a></td>
            						</c:otherwise>
            					</c:choose>
                                <td>${orders.payway}</td>
                               <td></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="clear"></div>
            </div>	
        </div>
    </div>
		<!-- Main content wrapper -->
		<div class="wrapper"></div>

		<!-- Footer line -->
		<%@ include file="server/server_footer.jsp"%>

	<div class="clear"></div>

</body>
</html>

