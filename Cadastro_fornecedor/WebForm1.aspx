<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Cadastro_fornecedor.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
<script type="text/javascript" src="Scripts/bootstrap.js"></script>
<link href="Content/font-awesome.min.css" rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="Content/font-awesome.css" />
<script type="text/javascript" src="Scripts/umd/popper.js"></script>
<script type="text/javascript" src="Scripts/jquery-3.0.0.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <a class="navbar-brand"href="#">Prova</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarToggleDemo02">
            <ul class="navbar-nav mr-auto mt-2 m-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
            </ul>
            <ul class="navbar-nav mr-auto mt-2 m-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="WebForm2.aspx">Cadastro</a>
                </li>
            </ul>
            <ul class="navbar-nav mr-auto mt-2 m-lg-0">
                <li class="nav-item active">
                    <a class="nav-link disabled" href="WebForm3.aspx">Produto</a>
                </li>
            </ul>
        </div>
    </nav>
        <div>
            <label>Nome Fornecedor:<input runat="server" id="in_nome_forn" type="text" style="width: 203px" /><br />
            </label><br />
            <label>CNPJ:<input runat="server" id="in_cnpj" type="text" style="width: 203px" /><br />
            </label><br />
            <label>Nome Produto:<input runat="server" id="in_nome_prod" type="text" style="width: 203px" /><br />
            </label><br />
            <asp:Button ID="btn_enviar" runat="server" Text="Enviar" OnClick="btn_enviar_Click" />
        </div>
    </form>
</body>
</html>
