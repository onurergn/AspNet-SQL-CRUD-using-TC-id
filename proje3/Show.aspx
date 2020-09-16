<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="proje3.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Göster</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin-top:30px" width="100%" align="center">
                <tr bgcolor="black">
                    <td align="center">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="LightGray" NavigateUrl="~/Save.aspx">Kayıt Gönder</asp:HyperLink>
                    </td>
                       
                    <td align="center">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" ForeColor="LightGray" NavigateUrl="~/Delete.aspx">Kayıt Sil</asp:HyperLink>
                    </td>

                    <td align="center">
                        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Large" ForeColor="LightGray" NavigateUrl="~/Search.aspx">Kayıt Ara</asp:HyperLink>
                    </td>

                    <td align="center">
                        <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large" ForeColor="LightGray" NavigateUrl="~/Show.aspx">Kayıt Göster</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>


        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tc" DataSourceID="SqlDataSource1" Height="32px" Width="821px" class="table-hover table-bordered" align="center" bordercolor="black" borderwidth="3" cellpadding="10" style="margin-top: 50px">
            <Columns>
                <asp:BoundField DataField="tc" HeaderText="tc" ReadOnly="True" SortExpression="tc" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="adress" HeaderText="adress" SortExpression="adress" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContactConnectionString %>" SelectCommand="SELECT * FROM [contactperson]"></asp:SqlDataSource>


    </form>
</body>
</html>
