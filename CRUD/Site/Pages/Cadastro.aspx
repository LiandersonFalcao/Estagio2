<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Scripts/jquery-2.2.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="span10 offset1">
            <div class="row">
                <h3 class="well">Cadastro de Clientes</h3>
            </div>
            <br/>
            Nome do Cliente: <br/>
            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome Completo" Width="45%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredNome" runat="server"
                ControlToValidate="txtNome"
                ErrorMessage="Por favor, Digite seu Nome."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br/><br/>
            Endereço do Cliente: <br/>
            <asp:TextBox ID="txtEndereco" runat="server" placeholder="Endereço Residencial" Width="50%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredEndereco" runat="server"
                ControlToValidate="txtEndereco"
                ErrorMessage="Por favor, Digite seu Endereço."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            
            <br/><br/>
            Email do Cliente: <br/>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email Válido" Width="25%" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator
                ID="RequiredEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Por favor, Digite seu Email."
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            
            <br/><br/>

            <p>
                <asp:Label ID="lblMensagem" runat="server"></asp:Label>

            </p>

            <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="btnCadastrarCliente"/>
            <a href="/Default.aspx" class="btn btn-default">Voltar</a>
        </div>
    </div>
    </form>
</body>
</html>
