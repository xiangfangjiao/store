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
<title>全部商品</title>
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
		<!-- Static table -->
        <div class="widget">
           <table cellpadding="0" cellspacing="0" width="100%" class="sTable">
                <thead>
                    <tr>
                        <td>图片</td>
                        <td>名称</td>
                        <td>介绍</td>
                        <td>价格</td>
                        <td>品牌</td>
                        <td>操作</td>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${goods}" var="goods">
                    <tr>
                        <td><img style="width:64px;" src="${pageContext.request.contextPath}/statics/file/${goods.photo}"/></td>
                        <td>${goods.proName}</td>
                        <td>${goods.message}</td>
                        <td>${goods.price}</td>
                        <td>${goods.brand}</td>
                        <td>
                        <a href="${pageContext.request.contextPath}/updategoods/${goods.proId}">编辑</a>
                        <a href="${pageContext.request.contextPath}/delete/${goods.proId}">删除</a>
                          	</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

		<!-- Main content wrapper -->
		<div class="wrapper"></div>

		<!-- Footer line -->
		<%@ include file="server/server_footer.jsp"%>

	</div>

	<div class="clear"></div>

</body>
</html>

