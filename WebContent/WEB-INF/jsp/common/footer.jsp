<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isErrorPage="true"%>
<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="w3_footer_grids">
			<div class="col-md-3 w3_footer_grid">
				<h3>Contact</h3>
				<p>Duis aute irure dolor in reprehenderit in voluptate velit
					esse.</p>
				<ul class="address">
					<li><i class="glyphicon glyphicon-map-marker"
						aria-hidden="true"></i>1234k Avenue, 4th block, <span>New
							York City.</span></li>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a
						href="https://i.qq.com/">1025913896@qq.com</a></li>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+152 8278 2719</li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Information</h3>
				<ul class="info">
					<li><a href="${pageContext.request.contextPath}/client/about">关于我们</a></li>
					<li><a href="mail.html">Contact Us</a></li>
					<li><a href="codes.html">Short Codes</a></li>
					<li><a href="${pageContext.request.contextPath}/client/faq">常见问题解答</a></li>
					<li><a href="products.html">Special Products</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Category</h3>
				<ul class="info">
					<li><a href="products.html">Mobiles</a></li>
					<li><a href="products1.html">Laptops</a></li>
					<li><a href="products.html">Purifiers</a></li>
					<li><a href="products1.html">Wearables</a></li>
					<li><a href="products2.html">Kitchen</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Profile</h3>
				<ul class="info">
					<li><a href="index.html">首页</a></li>
					<li><a href="products.html">今日上新</a></li>
				</ul>
				<h4>Follow Us</h4>
				<div class="agileits_social_button">
					<ul>
						<li><a href="#" class="facebook"> </a></li>
						<li><a href="#" class="twitter"> </a></li>
						<li><a href="#" class="google"> </a></li>
						<li><a href="#" class="pinterest"> </a></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="footer-copy">
		<div class="footer-copy1">
			<div class="footer-copy-pos">
				<a href="#home1" class="scroll"><img
					src="${pageContext.request.contextPath}/statics/images/arrow.png"
					alt=" " class="img-responsive" /></a>
			</div>
		</div>
		<div class="container">
			<p>
				&copy; 2020 免税网店 <a href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>
	</div>
</div>
<!-- //footer -->
<!-- cart-js -->
<script src="${pageContext.request.contextPath}/statics/js/minicart.js"></script>
<script>
	w3ls.render();

	w3ls.cart.on('w3sb_checkout', function(evt) {
		var items, len, i;

		if (this.subtotal() > 0) {
			items = this.items();

			for (i = 0, len = items.length; i < len; i++) {
			}
		}
	});
	function Two() {
		document.form.action = "${pageContext.request.contextPath}/pay";
		document.form.submit();
	}
	
</script>

<!-- //cart-js -->
