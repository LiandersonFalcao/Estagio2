<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Estagio2.joinus" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Cadastre-se</title>
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
							<li><a href="index.aspx">Home <span class="sr-only">(current)</span></a></li>
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
									<input type="text" class="form-control" placeholder="Search">
									<input type="submit" value="">
								</div>
							</form>

						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
		<!--end header-section-->
	<div class="content">
		 <!-- registration -->
	<div class="main-1">
		<div class="container">
			<div class="register">
		  	  <form runat="server"> 
				 <div class="register-top-grid">
					<h3>FAÇA SEU CADASTRO</h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span><b>Nome Completo<label>*</label></b></span>
						<asp:TextBox ID="txtNome" runat="server" placeholder="Nome Completo"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredNome" runat="server"
                            ControlToValidate="txtNome"
                            ErrorMessage="Por favor, Digite seu Nome."
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
					 </div>

					 <div class="wow fadeInRight">
						<span><b>Login<label>*</label></b></span>
                        <asp:TextBox ID="txtUsuario" runat="server" placeholder="Login"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="RequiredLogin" runat="server"
                            ControlToValidate="txtUsuario"
                            ErrorMessage="Por favor, Digite seu Endereço."
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
					 </div>

					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span><b>EMAIL<label>*</label></b></span>
						 <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Válido"></asp:TextBox>
                         <asp:RequiredFieldValidator
                            ID="RequiredEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Por favor, Digite seu Email."
                            ForeColor="Red"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator 
                            ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate = "txtEmail" 
                            Display ="Dynamic" 
                            ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$"
                            ErrorMessage="Por favor, digite um email válido. Ex: fulano@dominio.com"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>


					 </div>

					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <%--<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>--%>
					   </a>
					 </div>
				     <div class="register-bottom-grid">
				        <div class="wow fadeInLeft" data-wow-delay="0.4s">
						    <span><b>Senha<label>*</label></b></span>
							<asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator
                                ID="RequiredSenha" runat="server"
                                ControlToValidate="txtEmail"
                                ErrorMessage="Por favor, Digite sua senha."
                                ForeColor="Red"
                                Display="Dynamic">
                            </asp:RequiredFieldValidator><br>
                            <div class="alert alert-warning" role="alert">
						        <strong width="50%">Atenção - </strong>Sua senha deve conter no mínimo 6 caracteres.
					        </div>
				        </div>
					    <div class="wow fadeInRight" data-wow-delay="0.4s">
						    <span><b>Confirmar Senha<label>*</label></b></span>
							<asp:TextBox ID="txtConfirmarSenha" runat="server" placeholder="Confirmar Senha" TextMode="Password" Display="Dynamic"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RequiredConfirmarSenha" runat="server"
                                    ControlToValidate="txtConfirmarSenha"
                                    ErrorMessage="Por favor, Confirme sua senha."
                                    ForeColor="Red"
                                    Display="Dynamic">
                                </asp:RequiredFieldValidator><br />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtSenha" 
                                    ControlToValidate="txtConfirmarSenha"
                                    ErrorMessage="As senhas não conferem."
                                    ForeColor="Red"
                                    Display="Dynamic">
                            </asp:CompareValidator>
							</div>
					 </div>
                    <div class="clearfix"> </div>

                    <div class="col-md-6 login-right">
                        <div class="wow fadeInRight" data-wow-delay="0.4s">                                     
                            <asp:Button ID="Button1" runat="server" Text="Cadastrar" CssClass="acount-btn" OnClick="CadastrarInstrutor"></asp:Button>
                            <br />
                        </div>
                        <br />
                        <p>
                            <asp:Label ID="lblMensagem" runat="server" ForeColor="ForestGreen" ></asp:Label>
                        </p>
                    </div>
				</form>
		   </div>
		 </div>
	</div>
<!-- registration -->
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
                };*/

				$().UItoTop({ easingType: 'easeOutQuart' });

				});
			</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
</body>
</html> 
