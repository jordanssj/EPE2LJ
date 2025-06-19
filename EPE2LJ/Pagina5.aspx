<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina5.aspx.cs" Inherits="EPE2LJ.Pagina5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ejemplo de Ámbito de Variables</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            padding-top: 40px;
            text-align: center;
            background-color: #fff;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            margin: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        .btn-verde {
            background-color: green;
            color: white;
        }

        .btn-rojo {
            background-color: red;
            color: white;
        }

        .resultado {
            margin-top: 20px;
            font-size: 18px;
        }

        .logo {
    display: block;
    margin: 0 auto 20px auto;
    width: 300px;
    height: 200px;
        }

    </style>
</head>
<body>
    <img src="images/ipchile.jpg" alt="Logo IPCHILE" class="logo" />
    <form id="form1" runat="server">
        <h2>Ejemplo de Ámbito de Variables</h2>
        <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Variables" CssClass="btn btn-verde" OnClick="btnMostrar_Click" />
        <div class="resultado">
            <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
        </div>
        <asp:Button ID="btnVolver" runat="server" Text="Volver al index" CssClass="btn btn-rojo" OnClick="btnVolver_Click" />
    </form>
</body>
</html>
