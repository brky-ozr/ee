<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="E_Ticaret.sepet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Background image -->
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 430px">
    <form id="form1" runat="server">
  <asp:Panel ID="Panel1" runat="server">
    <table class="table">
    <thead>
      <tr>
        <th>Ürün Resim</th>
        <th>Ürün Adı</th>
        <th>Fiyat</th>
        <th>İşlem</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><asp:Image ID="Image1" runat="server" Height="142px" ImageUrl= style="width: 124px" Width="143px" /></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2" runat="server" Width="187px"></asp:TextBox></td>
          <td><asp:Button ID="Button1" runat="server" Text="ÖDEME" OnClick="Button1_Click" Height="27px" Width="186px" /></td>
      </tr>
     
    </tbody>
  </table>
   </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <div class="alert alert-danger">
              <strong>Error!</strong> Ürün Bulunamadi..
            </div>
        </asp:Panel>
    </form>
</body>
</html>
