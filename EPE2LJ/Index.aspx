<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EPE2LJ.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página Principal</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            padding-top: 40px;
            text-align: center;
            background-color: #f8f8f8;
        }

        .nombre {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .logo {
            width: 300px;
            height: 200px;
            margin-bottom: 40px;
        }

        .section {
            margin: 30px 0;
        }

        .btn {
            padding: 12px 25px;
            font-size: 16px;
            margin-top: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn-verde {
            background-color: green;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nombre">Jordan Acevedo y Leonardo Arambula</div>

        <img src="Images/ipchile.jpg" alt="Logo IPCHILE" class="logo" />

        <div class="section">
            <h3>Ir a la Página Web 1</h3>
            <asp:Button ID="btnPagina1" runat="server" Text="Calcular EPE + EVA" CssClass="btn btn-verde" OnClick="btnPagina1_Click" />
        </div>

        <div class="section">
            <h3>Ir a la Página Web 2</h3>
            <asp:Button ID="btnPagina2" runat="server" Text="Unión de Nombre y Apellido" CssClass="btn btn-verde" OnClick="btnPagina2_Click" />
        </div>

        <div class="section">
            <h3>Ir a la Página Web 3</h3>
            <asp:Button ID="btnPagina3" runat="server" Text="Formulario de Contacto" CssClass="btn btn-verde" OnClick="btnPagina3_Click" />
        </div>
        <div class="section">
            <h3>Ir a la Página Web 4</h3>
            <asp:Button ID="btnPagina4" runat="server" Text="Calculadora Convencional" CssClass="btn btn-verde" OnClick="btnPagina4_Click" />
        </div>
        <div class="section">
            <h3>Ir a la Página Web 5</h3>
            <asp:Button ID="btnPagina5" runat="server" Text="Ámbito de Variables" CssClass="btn btn-verde" OnClick="btnPagina5_Click" />
        </div>
        <div class="section">
            <h3>Ir a la Página Web 6</h3>
            <asp:Button ID="btnPagina6" runat="server" Text="Calculadora de Suma Vectorial" CssClass="btn btn-verde" OnClick="btnPagina6_Click" />
        </div>
    </form>
</body>
</html>