<%@ Page Title="" Language="C#" CodeBehind="admin.aspx.cs" Inherits="E_Ticaret.admin" %>
<!DOCTYPE html>

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
          <div class="alert alert-warning">
                  <strong><b>admin panel</b></strong>
                </div>
        <table class="table table-bordered">
            <tr>
                <td>Yönetici Adı</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
               
                <td>yönetici Sifre</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                 <td></td>
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="Button1"  runat="server" Text="Button" OnClick="Button1_Click" />
                </td>
            </tr>
           
        </table>
          <div class="alert alert-warning">
                  <strong>UYARI!</strong> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
    </form>