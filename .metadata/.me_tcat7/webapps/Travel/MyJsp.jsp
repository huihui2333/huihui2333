<%@ page language="java" import="java.util.*,user.*,java.sql.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zxx">
<!-- Head -->
<head>

<title>Home</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //Meta-Tags -->

<!-- Custom-Stylesheet-Links -->
<!-- Bootstrap-CSS -->
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"
	media="all">
<!-- Index-Page-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<!-- Owl-Carousel-CSS -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css"
	media="all">
<!-- Date-Picker-CSS -->
<link rel="stylesheet" href="css/jquery-ui.css" type="text/css"
	media="all">
<!-- Chocolat-CSS -->
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="all">
<!-- //Custom-Stylesheet-Links -->

<!-- Fonts -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	type="text/css" media="all">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,500"
	type="text/css" media="all">
<!-- //Fonts -->

<!-- Font-Awesome-File-Links -->
<!-- CSS -->
<link rel="stylesheet" href="css/font-awesome.css" type="text/css"
	media="all">
<!-- TTF -->
<link rel="stylesheet" href="fonts/fontawesome-webfont.ttf"
	type="text/css" media="all">
<!-- //Font-Awesome-File-Links -->

<!-- Supportive-JavaScript -->
<script src="js/modernizr.js"></script>
<!-- //Supportive-JavaScript -->

</head>
<!-- //Head -->



<!-- Body -->
<body>



	<!-- Header -->
	<div class="agileheader" id="agileitshome">

		<!-- Navigation -->
		<div class="w3lsnavigation">
			<nav class="navbar navbar-default agilehovereffect wthreehovereffect">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div class="w3_navigation_pos">
						<a href="index.html"> <img src="images/logo.png" alt="Odyssey">
							<h1>ODYSSEY</h1>
						</a>
						<div>
							<form action="loginServlet" method="get">
								<table align="center">
									<tr>
										<td>用户名</td>
										<td><input type="text" name="username"><br>
										<span></span></td>
									</tr>
									<tr>
										<td>密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
										<td><input type="password" name="password"><br>
										<span></span></td>
									</tr>
								</table>

								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="submit" name="button1" value="登录">
							</form>
							<form action="regServlet" method="get">
								<table align="center">
									<tr>
										<td>用户名</td>
										<td><input type="text" name="username"><br>
										<span></span></td>
									</tr>
									<tr>
										<td>密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
										<td><input type="password" name="password"><br>
										<span></span></td>
									</tr>
								</table>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="submit" name="button2" value="注册"> <br> <br>
							</form>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<form action="ResServlet" method="get">
								<input type="submit" name="button3" value="游客身份登入"> <br>
							</form>
						</div>
					</div>
				</div>



				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav class="link-effect-2" id="link-effect-2">
						<ul class="nav navbar-nav">
							<li><a class="scroll" href="#w3lsaboutaits"><span>ABOUT</span></a></li>
							<li><a class="scroll" href="#wthreelocationsaits"><span>LOCATIONS</span></a></li>
							<li><a class="scroll" href="#agilepackagesw3l"><span>PACKAGES</span></a></li>
							<li><a class="scroll" href="#w3portfolioaits"><span>PORTFOLIO</span></a></li>
							<li><a class="scroll" href="#wthreereviews"><span>REVIEWS</span></a></li>
							<li><a class="scroll" href="#agilecontactw3ls"><span>CONTACT</span></a></li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
		<!-- //Navigation -->

		<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li class="first-slide w3ls"><img src="images/slide-1.jpg"
					alt="Odyssey">
					<div class="wthreexperience">
						<div id="animated-example" class="animated fadeIn"></div>
						<button onclick="myFunction()">Reload page</button>
					</div></li>
				<li class="second-slide aits"><img src="images/slide-2.jpg"
					alt="Odyssey">
					<div class="wthreexperience">
						<div id="animated-example1" class="animated fadeIn"></div>
						<button onclick="myFunction()">Reload page</button>
					</div></li>
				<li class="third-slide w3-agileits"><img
					src="images/slide-3.jpg" alt="Odyssey">
					<div class="wthreexperience">
						<div id="animated-example2" class="animated fadeIn"></div>
						<button onclick="myFunction()">Reload page</button>
					</div></li>
				<li class="fourth-slide agileinfo"><img
					src="images/slide-4.jpg" alt="Odyssey">
					<div class="wthreexperience">
						<div id="animated-example3" class="animated fadeIn"></div>
						<button onclick="myFunction()">Reload page</button>
					</div></li>
				<li class="fifth-slide wthree"><img src="images/slide-5.jpg"
					alt="Odyssey">
					<div class="wthreexperience">
						<div id="animated-example4" class="animated fadeIn"></div>
						<button onclick="myFunction()">Reload page</button>
					</div></li>
			</ul>
		</div>
		<!-- //Slider -->

	</div>
	<!-- //Header -->



	<!-- About -->
	<div class="w3lsaboutaits" id="w3lsaboutaits">
		<div class="container">

			<h2>About Our Agency</h2>
			<h4>"There is no one who loves pain itself, who seeks after it
				and wants to have it, simply because it is pain..."</h4>
			<div class="w3lsaboutaits-grids">
				<div class="col-md-6 w3lsaboutaits-grid w3lsaboutaits-grid-1">
					<h3>The Lorem Ipsum</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>
					<button class="btn btn-primary" data-toggle="modal"
						data-target="#myModal1">
						READ MORE<i class="fa fa-arrow-right" aria-hidden="true"></i>
					</button>
				</div>
				<div class="col-md-6 w3lsaboutaits-grid w3lsaboutaits-grid-2">
					<h3>
						Dolores Amet Elit <span><i class="fa fa-angle-right"
							aria-hidden="true"></i></span>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>
					<h3>
						Ad Minim Veniam <span><i class="fa fa-angle-right"
							aria-hidden="true"></i></span>
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat.</p>
					<h3>
						Ea Commodo Consequat <span><i class="fa fa-angle-right"
							aria-hidden="true"></i></span>
					</h3>
					<p class="bottom-p">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
						exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat.</p>
				</div>
				<div class="clearfix"></div>
			</div>

			<!-- Tooltip-Content -->
			<div class="tooltip-content">
				<div class="modal fade details-modal" id="myModal1" tabindex="-1"
					role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">The Lorem Ipsum Dolores</h4>
							</div>
							<div class="modal-body">
								<img src="images/about.jpg" alt="Odyssey">
								<p>Contrary to popular belief, Lorem Ipsum is not simply
									random text. It has roots in a piece of classical Latin
									literature from 45 BC, making it over 2000 years old. Richard
									McClintock, a Latin professor at Hampden-Sydney College in
									Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
									elit, sed do eiusmod tempor incididunt ut labore et dolore
									magna aliqua.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //Tooltip-Content -->

		</div>
	</div>
	<!-- //About -->



	<!-- Details -->
	<div class="agileinfodetails" id="agileinfodetails">
		<div class="container">

			<div class="col-md-12 agileinfodetails-grid agileinfodetails-heading">
				<h3>Experience the Freedom</h3>
			</div>
			<div
				class="col-md-12 agileinfodetails-grid agileinfodetails-paragraph">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat.</p>
			</div>
			<div class="clearfix"></div>

		</div>
	</div>
	<!-- //Details -->



	<!-- Locations -->
	<div class="wthreelocationsaits" id="wthreelocationsaits">
		<div class="container">
			<h3>Locations</h3>
			<section class="grid3d vertical" id="grid3d">
				<div class="grid-wrap">
					<div class="grid">
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-1.jpg" alt="Odyssey">
							<figcaption>
								<h4>SWITZERLAND</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-2.jpg" alt="Odyssey">
							<figcaption>
								<h4>ITALY</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-3.jpg" alt="Odyssey">
							<figcaption>
								<h4>GERMANY</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-4.jpg" alt="Odyssey">
							<figcaption>
								<h4>FRANCE</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-5.jpg" alt="Odyssey">
							<figcaption>
								<h4>MONACO</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-6.jpg" alt="Odyssey">
							<figcaption>
								<h4>SPAIN</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-7.jpg" alt="Odyssey">
							<figcaption>
								<h4>NORWAY</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-8.jpg" alt="Odyssey">
							<figcaption>
								<h4>NETHERLANDS</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-9.jpg" alt="Odyssey">
							<figcaption>
								<h4>SWEDEN</h4>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="content">
					<div>
						<div class="dummy-img dummy-img-1">
							<img src="images/location-1.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">SWITZERLAND</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-2">
							<img src="images/location-2.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">ITALY</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-3">
							<img src="images/location-3.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">GERMANY</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-4">
							<img src="images/location-4.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">FRANCE</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-5">
							<img src="images/location-5.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">MONACO</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-6">
							<img src="images/location-6.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">SPAIN</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-7">
							<img src="images/location-7.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">NORWAY</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-8">
							<img src="images/location-8.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">NETHERLANDS</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<div>
						<div class="dummy-img dummy-img-9">
							<img src="images/location-9.jpg" alt="Odyssey">
						</div>
						<p class="dummy-text aitsheadingw3">SWEDEN</p>
						<p class="dummy-text">Contrary to popular belief, Lorem Ipsum
							is not simply random text. It has roots in a piece of classical
							Latin literature from 45 BC, making it over 2000 years old.
							Richard McClintock, a Latin professor at Hampden-Sydney College
							in Virginia. Lorem ipsum dolor sit amet, consectetur adipisicing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua.</p>
					</div>
					<span class="loading"></span> <span class="icon close-content"><i
						class="fa fa-times" aria-hidden="true"></i></span>
				</div>
			</section>
		</div>
	</div>
	<!-- //Locations -->
	<div class="tlinks">
		Collect from <a href="http://www.cssmoban.com/" title="模板之家">模板之家</a>
	</div>


	<!-- Packages -->
	<div class="agilepackagesw3l" id="agilepackagesw3l">
		<div class="container">

			<h3>Packages</h3>

			<div id="owl-demo" class="owl-carousel text-center">
				<div class="item w3-agile">
					<div class="agilegrid agilegrid1">
						<img src="images/package-1.jpg" alt="Odyssey">
						<h4>THE PERFECT ROAD TRIP</h4>
						<h5>€1300</h5>
						<ul>
							<li>5 Countries</li>
							<li>9 Days, 8 Nights</li>
							<li>Choose your Vehicle:</li>
							<li>Car, SUV, Bus, RV</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid2">
						<img src="images/package-2.jpg" alt="Odyssey">
						<h4>INTO THE WOODS</h4>
						<h5>€900</h5>
						<ul>
							<li>2 Countries</li>
							<li>5 Days, 4 Nights</li>
							<li>Backpacking & Rock Climbing</li>
							<li>Lakeside Campsites</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid3">
						<img src="images/package-3.jpg" alt="Odyssey">
						<h4>SKY IS THE LIMIT</h4>
						<h5>€1000</h5>
						<ul>
							<li>2 Countries</li>
							<li>4 Days, 4 Nights</li>
							<li>Trekking & Skiing</li>
							<li>Summit Campsites</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid4">
						<img src="images/package-4.jpg" alt="Odyssey">
						<h4>THE FLOATING FORTRESS</h4>
						<h5>€2500</h5>
						<ul>
							<li>9 Countries</li>
							<li>28 Days, 29 Nights</li>
							<li>Casinos, Musical Nights</li>
							<li>Beach Resorts</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid5">
						<img src="images/package-5.jpg" alt="Odyssey">
						<h4>LIFE'S A BEACH</h4>
						<h5>€2900</h5>
						<ul>
							<li>9 Countries</li>
							<li>18 Days, 17 Nights</li>
							<li>Surfing, Jet ski, Hang Gliding</li>
							<li>Beach Resorts</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid6">
						<img src="images/package-6.jpg" alt="Odyssey">
						<h4>URBAN SAFARI</h4>
						<h5>€3500</h5>
						<ul>
							<li>7 Countries</li>
							<li>25 Days, 26 Nights</li>
							<li>Cities, Alps Countryside</li>
							<li>5 Star Hotels</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid7">
						<img src="images/package-7.jpg" alt="Odyssey">
						<h4>JUNGLE SAFARI</h4>
						<h5>€1500</h5>
						<ul>
							<li>2 Countries</li>
							<li>5 Days, 6 Nights</li>
							<li>Wildlife Sanctuaries</li>
							<li>Lakeside Campsites</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid8">
						<img src="images/package-8.jpg" alt="Odyssey">
						<h4>OFFROAD EXPEDITION</h4>
						<h5>€2500</h5>
						<ul>
							<li>3 Countries</li>
							<li>9 Days, 9 Nights</li>
							<li>Alps Mountain Pass, Forests</li>
							<li>Lakeside Campsites</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
						</div>
					</div>
				</div>
			</div>

			<!-- Popup-Box -->
			<div id="popup">
				<div id="small-dialog" class="mfp-hide agileinfo">
					<div class="pop_up">
						<div class="payment-online-form-left w3-agileits">
							<form action="#" method="post">
								<h4>
									<span class="shipping agileits-w3layouts"></span>Customer
									Details
								</h4>
								<ul>
									<li><input class="text-box-dark agileits-w3layouts"
										type="text" value="First Name" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'First Name';}"></li>
									<li><input class="text-box-dark agileits" type="text"
										value="Last Name" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Last Name';}"></li>
								</ul>
								<ul>
									<li><input class="text-box-dark agile" type="text"
										value="Email" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email';}"></li>
									<li><input class="text-box-dark" type="text" value="Phone"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Phone';}"></li>
								</ul>
								<div class="clear"></div>
								<h4 class="paymenthead">
									<span class="payment"></span>Payment Details
								</h4>
								<div class="clear"></div>
								<ul class="payment-type">
									<li><span class="col_checkbox agileits-w3layouts">
											<input id="3" class="css-checkbox1" type="checkbox">
											<label for="3" class="css-label1"></label> <a
											class="visa agileits-w3layouts" href="#"></a>
									</span></li>
									<li><span class="col_checkbox"> <input id="4"
											class="css-checkbox2" type="checkbox"> <label for="4"
											class="css-label2"></label> <a class="paypal w3-agileits"
											href="#"></a>
									</span></li>
								</ul>
								<ul>
									<li><input class="text-box-dark" type="text"
										value="Card Number" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Card Number';}"></li>
									<li><input class="text-box-dark w3layouts" type="text"
										value="Name on card" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Name on card';}"></li>
								</ul>
								<ul>
									<li><input class="text-box-light hasDatepicker"
										type="text" id="datepicker" value="Expiration Date"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Expiration Date';}"><em
										class="pay-date"> </em></li>
									<li><input class="text-box-dark agileits-w3layouts"
										type="text" value="CVV" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'CVV';}"></li>
								</ul>
								<ul class="payment-sendbtns">
									<li><input type="reset" value="Reset"></li>
									<li><input type="submit" name="Process Order"
										value="Process Order"></li>
								</ul>
								<div class="clear agile"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<button title="Close (Esc)" type="button"
				class="mfp-close w3-agileits">×</button>
			<!-- //Popup-Box -->

		</div>
	</div>
	<!-- //Packages -->



	<!-- Portfolio -->
	<div class="w3portfolioaits" id="w3portfolioaits">
		<h3>Portfolio</h3>

		<div class="w3portfolioaits-items">
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-1">
				<a class="example-image-link" href="images/portfolio-1.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-1.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-2">
				<a class="example-image-link" href="images/portfolio-2.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-2.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-3">
				<a class="example-image-link" href="images/portfolio-3.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-3.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-4">
				<a class="example-image-link" href="images/portfolio-4.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-4.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-5">
				<a class="example-image-link" href="images/portfolio-5.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-5.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-6">
				<a class="example-image-link" href="images/portfolio-6.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-6.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-7">
				<a class="example-image-link" href="images/portfolio-7.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-7.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-8">
				<a class="example-image-link" href="images/portfolio-8.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-8.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="images/portfolio-9.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-9.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="images/portfolio-10.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-10.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="images/portfolio-11.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-11.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="images/portfolio-12.jpg"
					data-lightbox="example-set" data-title="">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-12.jpg" alt="Game Robo">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>

	</div>
	<!-- //Portfolio -->



	<!-- Reviews -->
	<div class="wthreereviews" id="wthreereviews">
		<main>
			<div class="cd-image-block">
				<ul class="cd-images-list">
					<li class="is-selected agiletravelerw3ls agiletravelerw3ls1">
						<a href="#0">
							<h3>I've had the time of my life!</h3> <img
							src="images/opinion-1.jpg" alt="Odyssey">
							<h4>Jane Foster</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="wthreeratingaits">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
								</ul>
							</div>
					</a>
					</li>

					<li class="agiletravelerw3ls agiletravelerw3ls2"><a href="#0">
							<h3>I don't want to go home...</h3> <img
							src="images/opinion-2.jpg" alt="Odyssey">
							<h4>Darth Vader</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="wthreeratingaits">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
								</ul>
							</div>
					</a></li>

					<li class="agiletravelerw3ls agiletravelerw3ls3"><a href="#0">
							<h3>Most amazing moments!</h3> <img src="images/opinion-3.jpg"
							alt="Odyssey">
							<h4>James Kirk</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="wthreeratingaits">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
					</a></li>

					<li class="agiletravelerw3ls agiletravelerw3ls4"><a href="#0">
							<h3>Unforgettable experience!</h3> <img
							src="images/opinion-4.jpg" alt="Odyssey">
							<h4>Ellen Ripley</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<div class="wthreeratingaits">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
								</ul>
							</div>
					</a></li>
					<div class="clearfix"></div>
				</ul>
			</div>

			<div class="cd-content-block">
				<ul>
					<li class="is-selected wthreeli wthreeli-1"></li>

					<li class="wthreeli wthreeli-2"></li>

					<li class="wthreeli wthreeli-3"></li>

					<li class="wthreeli wthreeli-4"></li>
				</ul>

				<button class="cd-close">Close</button>
			</div>

			<ul class="block-navigation">
				<li><button class="cd-prev inactive">&larr; Prev</button></li>
				<li><button class="cd-next">Next &rarr;</button></li>
			</ul>
		</main>
	</div>
	<!-- //Reviews -->



	<!-- Contact -->
	<div class="agilecontactw3ls" id="agilecontactw3ls">
		<div class="container">
			<h3>Contact</h3>
			<form action="#" method="post">
				<div class="col-md-6 agilecontactw3ls-grid agilecontactw3ls-grid-1">
					<input type="text" Name="First Name" placeholder="FIRST NAME"
						required=""> <input type="text" Name="Last Name"
						placeholder="LAST NAME" required=""> <input type="email"
						Name="Email" placeholder="EMAIL" required="">
				</div>
				<div class="col-md-6 agilecontactw3ls-grid agilecontactw3ls-grid-2">
					<textarea name="Message" placeholder="MESSAGE" required></textarea>
					<div class="send-button">
						<input type="submit" value="SEND">
					</div>
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
	</div>
	<!-- //Contact -->



	<!-- Map -->
	<div id="map"></div>
	<!-- //Map -->



	<!-- Social-Icons -->
	<div class="agilesocialwthree">
		<ul class="social-icons">
			<li><a href="#" class="facebook w3ls"
				title="Go to Our Facebook Page"><i
					class="fa w3ls fa-facebook-square" aria-hidden="true"></i></a></li>
			<li><a href="#" class="twitter w3l"
				title="Go to Our Twitter Account"><i
					class="fa w3l fa-twitter-square" aria-hidden="true"></i></a></li>
			<li><a href="#" class="googleplus w3"
				title="Go to Our Google Plus Account"><i
					class="fa w3 fa-google-plus-square" aria-hidden="true"></i></a></li>
			<li><a href="#" class="instagram wthree"
				title="Go to Our Instagram Account"><i
					class="fa wthree fa-instagram" aria-hidden="true"></i></a></li>
			<li><a href="#" class="youtube w3layouts"
				title="Go to Our Youtube Channel"><i
					class="fa w3layouts fa-youtube-square" aria-hidden="true"></i></a></li>
			<li><a href="#" class="pinterest w3layouts"
				title="Go to Our Pinterest Account"><i
					class="fa w3layouts fa-pinterest-square" aria-hidden="true"></i></a></li>
			<li><a href="#" class="tumblr w3layouts"
				title="Go to Our Tumblr Account"><i class="fa fa-tumblr-square"
					aria-hidden="true"></i></a></li>
		</ul>
	</div>
	<!-- //Social-Icons -->



	<!-- Footer -->
	<div class="agilefooterwthree" id="agilefooterwthree">
		<div class="container">

			<div class="agilefooterwthree-grids">
				<div class="col-md-4 agilefooterwthree-grid agilefooterwthree-grid1">
					<h4>LINKS</h4>
					<ul>
						<li><a class="scroll" href="#agileitshome">HOME</a></li>
						<li><a class="scroll" href="#w3lsaboutaits"><span>ABOUT</span></a></li>
						<li><a class="scroll" href="#wthreelocationsaits"><span>LOCATIONS</span></a></li>
						<li><a class="scroll" href="#agilepackagesw3l"><span>PACKAGES</span></a></li>
						<li><a class="scroll" href="#w3portfolioaits"><span>PORTFOLIO</span></a></li>
						<li><a class="scroll" href="#wthreereviews"><span>REVIEWS</span></a></li>
					</ul>
				</div>
				<div class="col-md-4 agilefooterwthree-grid agilefooterwthree-grid2">
					<h4>ADDRESS</h4>
					<address>
						<ul>
							<li>40019 S.p.A</li>
							<li>Parma Via Modena</li>
							<li>Sant'Agata Bolognese</li>
							<li>BO, Italy</li>
							<li>+1 (734) 123-4567</li>
							<li><a class="mail" href="mailto:mail@example.com">info@example.com</a></li>
						</ul>
					</address>
				</div>
				<div
					class="col-md-4 agilefooterwthree-grid agilefooterwthree-grid3 newsletter">
					<h4>SUBSCRIBE</h4>
					<p>Subscribe to our Newsletter</p>
					<form action="#" method="post">
						<input class="email aitsw3ls" type="email"
							placeholder="Your Email" required=""> <input
							type="submit" class="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>

	</div>
	<!-- //Footer -->



	<!-- Copyright -->
	<div class="copyright">
		<p>
			Copyright &copy; 2017.Company name All rights reserved.More Templates
			<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
			- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
				target="_blank">网页模板</a>
		</p>
	</div>
	<!-- //Copyright -->



	<!-- Custom-JavaScript-File-Links -->

	<!-- Default-JavaScript -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- Bootstrap-JavaScript -->
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<!-- Responsive-Slider-JavaScript -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				nav : true,
				speed : 2000,
				namespace : "callbacks",
				pager : true,
			});
		});
	</script>
	<!-- //Responsive-Slider-JavaScript -->


	<!-- Review-Slider-JavaScript -->
	<script src="js/main.js"></script>
	<!-- //Review-Slider-JavaScript -->

	<!-- Tour-Locations-JavaScript -->
	<script src="js/classie.js"></script>
	<script src="js/helper.js"></script>
	<script src="js/grid3d.js"></script>
	<script>
		new grid3D(document.getElementById('grid3d'));
	</script>
	<!-- //Tour-Locations-JavaScript -->

	<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$(
									"#owl-demo, #owl-demo1, #owl-demo2, #owl-demo3, #owl-demo4")
									.owlCarousel({
										autoPlay : 4000,
										items : 3,
										itemsDesktop : [ 568, 2 ],
										itemsDesktopSmall : [ 414, 1 ]
									});
						});
	</script>
	<!-- //Owl-Carousel-JavaScript -->

	<!-- Pricing-Popup-Box-JavaScript -->
	<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});
		});
	</script>
	<!-- //Pricing-Popup-Box-JavaScript -->

	<!-- Date-Picker-JavaScript -->
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1,#datepicker2").datepicker();
		});
	</script>
	<!-- //Date-Picker-JavaScript -->

	<!-- Portfolio-Popup-Box-JavaScript -->
	<script src="js/jquery.chocolat.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.w3portfolioaits-item a').Chocolat();
		});
	</script>
	<!-- //Portfolio-Popup-Box-JavaScript -->


	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->

	<!-- Slide-To-Top JavaScript -->
	<script type="text/javascript">
		$(document).ready(function() {
			var defaults = {
				containerID : 'toTop',
				containerHoverID : 'toTopHover',
				scrollSpeed : 100,
				easingType : 'linear',
			};
		});
	</script>
	<a href="#agileitshome" id="toTop" class="stuoyal3w scroll stieliga"
		style="display: block;"> <span id="toTopHover" style="opacity: 0;">
	</span></a>
	<!-- //Slide-To-Top JavaScript -->

	<!-- //Custom-JavaScript-File-Links -->

</body>
<!-- //Body -->



</html>
