<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="generator_qr.aspx.cs" Inherits="generator_qr.generator_qr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="d-flex align-items-center">
                <div class="p-2 bd-highlight">
                    <h1>QR GENERATOR</h1>
                </div>
                <div class="p-2 bd-highlight">
                    <asp:Button runat="server" type="button" class="btn btn-success" text="Agregar text" OnClick="Unnamed1_Click"/>
                </div>
            </div>
            <div class="d-flex flex-column aling-items-start" id="textbox" style="width: 200px;">
                <asp:TextBox runat="server" class="from-control" placeholder="Ingresar nombre" ID="text1"></asp:TextBox><div class="pt-3"></div>

                <asp:TextBox runat="server" class="from-control" placeholder="Ingresar nombre" ID="text2"></asp:TextBox><div class="pt-3"></div>

                <asp:TextBox runat="server" class="from-control" placeholder="Ingresar nombre" ID="text3"></asp:TextBox><div class="pt-3"></div>

                <asp:TextBox runat="server" class="from-control" placeholder="Ingresar nombre" ID="text4"></asp:TextBox><div class="pt-3"></div>                
            </div>
            <div>
                <asp:Button runat="server" type="button" class="btn btn-success" text="Generar QR" OnClick="Unnamed_Click" />
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
