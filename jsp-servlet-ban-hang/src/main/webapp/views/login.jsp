<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<!--
		CSS
		============================================= -->
<link rel="stylesheet"
	href="<c:url value='/template/css/linearicons.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/themify-icons.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/bootstrap.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/owl.carousel.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/nice-select.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/nouislider.min.css'/>">
<link rel="stylesheet" href="<c:url value='/template/css/main.css'/>">
</head>
<body>
	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid"
							src="<c:url value='/template/img/login.jpg'/>" alt="">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology
								everyday, and a good example of this is the</p>
							<a class="primary-btn" href="register">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						<form class="row login_form" action="login" method="post"
							id="contactForm" novalidate="novalidate">
							<p class="text-danger col-md-12 text-left">${message}</p>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" name="name"
									value="${username}" placeholder="Username"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Username'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="pass"
									value="${password}" name="pass" placeholder="Password"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Password'">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector" value="1">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Log
									In</button>
								<a href="#">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

	<script src="<c:url value='/template/js/vendor/jquery-2.2.4.min.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/js/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/js/jquery.ajaxchimp.min.js'/>"></script>
	<script src="<c:url value='/template/js/jquery.nice-select.min.js'/>"></script>
	<script src="<c:url value='/template/js/jquery.sticky.js'/>"></script>
	<script
		src="<c:url value='/template/js/jquery.magnific-popup.min.js'/>"></script>
	<script src="<c:url value='/template/js/owl.carousel.min.js'/>"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="<c:url value='/template/js/gmaps.min.js'/>"></script>
	<script src="<c:url value='/template/js/main.js'/>"></script>
</body>
</html>