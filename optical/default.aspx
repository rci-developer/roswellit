<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- HEADER BEGIN -->
	<header id="header">
		<div class="container"> 
			<a href="#" class="logo"> <img src="images/logo2.png" alt="One Optical Logo" width="512" height="178" /> </a
		</div>
	</header>
	<!-- HEADER END --> 
	
	<!-- INTRO BEGIN -->
	<section id="intro" class="intro-block">
		<div class="container">
			<div class="row">
				<div id="slider" class="col-md-8 intro-media">
					<div id="slides" class="bg4">
						<ul class="slides-container" >
							<li><img src="images/2.jpg" alt=""></li>
							<li><img src="images/1.jpg" alt=""></li>
							<li><img src="images/3.jpg" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 col-md-push-8 intro-form">
					<form role="form"  id="login_form" runat="server">
						<h2 class="color3"> Place an Order </h2>
						<div class="form-group">
							<asp:TextBox runat="server" ID="txtUsername" placeholder="Username" CssClass="form-control" />
						</div>
						<div class="form-group">
							<asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Password" CssClass="form-control" />
						</div>
                        <asp:Label runat="server" ID="lblError" CssClass="text text-center text-danger" />
                        <asp:Button id="Submit" Text="Log In" CssClass="btn btn-start" runat="server" />
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- INTRO END --> 
	
	<!-- BENEFITS BEGIN -->
	<section id="benefits" class="benefits-block">
		<div class="container bg1">
			<div class="row">
				<div class="col-md-4"> 
					<i class="icon icon-eyeglasses"></i>
					<h3>Fitted Frames</h3>
					<p>With a fully comprehensive range of sizes and shapes to meet a wide variety of measurements, meaning that just about anyone can find comfort in our selection of frames.</p>
				</div>
				<div class="col-md-4"> 
					<i class="icon icon-eye"></i>
					<h3>Precise Vision</h3>
					<p>Our manufactured lenses are created to the highest standard, honing a patient's vision so that they can see precisely for focused tasks such as reading.</p>
				</div>
				<div class="col-md-4"> 
					<i class="icon icon-telescope"></i>
					<h3>See for Miles</h3>
					<p>With options such as anti-reflective coating, our lenses will allow for clear long-distance vision in conditions with moving light sources, such as driving at night.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- BENEFITS END --> 
	
	
	
	<!-- ABOUT BEGIN -->
	<!--<section id="about" class="text-block">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm12 text">
					<h2 class="title color3">About</h2>
					<p>You may take this text as a copied and pasted one, but it is not so. Appearances are deceitful. For real, this text was created by our copywriters, so you could see in details how would the final product look like.</p>
					<a href="http://multifour.com/" target="_blank" class="btn-arrow border-color2 color3">View more</a></div>
				<div class="col-md-6 hidden-sm hidden-xs image"> </div>
			</div>
		</div>
	</section>-->
	<!-- ABOUT END --> 
	
	
	
	<!-- TESTIMONIALS BEGIN-->
	<!-- <section id="testimonials" class="testimonials-block">
		<div class="container bg1">
		<div id="testimonials-slider" class="owl-carousel">
		
				<div class="item color3">
					<img class="photo" src="images/user1.jpg" alt="author">
					<h3>This is a great product. It reveals an individual approach to each customer. I liked the level of the provided service.</h3>
					<span class="color2">Jessica</span>
				</div>
				
				<div class="item color3">
					<img class="photo" src="images/user2.jpg" alt="author">
					<h3>I always thought that people used to pay much for quality. But these guys changed my opinion. The quality exceeds the price many times.</h3>
					<span class="color2">Tom</span>
				</div>
				
				<div class="item color3">
					<img class="photo" src="images/user3.jpg" alt="author">
					<h3>My colleague recommended them to me. I hesitated for a long time, but than I tried and understood what I had paid off for.</h3>
					<span class="color2">Michael</span>
				</div>
				</div>
			</div>
	</section>-->
	<!-- TESTIMONIALS END -->
	
	
	
	<!-- FAQ BEGIN-->
	<!--<section id="faq" class="faq-block">
		<div class="container">
			<h2 class="title color4">FAQ</h2>
			<div class="row">
				<div class="col-md-6">
						<div class="panel">
							<a class="panel-heading" data-toggle="collapse" href="#question1">Interesting book.</a> 
							<div id="question1" class="panel-collapse collapse in">
								<div class="panel-body">
									We could paste here the part of some article or couple of paragraphs from interesting book (that you have read for sure and may be even liked) or text in unfamiliar language ever. But we did not.
								</div>
							</div>
						</div>
						<div class="panel">
							<a class="panel-heading collapsed" data-toggle="collapse" href="#question2">Appearances are deceitful.</a>
							<div id="question2" class="panel-collapse collapse">
								<div class="panel-body">
									You may take this text as a copied and pasted one, but it is not so. Appearances are deceitful. For real, this text was created by our copywriters, you could see in details how would the final product look like.
								</div>
							</div>
						</div>
						<div class="panel">
							<a class="panel-heading collapsed" data-toggle="collapse" href="#question3">Interesting book.</a>
							<div id="question3" class="panel-collapse collapse">
								<div class="panel-body">
									We could paste here the part of some article or couple of paragraphs from interesting book (that you have read for sure and may be even liked) or text in unfamiliar language ever. But we did not.
								</div>
							</div>
						</div>
				</div>
				<div class="col-md-6">
						<div class="panel">
							<a class="panel-heading" data-toggle="collapse" href="#question4">Appearances are deceitful.</a> 
							<div id="question4" class="panel-collapse collapse in">
								<div class="panel-body">
									You may take this text as a copied and pasted one, but it is not so. Appearances are deceitful. For real, this text was created by our copywriters, you could see in details how would the final product look like.
								</div>
							</div>
						</div>
						<div class="panel">
							<a class="panel-heading collapsed" data-toggle="collapse" href="#question5">Interesting book.</a>
							<div id="question5" class="panel-collapse collapse">
								<div class="panel-body">
									We could paste here the part of some article or couple of paragraphs from interesting book (that you have read for sure and may be even liked) or text in unfamiliar language ever. But we did not.
								</div>
							</div>
						</div>
						<div class="panel">
							<a class="panel-heading collapsed" data-toggle="collapse" href="#question6">Appearances are deceitful.</a>
							<div id="question6" class="panel-collapse collapse">
								<div class="panel-body">
									You may take this text as a copied and pasted one, but it is not so. Appearances are deceitful. For real, this text was created by our copywriters, you could see in details how would the final product look like.
								</div>
							</div>
						</div>
				</div>
			</div>
		</div>
	</section>-->
	<!-- FAQ END-->
	
	
	
	<!-- CONTACT BEGIN-->
	<section id="contact" class="contact-block">
		<div class="container bg3">
			<div class="row">
				<div class="col-md-6 text">
					<h2 class="title">Contact us</h2>
						<ul>
							<li><i class="icon icon-call-in"></i> 0141 643 0639</li>
							<li><i class="icon icon-pointer"></i> 1 Seath Road, Rutherglen, Glasgow, G73 1RW</li>
							<li><i class="icon icon-envelope"></i> info@oneoptical.co.uk</li>
						</ul>
				</div>
				<div class="col-md-6 subscribe">
				</div>
			</div>
		</div>
	</section>
	<!-- CONTACT END-->

</asp:Content>
