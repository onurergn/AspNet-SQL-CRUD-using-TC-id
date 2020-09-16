<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="proje3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    </form>
</body>
</html>
