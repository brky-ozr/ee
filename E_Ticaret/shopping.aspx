<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopping.aspx.cs" Inherits="E_Ticaret.shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device=width, initial-scale=1, shrivk-to-fit=no" />
  <%--  <link href="css\mdb.min.css" rel="stylesheet" />--%>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 102px;
        }
    </style>
</head>

    <form id="form1" runat="server">
        <div>
             <table class="table table-bordered">
            <tr>
                <td>telefon</td>
                <td>
                   <asp:Image ID="Image1" runat="server" Width="94px" Height="71px" ImageUrl="~/ımage/tel.jpg"  />
                </td>
                <td>  
                     <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="telefon" Width="123px" OnClick="Button2_Click" />
                </td>
               
            </tr>
            <tr>
               
                <td>bilgisayar</td>
                <td>
                   <asp:Image ID="Image2" runat="server" Width="94px" Height="71px" ImageUrl="~/ımage/bil.png"  />
                </td>
               <td> <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="bilgisayar" Width="116px" OnClick="Button1_Click" />

               </td>
            </tr>

            <tr>
                 <td>mouse</td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="82px" Width="91px" ImageUrl="~/ımage/mau.jpg" />
                </td>
                <td>
                    <asp:Button  CssClass="btn btn-primary" ID="Button3" runat="server" OnClick="Button3_Click" Text="mouse" />

                </td>
            </tr>
                 <tr>
                 <td>SSD</td>
                <td>
                    <asp:Image ID="Image4" runat="server" Height="82px" Width="91px" ImageUrl="~/ımage/ssd.jpg" />
                </td>
                <td>
                    <asp:Button  CssClass="btn btn-primary" ID="Button4" runat="server" OnClick="Button4_Click" Text="ssd" />

                </td>
            </tr>
                 <tr>
                 <td>piranna kulaklık</td>
                <td>
                    <asp:Image ID="Image5" runat="server" Height="82px" Width="91px" ImageUrl="~/ımage/pir.jpg" />
                </td>
                <td>
                    <asp:Button  CssClass="btn btn-primary" ID="Button5" runat="server" OnClick="Button5_Click" Text="piranna kulaklık" />

                </td>
            </tr>
                  <tr>
                 <td class="auto-style1">bluetoth kulaklık</td>
                <td class="auto-style1">
                    <asp:Image ID="Image6" runat="server" Height="82px" Width="91px" ImageUrl="~/ımage/kul.jpg" />
                </td>
                <td class="auto-style1">
                    <asp:Button  CssClass="btn btn-primary" ID="Button6" runat="server" OnClick="Button6_Click" Text="bluetoth kulaklık" />

                </td>
            </tr>
                  <tr>
                 <td>klavye</td>
                <td>
                    <asp:Image ID="Image7" runat="server" Height="82px" Width="91px" ImageUrl="~/ımage/kıl.jpg" />
                </td>
                <td>
                    <asp:Button  CssClass="btn btn-primary" ID="Button7" runat="server" OnClick="Button7_Click" Text="Klavye" />

                </td>
            </tr>
           
        </table>

           <%-- &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

            <asp:Image ID="Image1" runat="server" Width="94px" Height="71px"  />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="satın al" Width="123px" OnClick="Button2_Click" />
            <br />
           <asp:Image ID="Image2" runat="server" Width="94px" Height="71px"  />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Button" Width="116px" OnClick="Button3_Click" />
            <br />
            <asp:Image ID="Image3" runat="server" Height="71px" Width="94px" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Button" Width="120px" OnClick="Button4_Click" />
            <br />
            <asp:Image ID="Image4" runat="server" Width="94px" Height="71px"  />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" Text="Button" Width="119px" OnClick="Button5_Click" />
            <br />
            <asp:Image ID="Image5" runat="server" Width="94px" Height="71px"  />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" Text="Button" Width="117px" OnClick="Button6_Click" />
            <br />
            <asp:Image ID="Image6" runat="server" Width="94px" Height="71px"  />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="sepete ekle" Height="30px" Width="125px" />
            <br />
            <br />
            <br />
            <br />
            <br />--%>
        </div>
    </form>
</body>
</html>
