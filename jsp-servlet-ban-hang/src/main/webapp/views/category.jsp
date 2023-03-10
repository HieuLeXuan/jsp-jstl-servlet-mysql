<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category Page</title>
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
<link rel="stylesheet"
	href="<c:url value='/template/css/ion.rangeSlider.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/ion.rangeSlider.skinFlat.css'/>">
<link rel="stylesheet"
	href="<c:url value='/template/css/magnific-popup.css'/>">
<link rel="stylesheet" href="<c:url value='/template/css/main.css'/>">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>

<style>
.category-img {
	width: 255px;
	height: 149px;
	object-fit: cover;
}

.btn-loadmore {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

<body id="category">

	<!-- Start Header Area -->
	<%@ include file="/common/header.jsp"%>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div
				class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Shop Category page</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Shop<span class="lnr lnr-arrow-right"></span></a> <a
							href="category.html">Fashon Category</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
					<div class="head">Browse Categories</div>
					<!-- <ul class="main-categories">
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#fruitsVegetable" aria-expanded="false"
							aria-controls="fruitsVegetable"><span
								class="lnr lnr-arrow-right"></span>Fruits and Vegetables<span
								class="number">(53)</span></a>
							<ul class="collapse" id="fruitsVegetable" data-toggle="collapse"
								aria-expanded="false" aria-controls="fruitsVegetable">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>

						<li class="main-nav-list"><a data-toggle="collapse"
							href="#meatFish" aria-expanded="false" aria-controls="meatFish"><span
								class="lnr lnr-arrow-right"></span>Meat and Fish<span
								class="number">(53)</span></a>
							<ul class="collapse" id="meatFish" data-toggle="collapse"
								aria-expanded="false" aria-controls="meatFish">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#cooking" aria-expanded="false" aria-controls="cooking"><span
								class="lnr lnr-arrow-right"></span>Cooking<span class="number">(53)</span></a>
							<ul class="collapse" id="cooking" data-toggle="collapse"
								aria-expanded="false" aria-controls="cooking">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#beverages" aria-expanded="false" aria-controls="beverages"><span
								class="lnr lnr-arrow-right"></span>Beverages<span class="number">(24)</span></a>
							<ul class="collapse" id="beverages" data-toggle="collapse"
								aria-expanded="false" aria-controls="beverages">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#homeClean" aria-expanded="false" aria-controls="homeClean"><span
								class="lnr lnr-arrow-right"></span>Home and Cleaning<span
								class="number">(53)</span></a>
							<ul class="collapse" id="homeClean" data-toggle="collapse"
								aria-expanded="false" aria-controls="homeClean">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a href="#">Pest Control<span
								class="number">(24)</span></a></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#officeProduct" aria-expanded="false"
							aria-controls="officeProduct"><span
								class="lnr lnr-arrow-right"></span>Office Products<span
								class="number">(77)</span></a>
							<ul class="collapse" id="officeProduct" data-toggle="collapse"
								aria-expanded="false" aria-controls="officeProduct">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#beauttyProduct" aria-expanded="false"
							aria-controls="beauttyProduct"><span
								class="lnr lnr-arrow-right"></span>Beauty Products<span
								class="number">(65)</span></a>
							<ul class="collapse" id="beauttyProduct" data-toggle="collapse"
								aria-expanded="false" aria-controls="beauttyProduct">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#healthProduct" aria-expanded="false"
							aria-controls="healthProduct"><span
								class="lnr lnr-arrow-right"></span>Health Products<span
								class="number">(29)</span></a>
							<ul class="collapse" id="healthProduct" data-toggle="collapse"
								aria-expanded="false" aria-controls="healthProduct">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a href="#">Pet Care<span
								class="number">(29)</span></a></li>
						<li class="main-nav-list"><a data-toggle="collapse"
							href="#homeAppliance" aria-expanded="false"
							aria-controls="homeAppliance"><span
								class="lnr lnr-arrow-right"></span>Home Appliances<span
								class="number">(15)</span></a>
							<ul class="collapse" id="homeAppliance" data-toggle="collapse"
								aria-expanded="false" aria-controls="homeAppliance">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#">Meat<span
										class="number">(11)</span></a></li>
							</ul></li>
						<li class="main-nav-list"><a class="border-bottom-0"
							data-toggle="collapse" href="#babyCare" aria-expanded="false"
							aria-controls="babyCare"><span class="lnr lnr-arrow-right"></span>Baby
								Care<span class="number">(48)</span></a>
							<ul class="collapse" id="babyCare" data-toggle="collapse"
								aria-expanded="false" aria-controls="babyCare">
								<li class="main-nav-list child"><a href="#">Frozen Fish<span
										class="number">(13)</span></a></li>
								<li class="main-nav-list child"><a href="#">Dried Fish<span
										class="number">(09)</span></a></li>
								<li class="main-nav-list child"><a href="#">Fresh Fish<span
										class="number">(17)</span></a></li>
								<li class="main-nav-list child"><a href="#">Meat
										Alternatives<span class="number">(01)</span>
								</a></li>
								<li class="main-nav-list child"><a href="#"
									class="border-bottom-0">Meat<span class="number">(11)</span></a></li>
							</ul></li>
					</ul> -->
					<c:forEach var="ca" items="${categoryList}">
						<ul class="main-categories">
							<li class="main-nav-list"><a id="category-link"
								href="category?cId=${ca.id}">${ca.name}</a> <input type="hidden"
								name="cId" id="cId" value="${ca.id}" /></li>
						</ul>
					</c:forEach>
					<input type="hidden"
								name="cId" id="categoryId" value="${categoryId}" />
				</div>
				<!-- <div class="sidebar-filter mt-50">
					<div class="top-filter-head">Product Filters</div>
					<div class="common-filter">
						<div class="head">Brands</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="gionee" name="brand"><label
									for="gionee">Gionee<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="micromax" name="brand"><label
									for="micromax">Micromax<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="samsung" name="brand"><label
									for="samsung">Samsung<span>(19)</span></label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">Color</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="balckleather" name="color"><label
									for="balckleather">Black Leather<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="blackred" name="color"><label
									for="blackred">Black with red<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio"
									type="radio" id="spacegrey" name="color"><label
									for="spacegrey">Spacegrey<span>(19)</span></label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">Price</div>
						<div class="price-range-area">
							<div id="price-range"></div>
							<div class="value-wrapper d-flex">
								<div class="price">Price:</div>
								<span>$</span>
								<div id="lower-value"></div>
								<div class="to">to</div>
								<span>$</span>
								<div id="upper-value"></div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting">
						<select>
							<option value="1">Default sorting</option>
							<option value="1">Default sorting</option>
							<option value="1">Default sorting</option>
						</select>
					</div>
					<div class="sorting mr-auto">
						<select>
							<option value="1">Show 12</option>
							<option value="1">Show 12</option>
							<option value="1">Show 12</option>
						</select>
					</div>
					<div class="pagination">
						<a href="#" class="prev-arrow"><i
							class="fa fa-long-arrow-left" aria-hidden="true"></i></a> <a href="#"
							class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a
							href="#" class="dot-dot"><i class="fa fa-ellipsis-h"
							aria-hidden="true"></i></a> <a href="#">6</a> <a href="#"
							class="next-arrow"><i class="fa fa-long-arrow-right"
							aria-hidden="true"></i></a>
					</div>
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
					<div class="row" id="content">
						<!-- single product -->
						<c:forEach var="prod" items="${productList}">
							<div class="category-product col-lg-4 col-md-6">
								<div class="single-product">
									<img class="img-fluid category-img" src="${prod.image}" alt="">
									<div class="product-details">
										<h6>${prod.name}</h6>
										<div class="price">
											<h6>${prod.price}$</h6>
											<h6 class="l-through">$210.00</h6>
										</div>
										<div class="prd-bottom">

											<a href="" class="social-info"> <span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<!-- <a href="" class="social-info"> <span
											class="lnr lnr-heart"></span>
											<p class="hover-text">Wishlist</p>
										</a> <a href="" class="social-info"> <span
											class="lnr lnr-sync"></span>
											<p class="hover-text">compare</p>
										</a> -->
											<a href="detail?prodId=${prod.id}" class="social-info"> <span
												class="lnr lnr-move"></span>
												<p class="hover-text">view more</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</section>
				<!-- End Best Seller -->
				<a class="btn btn-warning btn-loadmore mb-2" onclick="loadMoreProducts()"><i
					class="material-icons">chevron_left</i> <span>Load More
						Products</span></a>
				<!-- Start Filter Bar -->
				<!-- <div class="filter-bar d-flex flex-wrap align-items-center m-2">
					<div class="sorting mr-auto">
						<select>
							<option value="1">Show 12</option>
							<option value="1">Show 12</option>
							<option value="1">Show 12</option>
						</select>
					</div>
					<div class="pagination">
						<a href="#" class="prev-arrow"><i
							class="fa fa-long-arrow-left" aria-hidden="true"></i></a> <a href="#"
							class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a
							href="#" class="dot-dot"><i class="fa fa-ellipsis-h"
							aria-hidden="true"></i></a> <a href="#">6</a> <a href="#"
							class="next-arrow"><i class="fa fa-long-arrow-right"
							aria-hidden="true"></i></a>
					</div>
				</div> -->
				<!-- End Filter Bar -->
			</div>
		</div>
	</div>

	<!-- Start related-product Area -->
	<!-- <section class="related-product-area section_gap">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r1.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r2.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r3.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r5.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r6.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r7.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r9.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r10.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r11.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a href="#" target="_blank"> <img
							class="img-fluid d-block mx-auto" src="img/category/c5.jpg"
							alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- End related-product Area -->

	<!-- start footer Area -->
	<%@ include file="/common/footer.jsp"%>
	<!-- End footer Area -->

	<!-- Modal Quick Product View -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="container relative">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="product-quick-view">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="quick-view-carousel">
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
								<div class="item"
									style="background: url(img/organic-food/q1.jpg);"></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="quick-view-content">
								<div class="top">
									<h3 class="head">Mill Oil 1000W Heater, White</h3>
									<div class="price d-flex align-items-center">
										<span class="lnr lnr-tag"></span> <span class="ml-10">$149.99</span>
									</div>
									<div class="category">
										Category: <span>Household</span>
									</div>
									<div class="available">
										Availibility: <span>In Stock</span>
									</div>
								</div>
								<div class="middle">
									<p class="content">Mill Oil is an innovative oil filled
										radiator with the most modern technology. If you are looking
										for something that can make your interior look awesome, and at
										the same time give you the pleasant warm feeling during the
										winter.</p>
									<a href="#" class="view-full">View full Details <span
										class="lnr lnr-arrow-right"></span></a>
								</div>
								<div class="bottom">
									<div class="color-picker d-flex align-items-center">
										Color: <span class="single-pick"></span> <span
											class="single-pick"></span> <span class="single-pick"></span>
										<span class="single-pick"></span> <span class="single-pick"></span>
									</div>
									<div class="quantity-container d-flex align-items-center mt-15">
										Quantity: <input type="text" class="quantity-amount ml-15"
											value="1" />
										<div class="arrow-btn d-inline-flex flex-column">
											<button class="increase arrow" type="button"
												title="Increase Quantity">
												<span class="lnr lnr-chevron-up"></span>
											</button>
											<button class="decrease arrow" type="button"
												title="Decrease Quantity">
												<span class="lnr lnr-chevron-down"></span>
											</button>
										</div>

									</div>
									<div class="d-flex mt-20">
										<a href="#" class="view-btn color-2"><span>Add to
												Cart</span></a> <a href="#" class="like-btn"><span
											class="lnr lnr-layers"></span></a> <a href="#" class="like-btn"><span
											class="lnr lnr-heart"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<c:url value='/template/js/vendor/jquery-2.2.4.min.js'/>"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/template/js/vendor/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/js/jquery.ajaxchimp.min.js'/>"></script>
	<script src="<c:url value='/template/js/jquery.nice-select.min.js'/>"></script>
	<script src="<c:url value='/template/js/jquery.sticky.js'/>"></script>
	<script src="<c:url value='/template/js/nouislider.min.js'/>"></script>
	<script src="<c:url value='/template/js/countdown.js'/>"></script>
	<script
		src="<c:url value='/template/js/jquery.magnific-popup.min.js'/>"></script>
	<script src="<c:url value='/template/js/owl.carousel.min.js'/>"></script>
	<!--gmaps Js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="<c:url value='/template/js/gmaps.min.js'/>"></script>
	<script src="<c:url value='/template/js/main.js'/>"></script>

	<script>
		function loadMoreProducts() {
			let amount = document.getElementsByClassName("category-product").length;
			let cId = $('#categoryId').val();
			$.ajax({
				type : 'GET',
				url : 'load',
				data : {
					exits : amount, cId
				},
				success : function(data) {
					let row = document.getElementById("content");
					row.innerHTML += data;
				},
				error : function(err) {
					// do something to handle error
				}
			})
		}
	</script>
</body>
</html>