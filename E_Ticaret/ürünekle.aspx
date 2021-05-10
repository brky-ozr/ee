<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ürünekle.aspx.cs" Inherits="E_Ticaret.ürünekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device=width, initial-scale=1, shrivk-to-fit=no" />
  <%--  <link href="css\mdb.min.css" rel="stylesheet" />--%>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 605px;
        }
        .auto-style2 {
            height: 51px;
        }
        .auto-style4 {
            height: 34px;
        }
    </style>
</head>
<body style="height: 511px">
    <form id="form1" runat="server" class="auto-style1">
        <div>
             <table class="table table-bordered">
            <tr>
               
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="ürün adı"></asp:Label>
                </td>
                <td class="auto-style4">  
                     <asp:TextBox ID="TextBox1" runat="server" Width="223px"></asp:TextBox>
                </td>
               
            </tr>
                 <tr>
                
                <td>
                    <asp:Label ID="Label2" runat="server" Text="ürün fiyat"></asp:Label>
                </td>
                <td>  
                     <asp:TextBox ID="TextBox2" runat="server" Width="223px"></asp:TextBox>
                </td>
               
            </tr>
                 <tr>
                
                <td class="auto-style2">ürün ekle</td>
                     
                     <td class="auto-style2">
                         <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                     </td>
               
               
            </tr>
                 <tr>
                     <td> 

                         <asp:Image ID="Image1" runat="server" Height="126px" Width="137px" />

                     </td>
                
                <td>
                   <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="ürün ekle" />
                </td>
               
            </tr>

            </table>
        </div>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bbbConnectionString %>" SelectCommand="SELECT * FROM [urunler]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="urun_ıd" DataSourceID="SqlDataSource1" Width="614px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="urun_ıd" HeaderText="urun_ıd" ReadOnly="True" SortExpression="urun_ıd" InsertVisible="False" />
                <asp:BoundField DataField="urun_adı" HeaderText="urun_adı" SortExpression="urun_adı" />
                <asp:BoundField DataField="urun_fiyat" HeaderText="urun_fiyat" SortExpression="urun_fiyat" />
                <asp:BoundField DataField="urun_resim" HeaderText="urun_resim" SortExpression="urun_resim" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ShowSelectButton="True" />
                <asp:CommandField ButtonType="Image" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
       
    </form>
</body>
</html>
