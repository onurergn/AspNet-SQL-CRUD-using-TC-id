<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="proje3.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 450px;
        }
        .auto-style2 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: 0.25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table align="center" style="margin-top:30px" width="100%">
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

        <asp:PlaceHolder ID="PlaceHolder1" runat="server">
       
            </asp:PlaceHolder>
        <table align="center" style="margin-top:20px" cellpadding="15px">
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="418px" TextMode="Number" CssClass="auto-style2" placeholder="Silmek istediğiniz kayıta ait TC giriniz"></asp:TextBox>
                    <asp:Button ID="BtnDelete" runat="server" Text="Sil" OnClick="BtnDelete_Click" Width="80px" class="btn btn-danger" style="margin-top:20px" align="right" />
                    &nbsp;&nbsp;
                    </td>
            </tr>
            <td align="center" class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </table>
    </form>
</body>
</html>
