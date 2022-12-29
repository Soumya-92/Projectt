<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>


<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Resto | Food Website</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
  <!-- theme meta -->
  <meta name="theme-name" content="aviato" />
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick/slick-theme.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

</head>

<body id="body">

<!-- Start Top Header Bar -->
<section class="top-header">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4">
				<div class="contact-number">
					<i class="tf-ion-ios-telephone"></i>
					<span>0129- 12323-123123</span>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="index">
						<!-- replace logo here -->
						<svg width="135px" height="29px" viewBox="0 0 155 29" version="1.1" xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink">
							<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40"
								font-family="AustinBold, Austin" font-weight="bold">
								<g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
									<text id="AVIATO">
										<tspan x="108.94" y="325">RESTO</tspan>
									</text>
								</g>
							</g>
						</svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Cart -->
				<ul class="top-menu text-right list-inline">
					<li class="dropdown cart-nav dropdown-slide">
					<c:out value="${cart.size()}"> </c:out>
						<a href="viewcart" 
       class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-android-cart"></i>  Cart</a>
						<div class="dropdown-menu cart-dropdown">
							

							<ul class="text-center cart-buttons">
								<li><a href="viewcart" class="btn btn-small">View Cart</a></li>
								<li><a href="checkout.jsp" class="btn btn-small btn-solid-border">Checkout</a></li>
							</ul>
						</div>

					</li>
					<!-- / Cart -->

					<!-- Search -->
					<li class="dropdown search dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-ios-search-strong"></i> Search</a>
						<ul class="dropdown-menu search-dropdown">
							<li>
								<form action="post"><input type="search" class="form-control" placeholder="Search..."></form>
							</li>
						</ul>
					</li><!-- / Search -->

					<!-- Languages -->
					<li class="commonSelect">
						<select class="form-control">
							<option>EN</option>
							<option>DE</option>
							<option>FR</option>
							<option>ES</option>
						</select>
					</li><!-- / Languages -->

				</ul><!-- / .nav .navbar-nav .navbar-right -->
			</div>
		</div>
	</div>
</section><!-- End Top Header Bar -->


<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">Main Menu</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

			</div><!-- / .navbar-header -->

			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
				<ul class="nav navbar-nav">

					<!-- Home -->
					<li class="dropdown ">
						<a href="index">Home</a>
					</li><!-- / Home -->


					<!-- Elements -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Shop <span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-6 col-md-6 mb-sm-3">
									<ul>
										<li class="dropdown-header">Pages</li>
										<li role="separator" class="divider"></li>
										<li><a href="viewitem">Shop</a></li>
										<li><a href="checkout.jsp">Checkout</a></li>
										<li><a href="viewcart">Cart</a></li>
										<li><a href="pricing.html">Pricing</a></li>
										<li><a href="confirmation.html">Confirmation</a></li>

									</ul>
								</div>

								<!-- Layout -->
								<div class="col-lg-6 col-md-6 mb-sm-3">
									<ul>
										<li class="dropdown-header">Layout</li>
										<li role="separator" class="divider"></li>
										<li><a href="product-single.html">Product Details</a></li>
										<li><a href="shop-sidebar.html">Shop With Sidebar</a></li>

									</ul>
								</div>

							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / Elements -->


					<!-- Pages -->
					<li class="dropdown full-width dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Pages <span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Introduction -->
								<div class="col-sm-3 col-xs-12">
									<ul>
										<li class="dropdown-header">Introduction</li>
										<li role="separator" class="divider"></li>
										<li><a href="contact.html">Contact Us</a></li>
										<li><a href="about.html">About Us</a></li>
										<li><a href="404.html">404 Page</a></li>
										<li><a href="coming-soon.html">Coming Soon</a></li>
										<li><a href="faq.html">FAQ</a></li>
									</ul>
								</div>

								<!-- Contact -->
								<div class="col-sm-3 col-xs-12">
									<ul>
										<li class="dropdown-header">Dashboard</li>
										<li role="separator" class="divider"></li>
										<li><a href="dashboard.html">User Interface</a></li>
										
										<li><a href="address.html">Address</a></li>
										
									</ul>
								</div>

								

								<!-- Mega Menu -->
								<div class="col-sm-3 col-xs-12">
									<a href="shopp">
										<img class="img-responsive" src="images/shop/header-img.jpg" alt="menu image" />
									</a>
								</div>
							</div><!-- / .row -->
						</div>
						<!-- / .dropdown-menu -->
					</li><!-- / Pages -->



					<!-- Blog -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Blog <span
								class="tf-ion-ios-arrow-down"></span></a>
						<ul class="dropdown-menu">
							<li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
							<li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
							<li><a href="blog-full-width.html">Blog Full Width</a></li>
							<li><a href="blog-grid.html">Blog 2 Columns</a></li>
							<li><a href="blog-single.html">Blog Single</a></li>
						</ul>
					</li><!-- / Blog -->

					<!-- Shop -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">Account<span
								class="tf-ion-ios-arrow-down"></span></a>
						<ul class="dropdown-menu">
							
							<c:if test="${empty uid}">
							<li><a href="login">Login</a></li>
							<li><a href="register">Register</a></li>
							</c:if>
							
							<c:if test="${ not empty uid}">
							<li><a href="logout">Logout</a></li>
							<li><a href="account">My Account</a></li>
							</c:if>
							
							
							
							<li><a href="forgetp">Forget Password</a></li>
						</ul>
					</li>			
					
<c:if test="${empty uid}">
<a href ="register?c=index">Sigin</a> 
</c:if>
<c:if test="${not empty uid}">
Hello <c:out value="${uid}"> </c:out> 
</c:if>

			<!-- / Blog -->
				</ul><!-- / .nav .navbar-nav -->

			</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>

<div class="hero-slider">
  <div class="slider-item th-fullpage hero-area" style="background-image: url(https://t4.ftcdn.net/jpg/02/36/44/21/360_F_236442190_5FvfsSpJMvgnCMbm8Q9ps8MLlY7mQGZL.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-center">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">ITEMS</p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">Eat Healthy <br> Be Healthy</h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shopp">Shop Now</a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(data:image/jpeg;base64,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);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-left">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">ITEMS</p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">Eat Healthy <br> Be Healthy</h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shopp">Shop Now</a>
        </div>
      </div>
    </div>
  </div>
  <div class="slider-item th-fullpage hero-area" style="background-image: url(https://c4.wallpaperflare.com/wallpaper/454/252/888/food-backgrounds-for-laptop-wallpaper-preview.jpg);">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 text-right">
          <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">ITEMS</p>
          <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">Eat Healthy<br> Be Healthy</h1>
          <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shopp">Shop Now</a>
        </div>
      </div>
    </div>
  </div>
</div>

<section class="product-category section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<h2>Product Category</h2>
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box">
					<a href="#!">
						<img src="https://www.refrigeratedfrozenfood.com/ext/resources/NEW_RD_Website/DefaultImages/default-pasta.jpg?1430942591" alt="" />
						<div class="content">
							<h3> Pasta </h3>
							<p> Snacks </p>
						</div>
					</a>	
				</div>
				<div class="category-box">
					<a href="#!">
						<img src="https://images.indianexpress.com/2021/12/food-trends_-1200.jpg" alt="" />
						<div class="content">
							<h3>Veg Thalli</h3>
							<p>Vegetrain</p>
						</div>
					</a>	
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box category-box-2">
					<a href="#!">
						<img src="https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?cs=srgb&dl=pexels-ash-376464.jpg&fm=jpg" alt="" />
						<div class="content">
							<h3>Pan Cakes</h3>
							<p>Special Pan cakes</p>
						</div>
					</a>	
				</div>
			</div>
		</div>
	</div>
</section>


<section class="products section bg-gray">
	<div class="container">
		<div class="row">
			<div class="title text-center">
				<h2>Trendy Products</h2>
			</div>
		</div>
		<div class="row">
		
			<c:forEach var="pr" items="${prs}">
			<div class="col-md-4">
				<div class="product-item">
					<div class="product-thumb">
						<span class="bage">Sale</span>
						<img class="img-responsive" src="${pr.base64Image}" width="340" height="300"  />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search-strong"></i>
									</span>
								</li>
								<li>
			                        <a href="#!" ><i class="tf-ion-ios-heart"></i></a>
								</li>
								<li>
									<a href="addcart?id=${pr.id}"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>
                      	</div>
					</div>
					<div class="product-content">
						<h4><a href="product-single.html"><c:out value ="${pr.name}"> </c:out> </a></h4>
						<p class="price"><c:out value ="${pr.price}"> </c:out></p>
					</div>
				</div>
			</div>
			</c:forEach>
		<!-- Modal -->
		<div class="modal product-modal fade" id="product-modal">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<i class="tf-ion-close"></i>
			</button>
		  	<div class="modal-dialog " role="document">
		    	<div class="modal-content">
			      	<div class="modal-body">
			        	<div class="row">
			        		<div class="col-md-8 col-sm-6 col-xs-12">
			        			<div class="modal-image">
				        			<img class="img-responsive" src="images/shop/products/modal-product.jpg" alt="product-img" />
			        			</div>
			        		</div>
			        		<div class="col-md-4 col-sm-6 col-xs-12">
			        			<div class="product-short-details">
			        				<h2 class="product-title">GM Pendant, Basalt Grey</h2>
			        				<p class="product-price">$200</p>
			        				<p class="product-short-description">
			        					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
			        				</p>
			        				<a href="cart.jsp" class="btn btn-main">Add To Cart</a>
			        				<a href="product-single.html" class="btn btn-transparent">View Product Details</a>
			        			</div>
			        		</div>
			        	</div>
			        </div>
		    	</div>
		  	</div>
		</div>
		<!-- /.modal -->

		</div>
	</div>
</section>


<!--
Start Call To Action
==================================== -->
<section class="call-to-action bg-gray section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<div class="title">
					<h2>SUBSCRIBE TO NEWSLETTER</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, <br> facilis numquam impedit ut sequi. Minus facilis vitae excepturi sit laboriosam.</p>
				</div>
				<div class="col-lg-6 col-md-offset-3">
				    <div class="input-group subscription-form">
				      <input type="text" class="form-control" placeholder="Enter Your Email Address">
				      <span class="input-group-btn">
				        <button class="btn btn-main" type="button">Subscribe Now!</button>
				      </span>
				    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->

			</div>
		</div> 		<!-- End row -->
	</div>   	<!-- End container -->
</section>   <!-- End section -->

<section class="section instagram-feed">
	<div class="container">
		<div class="row">
			<div class="title">
				<h2>View us on instagram</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<div class="instagram-slider" id="instafeed" data-accessToken="IGQVJYeUk4YWNIY1h4OWZANeS1wRHZARdjJ5QmdueXN2RFR6NF9iYUtfcGp1NmpxZA3RTbnU1MXpDNVBHTzZAMOFlxcGlkVHBKdjhqSnUybERhNWdQSE5hVmtXT013MEhOQVJJRGJBRURn"></div>
			</div>
		</div>
	</div>
</section>


<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li>
						<a href="https://www.facebook.com/themefisher">
							<i class="tf-ion-social-facebook"></i>
						</a>
					</li>
					<li>
						<a href="https://www.instagram.com/themefisher">
							<i class="tf-ion-social-instagram"></i>
						</a>
					</li>
					<li>
						<a href="https://www.twitter.com/themefisher">
							<i class="tf-ion-social-twitter"></i>
						</a>
					</li>
					<li>
						<a href="https://www.pinterest.com/themefisher/">
							<i class="tf-ion-social-pinterest"></i>
						</a>
					</li>
				</ul>
				<ul class="footer-menu text-uppercase">
					<li>
						<a href="contact.html">CONTACT</a>
					</li>
					<li>
						<a href="shopp">SHOP</a>
					</li>
					<li>
						<a href="pricing.html">Pricing</a>
					</li>
					<li>
						<a href="contact.html">PRIVACY POLICY</a>
					</li>
				</ul>
				<p class="copyright-text">Copyright &copy;2021, Designed &amp; Developed by <a href="https://themefisher.com/">Themefisher</a></p>
			</div>
		</div>
	</div>
</footer>

    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    


  </body>
  </html>
