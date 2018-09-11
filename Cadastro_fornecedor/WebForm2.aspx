<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Cadastro_fornecedor.WebForm2" %>

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
    <form id="form2" runat="server">
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
            <h1 style="text-align:center">Consulta Fornecedor</h1>
            <asp:GridView ID="gv_fornecedor" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-responsive" OnRowCommand="gv_fornecedor_RowCommand">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="Editar" runat="server" CommandName="editar" CommandArgument='<%# Eval("idfornecedor") %>' ToolTip="Editar Curso">
                                <span><i class="fa fa-pencil" aria-hidden="true"></i></span>
                            </asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="Excluir" runat="server" CommandName="excluir" CommandArgument='<%# Eval("idfornecedor") %>' ToolTip="Excluir Curso">
                                <span><i class="fa fa-trash" aria-hidden="true"></i></span>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Código" DataField="idfornecedor" />
                    <asp:BoundField HeaderText="Nome" DataField="nome_forn" />
                    <asp:BoundField HeaderText="CNPJ" DataField="cnpj" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:Button ID="Btn_novo" runat="server" Text="Novo" OnClick="Btn_novo_Click" />
    </form>
</body>
</html>
