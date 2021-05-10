<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logi_Page.aspx.cs" Inherits="E_Ticaret.Logi_Page" %>

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
                  <strong><b>LOGİN EKRANI</b></strong>
                </div>
        <table class="table table-bordered">
            <tr>
                <td>Kullanıcı Adı</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
               
                <td>Sifre</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                 <td></td>
                <td>
                    <asp:Button CssClass="btn btn-primary" ID="Button1"  runat="server" Text="giriş " OnClick="Button1_Click" Width="82px" />
                </td>
            </tr>

            <tr>
                 <td></td>
                <td>
                    
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="üye ol" />
                    
            </tr>
           
        </table>
          <div class="alert alert-warning">
                  <strong>UYARI!</strong> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
    </form>
   
   <%-- <form id="form2" runat="server">
   
    <div class="w-100 p-3" class="h-100d-inline-block" style="width: 601px; background-color:#97ffff"
    <form id="form1" runat="server">
        <div style="width: 836px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="USERNAME:"></asp:Label>
            <asp:TextBox ID="Usertext" runat="server" Width="186px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="PASSWORD"></asp:Label>
            <asp:TextBox ID="pastext" runat="server" Width="190px"></asp:TextBox>
            <br />
             <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Beni hatırla</label>
  </div>
          
            <asp:LinkButton ID="LinkButton1" href="form2.aspx" runat="server">Create a new account</asp:LinkButton>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
        </div>
        <p>
            &nbsp;</p>

      

    </form>
    </form>--%>
</body>
</html>
