<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina4.aspx.cs" Inherits="EPE2LJ.Pagina4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora Convencional</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            background-color: #f8f8f8;
            text-align: center;
            padding-top: 50px;
        }

        .container {
            display: inline-block;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 12px;
            background-color: white;
        }

        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            font-size: 16px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            margin: 10px;
            border: none;
            border-radius: 6px;
            background-color: green;
            color: white;
            cursor: pointer;
        }

        .btn-volver {
            background-color: #444;
        }

        .result {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
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
    <form id="form1" runat="server">
        <div class="container">
             <img src="images/ipchile.jpg" alt="Logo IPCHILE" class="logo" />
            <h2>Calculadora Convencional</h2>

            <asp:TextBox ID="txtNumero1" runat="server" Placeholder="Primer número" />
            <br />
            <asp:TextBox ID="txtNumero2" runat="server" Placeholder="Segundo número" />
            <br />

            <asp:DropDownList ID="ddlOperacion" runat="server">
                <asp:ListItem Text="Suma" Value="sumar" />
                <asp:ListItem Text="Resta" Value="restar" />
                <asp:ListItem Text="Multiplicación" Value="multiplicar" />
                <asp:ListItem Text="División" Value="dividir" />
            </asp:DropDownList>
            <br />

            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn" OnClick="btnCalcular_Click" />
            <asp:Button ID="btnVolver" runat="server" Text="Volver a Index" CssClass="btn btn-volver" OnClick="btnVolver_Click" />

            <div class="result">
                <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>