﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Estagio2.index" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Construction  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            pager: true,
        });
    });

  </script>
  <script src="js/bootstrap.js"></script>
<!--startsmothscrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
     jQuery(document).ready(function ($) {
         $(".scroll").click(function (event) {
             event.preventDefault();
             $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
         });
     });
	</script>
<!--endsmothscrolling-->
<link rel="stylesheet" href="css/swipebox.css">
			<script src="js/jquery.swipebox.min.js"></script> 
			    <script type="text/javascript">
			        jQuery(function ($) {
			            $(".swipebox").swipebox();
			        });
				</script>

</head>
<body>
		<!--start-header-section-->
	<div class="header">
		<div class="container">
			<div class="header-top">
				<div class="logo">
					<h1><a href="index.aspx">João Certificação</a></h1>
				</div>
				<div class="buttons">
				   	<a href="registro.aspx" class="button">Cadastre-se</a>
		            <a href="login.aspx" class="button1">Login</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="header-bottom">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
        <!-- Collect the nav links, forms, and other content for toggling -->
                        <!-- 
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav cl-effect-16">
							<li class="active"><a href="index.aspx">Home <span class="sr-only">(current)</span></a></li>
							<li><a href="about.aspx">About</a></li>
							 <li class="dropdown">
							  <a href="services.aspx" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services<span class="caret"></span></a>
							  <ul class="dropdown-menu">
								 <li><a href="services.aspx">Services1</a></li>
								<li><a href="services.aspx">Services2</a></li>
								<li><a href="services.aspx">Services3</a></li>
							  </ul>
							</li>
								<li><a href="projects.aspx">Projects</a></li>
								<li><a href="codes.aspx">Codes</a></li>
								<li><a href="contact.aspx">Contact</a></li>
							</ul>-->
							<form class="navbar-form navbar-right" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Procurar">
									<input type="submit" value="">
								</div>
								<div class="clearfix"></div>
							</form>

						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				
			</div>
		</div>
	</div>
		<!--end header-section-->
	<div class="header-slide">
		<div class="slider">
			<div class="callbacks_container">
			  <ul class="rslides" id="slider">
					<li>
						<div class="caption-top">
						<div class="caption">
							<h3>Certificados</h3>
							<p>Nós temos a forma mais otimizada e elegante para fazer impressão dos certificados para o seu curso. Preocupe-se apenas em ministrar o curso, o resto a gente cuida.</p>
							<a class="morebtn hvr-sweep-to-right" href="#">Saber mais.</a>
						</div>
						<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="caption-top">
						<div class="caption">
							<h3>Diplomas</h3>
							<p>Conheça uma ferramenta para gerar e imprimir de maneira rápida e prática os diplomas de uma turma inteira. Seguindo alguns passos simples você consegue.</p>
							<a class="morebtn hvr-sweep-to-right" href="#">Saber mais</a>
						</div>
						<div class="clearfix"></div>
						</div>
					</li>
					<li>
						<div class="caption-top">
						<div class="caption">
							<h3>Declarações</h3>
							<p>Faça a customização e impressão de atestados e declarações a partir de modelos criados por você mesmo ou a partir de um modelo.</p>
							<a class="morebtn hvr-sweep-to-right" href="#">Saber mais</a>
						</div>
						<div class="clearfix"></div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<!--MARKETS SERVED -->
        <!--
			<div class="content">
				<div class="marketsserved">
					<div class="container">
						<h2>markets served</h2>
							<div class="market-grids">
								<div class="col-md-4 market-grid">
									<img src="images/m1.jpg" class="img-responsive" alt="">
									<h4>Nunc imperdiet, sapien</h4>
									<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy Fusce susit varius penatibus et magnis</p>
								</div>
								<div class="col-md-4 market-grid">
									<img src="images/m2.jpg" class="img-responsive" alt="">
									<h4>Nunc imperdiet, sapien</h4>
									<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy Fusce susit varius penatibus et magnis</p>
								</div>
								<div class="col-md-4 market-grid">
									<img src="images/m3.jpg" class="img-responsive" alt="">
									<h4>Nunc imperdiet, sapien</h4>
									<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy Fusce susit varius penatibus et magnis</p>
								</div>
								<div class="clearfix"></div>
							</div>
					</div>
				</div>
            
		<!--MARKETS SERVED -->
            <!--
			<div class="feature">
				<div class="container">
					<h3>features</h3>
					<div class="feature-grids">
						<div class="col-md-6 feature-grid">
							<div class="feature-icon">
								<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span>
							</div>
							<div class="feature-text">
								<h4>Nunc imperdiet, sapien</h4>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 feature-grid feat1">
							<div class="feature-icon">
								<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
							</div>
							<div class="feature-text">
								<h4>Nunc imperdiet, sapien</h4>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="feature-grids">
						<div class="col-md-6 feature-grid">
							<div class="feature-icon">
								<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
							</div>
							<div class="feature-text">
								<h4>Nunc imperdiet, sapien</h4>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 feature-grid feat1">
							<div class="feature-icon">
								<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							</div>
							<div class="feature-text">
								<h4>Nunc imperdiet, sapien</h4>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="feature-grids">
						<div class="col-md-6 feature-grid">
							<div class="feature-icon">
								<span class="glyphicon glyphicon-bell" aria-hidden="true"></span>
							</div>
							<div class="feature-text">
								<h4>Nunc imperdiet, sapien</h4>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-6 feature-grid feat1">
							<div class="feature-icon">
								<span class="glyphicon glyphicon-cd" aria-hidden="true"></span>
							</div>
							<div class="feature-text">
								<h4>Nunc imperdiet, sapien</h4>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
			<!--features-->
			<!--newproject-->
                <!--
				<div class="new-project">
					<div class="container">
						<div class="newproject-grids">
							<div class="col-md-6 newproject-grid">
								<h3>Be The First To See Our New Projects</h3>
								<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque.Sorrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
								<p>Lorem ipsum dolor sit amet, coetuer adipiscing elit. Praesent vestibulum molestie lacus. Aenean nonummy varius penatibus et magnis.</p>
							</div>
							<div class="col-md-6 newproject-grid">
								<div class="projects-right">
									<div class="col-md-4 project-right">
										<a class="swipebox" href="images/n-1.jpg" ><img src="images/n1.jpg" class="img-style row6" alt=""></a>
									</div>
									<div class="col-md-4 project-right">
										<a class="swipebox" href="images/n-2.jpg" ><img src="images/n2.jpg" class="img-style row6" alt=""></a>
									</div>
									<div class="col-md-4 project-right">
										<a class="swipebox" href="images/n-3.jpg" ><img src="images/n3.jpg" class="img-style row6" alt=""></a>
									</div>
									<div class="col-md-4 project-right">
										<a class="swipebox" href="images/n-4.jpg" ><img src="images/n4.jpg" class="img-style row6" alt=""></a>
									</div>
									<div class="col-md-4 project-right">
										<a class="swipebox" href="images/n-5.jpg" ><img src="images/n5.jpg" class="img-style row6" alt=""></a>
									</div>
									<div class="col-md-4 project-right">
										<a class="swipebox" href="images/n-6.jpg" ><img src="images/n6.jpg" class="img-style row6" alt=""></a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			
			<!--newproject-->
			<!-- testimonials -->
    <!--
	<div class="testimonials">
		<div class="container">
			<h3>Testimonials</h3>
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="images/te1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p><span>L</span>orem ipsum dolor sit amet, consectetur adipiscing elit, 
											sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
											Ut enim ad minim veniam.</p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="images/te2.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p><span>L</span>orem ipsum dolor sit amet, consectetur adipiscing elit, 
											sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
											Ut enim ad minim veniam.</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						<li>
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="images/te2.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p><span>L</span>orem ipsum dolor sit amet, consectetur adipiscing elit, 
											sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
											Ut enim ad minim veniam.</p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="images/te1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p><span>L</span>orem ipsum dolor sit amet, consectetur adipiscing elit, 
											sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
											Ut enim ad minim veniam.</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
						<li>
							<div class="testimonials-grid">
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="images/te2.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p><span>L</span>orem ipsum dolor sit amet, consectetur adipiscing elit, 
											sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
											Ut enim ad minim veniam.</p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 testimonials-grid-left">
									<div class="testimonials-grid-left1">
										<img src="images/te1.jpg" alt=" " class="img-responsive" />
									</div>
									<div class="testimonials-grid-right1">
										<p><span>L</span>orem ipsum dolor sit amet, consectetur adipiscing elit, 
											sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
											Ut enim ad minim veniam.</p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
				<!--FlexSlider-->
                    <!--
						<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
						<script defer src="js/jquery.flexslider.js"></script>
						<script type="text/javascript">
						    $(window).load(function () {
						        $('.flexslider').flexslider({
						            animation: "slide",
						            start: function (slider) {
						                $('body').removeClass('loading');
						            }
						        });
						    });
					  </script>
				<!--End-slider-script-->
		</div>
	</div>
<!-- //testimonials -->
<!--news-->
    <!--
			<div class="news">
				<div class="container">
					<h3>news</h3>
					<div class="news-grids">
						<div class="col-md-4 new-grid">
							<div class="new-inner">
								<h4><a href="#">VESTIBULUM IACULIS</a></h4>
								<h5>10 / 08 / 2015</h5>
								<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
							</div>
								<img src="images/n7.jpg" class="img-responsive" alt="">	
						</div>
						<div class="col-md-4 new-grid">
							<div class="new-inner">
								<h4><a href="#">VESTIBULUM IACULIS</a></h4>
								<h5>10 / 08 / 2015</h5>
								<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
							</div>
								<img src="images/n8.jpg" class="img-responsive" alt="">
						</div>	
						<div class="col-md-4 new-grid">
							<div class="new-inner">
								<h4><a href="#">VESTIBULUM IACULIS</a></h4>
								<h5>10 / 08 / 2015</h5>
								<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
							</div>
								<img src="images/n9.jpg" class="img-responsive" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<!--news-->
	</div>
	<!--detail-->
		<div class="details-section">
			<div class="container">
				<div class="details-grids">
					<div class="col-md-4 detail-grid">
						<div class="logo1">
						<h1><a href="index.aspx">João Certificação</a></h1>
						</div>
						<p>A melhor solução para impressão de documentos personalizados como declarações, atestados, diplomas, certificados, dentre outros.</p>
					</div>
					<div class="col-md-4 detail-grid">
						<ul>
							<li class="dot"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>Av. Almirante Maximiniano da Fonseca, 1395</li>
							<li class="mobile"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+55 85 8715-2412</li>
							<li class="mes"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="mailto:info@example.com">joaocertificacao@gmail.com</a></li>
							<li class="sign"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span><a href="#">www.joaocertificacao.com</a></li>
						</ul>
					</div>
					<div class="col-md-4 detail-grid">
						<p>Gostaria de receber informações sobre promoções, novas funcionalidades e conteúdo exclusivo direto no seu email?</p>
						<form>
							<h5>Nos mande seu Email</h5>
							<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<input type="submit" value=" ">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	<!--detail-->
	<!--footer-->
		<div class="footer-section">
						<div class="container">
							<div class="footer-top">
								<p> &copy; 2016 João Certificação. Todos os direitos reservados.</p>
									</div>
							<script type="text/javascript">
							    $(document).ready(function () {
							        /*
                                    var defaults = {
                                        containerID: 'toTop', // fading element id
                                        containerHoverID: 'toTopHover', // fading element hover id
                                        scrollSpeed: 1200,
                                        easingType: 'linear' 
                                    };
                                    */

							        $().UItoTop({ easingType: 'easeOutQuart' });

							    });
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
</body>
</html> 
