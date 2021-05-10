<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="odeme.aspx.cs" Inherits="E_Ticaret.odeme" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device=width, initial-scale=1, shrivk-to-fit=no" />
  <%--  <link href="css\mdb.min.css" rel="stylesheet" />--%>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="alert alert-success">
                  <strong><b>ÖDEME EKRANI</b></strong>
                </div>
        <table class="table table-bordered">
            <tr>
                <td>kart numarası</td>
                <td>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>kart cvv </td>
                <td>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td> </td>
                <td>
                     <asp:Button CssClass="btn btn-danger" ID="Button1" runat="server" OnClick="Button1_Click" Text="ödemeyi tamamla" />
                </td>
            </tr>
        </div>
       </table>
         <div class="alert alert-danger">
                  <strong>UYARI!</strong> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
    </form>
</body>
</html>
