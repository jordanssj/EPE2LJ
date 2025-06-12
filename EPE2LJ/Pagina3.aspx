<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina3.aspx.cs" Inherits="EPE2LJ.Pagina3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página 3 - Contacto</title>
    <style>
        body {
            font-family: Calibri, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }

        .container {
            width: 450px;
            margin: auto;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h1 {
            font-weight: bold;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        input[type="text"],
        input[type="email"],
        textarea,
        .aspNet-TextBox {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
        }

        .logo {
            text-align: center;
            margin: 20px 0;
        }

        .logo img {
            width: 300px;
            height: 200px;
        }

        .btn {
            background-color: green;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            font-size: 15px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .btn-red {
            background-color: red;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            font-size: 15px;
            border-radius: 5px;
            display: block;
            width: 100%;
            margin-top: 20px;
        }

        .resultado {
            margin-top: 20px;
            font-weight: bold;
            background-color: #dff0d8;
            padding: 10px;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <form id="form3" runat="server">
        <div class="container">
            <h1>Página 3 - Jordan Acevedo y Leonardo Arambula</h1>

            <div class="logo">
                <img src="images/ipchile.jpg" alt="Logo IPCHILE" />
            </div>

            <h3>Formulario de Contacto</h3>

            <div class="form-group">
                <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" CssClass="aspNet-TextBox" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido" CssClass="aspNet-TextBox" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtCelular" runat="server" placeholder="Celular" CssClass="aspNet-TextBox" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email" CssClass="aspNet-TextBox" />
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" placeholder="Descripción del problema" CssClass="aspNet-TextBox" />
            </div>

            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="btn" OnClick="btnEnviar_Click" />

            <div class="resultado">
                <asp:Label ID="lblResultado" runat="server" />
            </div>

            <asp:Button ID="btnVolver" runat="server" Text="Volver a Index" CssClass="btn-red" PostBackUrl="~/Index.aspx" />
        </div>
    </form>
</body>
</html>
