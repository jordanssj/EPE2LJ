<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="EPE2LJ.Pagina1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cálculadora de Notas (EVA+EPE)</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        h1, h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .section {
            margin-bottom: 30px;
            padding: 20px;
            border: 1px solid #eee;
            border-radius: 6px;
            background-color: #fdfdfd;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        .button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            width: 100%;
        }
        .button:hover {
            background-color: #218838;
        }
        .back-button {
            background-color: #dc3545;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
            cursor: pointer;
            text-align: center;
            display: inline-block;
            text-decoration: none;
        }
        .back-button:hover {
            background-color: #c82333;
        }
        .result-label {
            display: block;
            margin-top: 20px;
            padding: 10px;
            background-color: #e9ecef;
            border: 1px solid #ced4da;
            border-radius: 4px;
            font-size: 18px;
            text-align: center;
            color: #333;
        }
        .note-input {
            margin-bottom: 10px;
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
    <div class="container">
        <img src="images/ipchile.jpg" alt="Logo IPCHILE" class="logo" />
        <h1>Jordan Acevedo y Leonardo Arambula</h1>
        <h2>Cálculadora de Notas (EVA+EPE)</h2>
        <form id="form2" runat="server">
            <div class="section">
                <p>Ingresa tus 6 notas (del 1 al 7). Recuerda que bajo 4 se reprueba.</p>
                <div class="form-group note-input">
                    <label for="txtEva1">EVA 1 (7%):</label>
                    <asp:TextBox ID="txtEva1" runat="server"></asp:TextBox>
                </div>
                <div class="form-group note-input">
                    <label for="txtEpe1">EPE 1 (7%):</label>
                    <asp:TextBox ID="txtEpe1" runat="server"></asp:TextBox>
                </div>
                <div class="form-group note-input">
                    <label for="txtEpe2">EPE 2 (14%):</label>
                    <asp:TextBox ID="txtEpe2" runat="server"></asp:TextBox>
                </div>
                <div class="form-group note-input">
                    <label for="txtEva2">EVA 2 (7%):</label>
                    <asp:TextBox ID="txtEva2" runat="server"></asp:TextBox>
                </div>
                <div class="form-group note-input">
                    <label for="txtEva3">EVA 3 (14%):</label>
                    <asp:TextBox ID="txtEva3" runat="server"></asp:TextBox>
                </div>
                <div class="form-group note-input">
                    <label for="txtEpe3">EPE 3 (21%):</label>
                    <asp:TextBox ID="txtEpe3" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnCalcularPromedio" runat="server" Text="Calcular Promedio" OnClick="btnCalcularPromedio_Click" CssClass="button" />
                <asp:Label ID="lblPromedioResultado" runat="server" Text="Promedio: " CssClass="result-label"></asp:Label>
            </div>
        </form>
        <a href="index.aspx" class="back-button">Retorno al Index</a>
    </div>
</body>
</html>