<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina6.aspx.cs" Inherits="EPE2LJ.Pagina6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora de Suma y Promedio</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            padding-top: 40px;
            text-align: center;
            background-color: #f8f8f8;
        }

        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        h2 {
            color: #333;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .input-group input[type="text"] {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .btn {
            padding: 12px 25px;
            font-size: 16px;
            margin-top: 10px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin: 5px; /* Added margin for buttons */
        }

        .btn-verde {
            background-color: green;
            color: white;
        }

        .btn-rojo {
            background-color: red;
            color: white;
        }

        .result-label {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
            color: #007bff;
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
            <h2>Calculadora de Suma y Promedio</h2>
            <div class="input-group">
                <label for="txtNumeros">Ingrese los números (separados por comas):</label>
                <asp:TextBox ID="txtNumeros" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular Suma y Promedio" CssClass="btn btn-verde" OnClick="btnCalcular_Click" />
            <asp:Button ID="btnVolverIndex" runat="server" Text="Volver al Inicio" CssClass="btn btn-rojo" OnClick="btnVolverIndex_Click" />
            <div class="result-label">
                <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>