<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="proje3.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
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
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        <table align="center" style="margin-top20px" cellpadding="15px" width="70%" >
            <tr>
                <td align="center">
                    
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="auto-style1" placeholder="TC no giriniz"></asp:TextBox>
                    <br />
                    <asp:Button ID="BtnShow" runat="server" Text="Bul" class="btn btn-info" OnClick="BtnShow_Click" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
                    <table width="70%" runat="server" id="StResult" visible="false" cellpadding="10" style="border:2px">
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label3" runat="server" Text="TC" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>

                            <td align="left">
                                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="true" Font-Italic="true" Font-Names="Balthazar" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label5" runat="server" Text="İsim" Font-Bold="true" Font-Size="Large"></asp:Label>                           
                            </td>
                            <td align="left">
                                <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="true" Font-Italic="true" Font-Names="Balthazar" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td align="left">
                                <asp:Label ID="Label7" runat="server" Text="Soyisim" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>

                            <td align="left">
                                <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="true" Font-Italic="true" Font-Names="Balthazar" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label9" runat="server" Text="Mail" Font-Bold="true" Font-Size="Large"></asp:Label>                           
                            </td>
                            <td align="left">
                                <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="true" Font-Italic="true" Font-Names="Balthazar" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td align="left">
                                <asp:Label ID="Label11" runat="server" Text="Adres" Font-Bold="true" Font-Size="Large"></asp:Label>
                            </td>

                            <td align="left">
                                <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="true" Font-Italic="true" Font-Names="Balthazar" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <asp:Label ID="Label13" runat="server" Text="Mesaj" Font-Bold="true" Font-Size="Large"></asp:Label>                           
                            </td>
                            <td align="left">
                                <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="true" Font-Italic="true" Font-Names="Balthazar" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                            
                    </table>

                </td>
            </tr>
        <//table>


    </form>
</body>
</html>
