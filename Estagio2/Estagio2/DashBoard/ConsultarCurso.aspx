<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarCurso.aspx.cs" Inherits="Estagio2.DashBoard.ConsultarCurso" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Consultar Curso</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
                <!--<li class="dropdown">
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
                </li> -->
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
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#ulCursos"><i class="fa fa-fw fa-user"></i>Cursos<i class="fa fa-fw fa-caret-down"></i></a>
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
                        <a id="Alunos" href="javascript:;" data-toggle="collapse" data-target="#ulAlunos"><i class="fa fa-fw fa-edit"></i>Alunos<i class="fa fa-fw fa-caret-down"></i></a>
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
                        <a href="index.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
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
                        <a href="blank-page.aspx"><i class="fa fa-fw fa-file"></i> Blank Page</a>
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
                                <i class="fa fa-file"></i> Meus Cursos
                            </li>
                        </ol>
                               <form runat="server">
                                    <asp:GridView ID="gridCursos" runat="server" CssClass=" table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="white" OnRowCancelingEdit="gridCursos_RowCancelingEdit" OnRowDeleting="gridCursos_RowDeleting" OnRowEditing="gridCursos_RowEditing" OnRowUpdating="gridCursos_RowUpdating">
                                    <Columns>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:Label ID="lblId" runat="server" Text='<%# Bind("IdCurso") %>'></asp:Label>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="lblId" runat="server" Text='<%# Bind("IdCurso") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtNomeCurso" runat="server" Text='<%# Bind("NomeCurso") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="txtNomeCurso" runat="server" Text='<%# Bind("NomeCurso") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDataInicial" runat="server" Text='<%# Bind("DataInicial") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="txtDataInicial" runat="server" Text='<%# Bind("DataInicial") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtDataFinal" runat="server" Text='<%# Bind("DataFinal") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="txtDataFinal" runat="server" Text='<%# Bind("DataFinal") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="txtCargaHoraria" runat="server" Text='<%# Bind("CargaHoraria") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="txtCargaHoraria" runat="server" Text='<%# Bind("CargaHoraria") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <EditItemTemplate>
                                                <asp:Button id="btnSalvar" runat="server" Text="Salvar" CommandName="Update"/>
                                                <asp:Button id="btnCancelar" runat="server" Text="Cancelar" CommandName="Cancel"/>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Button id="btnEditar" runat="server" Text="Editar" CommandName="Edit"/>
                                                <asp:Button id="btnExcluir" runat="server" Text="Excluir" CommandName="Delete"/>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField  runat="server" DataField="idcurso" HeaderText="Id Curso"/>
                                        <asp:BoundField  DataField="NomeCurso" HeaderText="Nome Curso"/>
                                        <asp:BoundField  DataField="DataInicial" HeaderText="Data Inicial"/>
                                        <asp:BoundField  DataField="DataFinal" HeaderText="Data Final"/>
                                        <asp:BoundField  DataField="CargaHoraria" HeaderText="Carga Horária"/>--%>
                                    </Columns>
                                    <%--cursor-pointer - muda a cor da coluna ao passar o mouse--%>
                                    <RowStyle CssClass="cursor-pointer" />
                                    </asp:GridView>
                                    <p>
                                        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                                    </p>
                                </form>
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

</body>

</html>


