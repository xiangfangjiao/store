<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>添加商品</title>
<link href="${pageContext.request.contextPath}/statics/css/main.css" rel="stylesheet" type="text/css" />

<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/spinner/ui.spinner.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/spinner/jquery.mousewheel.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/jquery-ui.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/charts/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/charts/jquery.sparkline.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/uniform.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.cleditor.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.validationEngine.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.tagsinput.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/autogrowtextarea.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.maskedinput.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.dualListBox.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/forms/chosen.jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/wizard/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/wizard/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/wizard/jquery.form.wizard.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/uploader/plupload.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/uploader/plupload.html5.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/uploader/plupload.html4.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/uploader/jquery.plupload.queue.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/tables/datatable.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/tables/tablesort.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/tables/resizable.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.tipsy.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.collapsible.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.progress.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.timeentry.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.colorpicker.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.jgrowl.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.breadcrumbs.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/ui/jquery.sourcerer.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/plugins/calendar.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/plugins/elfinder.min.js"></script>

<script src="${pageContext.request.contextPath}/statics/js/custom.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<%@ include file="server/server_left.jsp" %>

<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <%@ include file="server/server_top_nav.jsp" %>
    
    <!-- Responsive header -->
    <%@ include file="server/server_header.jsp" %>
    
    <div class="line"></div>
       <!-- Validation form -->
        <form class="form" method="post">
        	<fieldset>
                <div class="widget">
                    <div class="title"><img src="${pageContext.request.contextPath}/statics/image/icons/dark/alert.png" alt="" class="titleIcon" /><h6>添加商品</h6>${error}</div>
                    
                    <div class="formRow">
                        <label >商品名称：<span class="req">*</span></label>
                        <div class="formRight">
                        <input  type="text" name="proName" id="numsValid"/>
                        </div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label >商品图片：<span class="req">*</span></label>
                        <div class="formRight"><p><img style="display:none;" id="preview"/></p>
						<input  type="file" name="photo" onchange="viewImage(this)" required="required" />   				 				
					 </div>
                    <div class="formRow">
                        <label >品牌：<span class="req">*</span></label>
                        <div class="formRight">
                        <input type="text"  name="brand" id="ipValid"/></div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label>国家：<span class="req">*</span></label>
                        <div class="formRight">
                        <input type="text" name="country" id="emailValid"/></div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label >单价：<span class="req">*</span></label>
                        <div class="formRight">
                        <input  type="text"  name="price" id="dateValid"/></div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label >商品类别<span class="req">*</span></label>
                        <div class="formRight">
                            <div class="floatL">
                                <select name="category.categoryId" id="selectReq" class="validate[required]" >
                                  <c:forEach items="${category}" var="category">
                                  	<option  value="${category.categoryId }">${category.categoryName }</option>
                                  </c:forEach>
                                </select>
                            </div>
                          </div><div class="clear"></div>
                    </div>
                     <div class="formRow">
                        <label >商品库存：<span class="req">*</span></label>
                        <div class="formRight">
                        <input  type="text"  name="count" id="dateValid"/></div><div class="clear"></div>
                    </div>
                    <div class="formRow">
                        <label >商品描述:<span class="req">*</span></label>
                        <div class="formRight">
                        <textarea  rows="8" cols="" name="message" class="validate[required]" id="textareaValid"></textarea></div><div class="clear"></div>
                    </div>
                    <div class="formSubmit"><input type="submit" value="submit" class="redB" /></div>
                    <div class="clear"></div>
                </div>
                </div>
            </fieldset>
        </form> 
    <!-- Main content wrapper -->
    <div class="wrapper">
    
    </div>
    
    <!-- Footer line -->
    <%@ include file="server/server_footer.jsp" %>

</div>

<div class="clear"></div>
<script>
$("form").submit(function(){
	var formData = new FormData();
	var photo = $("[type='file']")[0].files[0];
	$.ajax({
		url:"${pageContext.request.contextPath}/upload",
		type:"POST",
		data:formData,
		processData:false,
		contentType:false,
		success:function(x){
			alert(x.msg);
		},
		error:function(){
			alert("失败");
		},
		dataType:"json"
	})
});

</script>
</body>
</html>

    