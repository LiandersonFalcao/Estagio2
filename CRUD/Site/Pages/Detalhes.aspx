<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Site.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalhes</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-2.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="span10 offset1">
            <div class="row">
                <h3 class="well">Detalhes de Clientes</h3>
                <br/><br/>
                Informe o Código do Cliente:
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Width="5%"></asp:TextBox><br/>
                <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" CssClass="btn btn-info" OnClick="btnPesquisarCliente"/>
                <a href="/Default.aspx" class="btn btn-default">Voltar</a>
                <br/><br/>
                <p>
                    <asp:Label ID="lblMensagem" runat="server"></asp:Label>
                </p>

                <asp:Panel ID="pnlDados" runat="server">
                <br/><br/>
                Nome do Cliente:<br/>
                <asp:TextBox ID="txtNome" placeholder="Nome" runat="server" CssClass="form-control" Width="45%"></asp:TextBox><br/>
                Endereço do Cliente:<br/>
                <asp:TextBox ID="txtEndereco" placeholder="Endereço" runat="server" CssClass="form-control" Width="45%"></asp:TextBox><br/>
                E-mail do Cliente:<br/>
                <asp:TextBox ID="txtEmail" placeholder="E-mail" runat="server" CssClass="form-control" Width="45%"></asp:TextBox><br/>
                
                <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-danger" OnClick="btnExcluirCliente"/>
                <asp:Button ID="btnAtualizar" runat="server" Text="Atualizar" CssClass="btn btn-warning" OnClick="btnAtualizarCliente"/>
                
                </asp:Panel>

            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
