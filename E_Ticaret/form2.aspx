<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form2.aspx.cs" Inherits="E_Ticaret.form2" %>

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
            height: 511px;
        }
    </style>
</head>
<body style="height: 511px">
    <form id="form1" runat="server" class="auto-style1">
        <div>
             <table class="table table-bordered">
            <tr>
               
                <td>
                    <asp:Label ID="Label3" runat="server" Text="KULLANICI ADI"></asp:Label>
                </td>
                <td>  
                     <asp:TextBox ID="TextBox1" runat="server" Width="223px"></asp:TextBox>
                </td>
               
            </tr>
                 <tr>
                
                <td>
                    <asp:Label ID="Label2" runat="server" Text="ŞİFRE"></asp:Label>
                </td>
                <td>  
                     <asp:TextBox ID="TextBox2" runat="server" Width="223px"></asp:TextBox>
                </td>
               
            </tr>
                 <tr>
                
                <td>üye ol</td>
                     
                     <td>
                         <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                     </td>
                  
                <td>
                   <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click" Text="üye ol" />
                </td>
               
               
            </tr>

            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bbbConnectionString %>" SelectCommand="SELECT * FROM [kullanicilar]">
        </asp:SqlDataSource>
       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ıd" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="161px" Width="460px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="ıd" HeaderText="ıd" ReadOnly="True" SortExpression="ıd" InsertVisible="False" />
                <asp:BoundField DataField="kullanici" HeaderText="kullanici" SortExpression="kullanici" />
                <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowInsertButton="True" ShowSelectButton="True" />
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
