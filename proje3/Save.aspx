<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Save.aspx.cs" Inherits="proje3.Save" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
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
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <br />
        <asp:Label ID="Label23" runat="server" Visible="False"></asp:Label>
        <table class="table-hover table-bordered" align="center" bordercolor="black" borderwidth="3" cellpadding="10" style="margin-top: 50px" >

            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Black">Kayıt Gönder</asp:Label>
                </td>
            </tr>
            <tr bgcolor="silver">
                <td>
                    <asp:Label ID="Label1" runat="server" Text="TC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtTC" runat="server" TextMode="Number" CssClass="form-control" placeholder="TC kimlik no"></asp:TextBox>
                </td>
            </tr>
            <tr bgcolor="silver">
                <td>
                    <asp:Label ID="Label2" runat="server" Text="İsim"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtName" runat="server" CssClass="form-control" placeholder="İsim"></asp:TextBox>
                </td>
            </tr>
            <tr bgcolor="silver">
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Soyisim"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSurname" runat="server" CssClass="form-control" placeholder="Soyisim"></asp:TextBox>
                </td>
            </tr>
            <tr bgcolor="silver">
                <td>
                    <asp:Label ID="Label4" runat="server" Text="E-posta" for="inputEmail4"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" CssClass="form-control" placeholder="E-posta"></asp:TextBox>
                </td>
            </tr>
            <tr bgcolor="silver">
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Adres"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtAdress" runat="server" Height="110px" TextMode="MultiLine" Width="275px" CssClass="form-control" placeholder="Sokak, No, Daire"></asp:TextBox>
                </td>
            </tr>
            <tr bgcolor="silver">
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Mesaj"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtMessage" runat="server" Height="110px" TextMode="MultiLine" Width="275px" CssClass="form-control" placeholder="Mesajınız"></asp:TextBox>
                </td>
            </tr>

            <tr bgcolor="silver">
          
                <td align="center" colspan="2">
                    <asp:Button ID="BtnSend" runat="server" Text="Gönder" Width="150px" CssClass="btn btn-outline-secondary" OnClick="BtnSend_Click" />
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
