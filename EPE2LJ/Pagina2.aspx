<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="EPE2LJ.Pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pagina 2 - Jordan Acevedo y Leonardo Arambula</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f6f6;
            padding: 20px;
        }
        .container {
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            width: 350px;
            margin: auto;
        }
        h1 {
            font-weight: bold;
        }
        .logo {
            margin: 20px 0;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        input[type="text"] {
            width: 100%;
            padding: 6px;
            font-size: 14px;
        }
        .btn-green {
            background-color: green;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            margin-right: 10px;
        }
        .btn-red {
            background-color: red;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }
        .resultado {
            font-weight: bold;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
            <h1>Pagina 2 - Jordan Acevedo y Leonardo Arambula</h1>
            <div class="logo">
                <img src="images/ipchile.jpg" width="300" alt="Logo IPCHILE" />
            </div>

            <h3>Ingrese su nombre completo</h3>

            <div class="form-group">
                <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido" />
            </div>

            <asp:Button ID="btnConcatenar" runat="server" Text="Concatenar" CssClass="btn-green" OnClick="btnConcatenar_Click" />
            <asp:Button ID="btnVolver" runat="server" Text="Volver a Index" CssClass="btn-red" PostBackUrl="~/Index.aspx" />

            <div class="resultado">
                <asp:Label ID="lblResultado" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
