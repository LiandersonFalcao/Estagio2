<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerarCertificado.aspx.cs" Inherits="Estagio2.DashBoard.GerarCertificado" %>

<!DOCTYPE html>
<html lang="pt">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cadastro de Cursos</title>

    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Construction  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
    <script src="../js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />
    <script src="../js/responsiveslides.min.js"></script>



    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../Content/bootstrap-datepicker.css" rel="stylesheet" />
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <link href="../Content/bootstrap-datepicker3.css" rel="stylesheet" />

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.aspx">João Certificação</a>
                <asp:Label ID="txtIdUsuario" runat="server"></asp:Label>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
               <!-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading">
                                            <strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-user"></i> 
                            <asp:Label ID="NomeUser" runat="server"> </asp:Label>
                        <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="AlterarDados.aspx"><i class="fa fa-fw fa-lock"></i> Alterar</a>
                        </li>
                        <%--<li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>--%>
                        <%--<li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>--%>
                        <li class="divider"></li>
                        <li>
                            <a href="..\index.aspx"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <%--<li>
                        <a href="index.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>--%>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#ulCursos"><i class="fa fa-fw fa-edit"></i>Cursos<i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="ulCursos" class="collapse">
                            <li>
                                <a href="ConsultarCurso.aspx">Meus Cursos</a>
                            </li>
                            <li>
                                <a href="CadastrarCurso.aspx">Cadastrar Novo Curso</a>
                            </li>
                            <li>
                                <a href="EditarCurso.aspx">Editar Curso</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a id="Alunos" href="javascript:;" data-toggle="collapse" data-target="#ulAlunos"><i class="fa fa-fw fa-user"></i>Alunos<i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="ulAlunos" class="collapse">
                            <li>
                                <a href="ConsultarAluno.aspx">Meus Alunos</a>
                            </li>
                            <li>
                                <a href="CadastrarAluno.aspx">Cadastrar Alunos</a>
                            </li>
                            <li>
                                <a href="EditarAluno.aspx">Editar Alunos</a>
                            </li>
                        </ul>
                    </li>
                    <!--<li>
                        <a href="charts.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Charts</a>
                    </li>
                    <li>
                        <a href="tables.aspx"><i class="fa fa-fw fa-table"></i> Tables</a>
                    </li>
                    <li>
                        <a href="forms.aspx"><i class="fa fa-fw fa-edit"></i> Forms</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.aspx"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
                    </li>
                    <li>
                        <a href="bootstrap-grid.aspx"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="CadastrarCurso.aspx">Cadastrar Novo Curso</a><i class="fa fa-fw fa-edit"></i> Cadastrar Novo Curso</a>
                    </li>
                    <li>
                        <a href="index-rtl.aspx"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
                    </li>-->
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <small>Cursos</small>
                        </h1>
                        <ol class="breadcrumb">
                            <%--<li>
                                <i class="fa fa-dashboard"></i>  <a href="index.aspx">Dashboard</a>
                            </li>--%>
                            <li class="active">
                                <i class="fa fa-file"></i> Cadastro de Cursos
                            </li>
                        </ol>
                    </div>
                    <div class="content">
                        <div class="main-1">
                            <div class="container">
                                <div class="register">
                                    <form runat="server">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="register-top-grid">
                                                    <div class="wow fadeInRight" data-wow-delay="0.4s">  
                                                        <span><b>Escolha um Curso<label>*</label></b></span>
                                                        <asp:DropDownList ID="ddlCurso" runat="server" DataTextField="NomeCurso" DataValueField="IdCurso"  CssClass="form-control" Width="100%" AutoPostBack="true" OnSelectedIndexChanged="ddlCurso_SelectedIndexChanged"></asp:DropDownList><br/>
                                                        <span><b>Escolha um Aluno<label>*</label></b></span>
                                                        <asp:DropDownList ID="ddlAluno" runat="server" DataTextField="NomeAluno" DataValueField="IdAluno" CssClass="form-control" Width="150%" AutoPostBack="true"></asp:DropDownList><br/>
                                                    </div>
                                                </div>

                                                <div class="col-md-12 login-right">
                                                    <div class="wow fadeInRight" data-wow-delay="0.4s">                                     
                                                        <asp:Button ID="AtualizarCurso" runat="server" Text="Visualizar"></asp:button>
                                                        <asp:Button ID="ExcluirCurso" runat="server" Text="Imprimir"></asp:button>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div id="ExemploCertificado" class="col-md-5" style="border-style: solid;">
                                                <div class="col-md-12 login-right">
                                                    <div class="wow fadeInRight" data-wow-delay="0.4s">
                                                        <div >
                                                            <h2 align="center">CERTIFICADO</h2>
                                                            <br/><br/>
                                                            <p align="justify" >Conferimos a [ALUNO]<label id="txtAluno" runat="server"></label> o presente certificado pela participação e aprovação no curso [CURSO], 
                                                            ministrado durante o período de [DATA_INICIAL]<label id="txtDataInicial" runat="server"></label> a [DATA_FINAL]<label id="txtDataFinal" runat="server"></label> com duração de 
                                                            [CARGA_HORARIA] <label id="txtCargaHoraria" runat="server"></label> horas/aula.<br /><br /><br />
                                                            Fortaleza, getdate()
                                                            <p align="center"><br /><br />
                                                                ________________________________________________<br />
                                                                Assinatura
                                                            </p>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div> 
                    </div>     
<!------------------------------------------------------------------------------------------------------------------------>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script src="../Scripts/locales/bootstrap-datepicker.pt-BR.min.js"></script>

</body>

</html>



