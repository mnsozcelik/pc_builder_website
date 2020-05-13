<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="pc_toplama_sistemi.pages.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bilgisayar Topla-Hakkımızda</title>
    <link rel="stylesheet" type="text/css" href="../Style.css" />
    <link href="../fontawesome/css/all.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="header" runat="server">
         <asp:ImageButton ID="headerLogo" ImageUrl="../src/logo.png" runat="server" />
         <asp:TextBox ID="searchInput" runat="server" CssClass="searchInput"> ARA..</asp:TextBox>
         
         <div id="profile-menu">
            <ul>
                <li>
                    <asp:HyperLink ID="profileButton" NavigateUrl="#" runat="server">
                        <strong>|Kullanıcı Adı <i style="float:right;" class="fas fa-user-alt"></i></strong>
                    </asp:HyperLink>
                </li>
                <ul>
                    <li>
                        <asp:HyperLink ID="cikisButton" NavigateUrl="#" runat="server">
                            <strong>|Çıkış <i style="float:right;" class="fas fa-sign-out-alt"></i></strong>
                        </asp:HyperLink>
                    </li>
                </ul>
            </ul>
         </div>
        </asp:Panel>
        <asp:Panel ID="body" runat="server">
            <div id="sidebarMenu">
                <div id="menu">
                    <ul>
                        <li>
                            <asp:HyperLink ID="mainPageButton" NavigateUrl="../pages/default.aspx" runat="server">
                                <strong><i class="fas fa-home"> </i> AnaSayfa</strong>
                            </asp:HyperLink>

                        </li>
                        <li>
                            <asp:HyperLink ID="productsPageButton" NavigateUrl="~/pages/products.aspx" runat="server">
                                <strong><i class="fas fa-memory"> </i> Ürünler</strong>
                            </asp:HyperLink>

                        </li>
                        <li>
                            <asp:HyperLink ID="pcBuilderPageButton" NavigateUrl="~/pages/pcbuilder.aspx" runat="server">
                                <strong><i class="fas fa-boxes"> </i> PC-Topla</strong>
                            </asp:HyperLink>

                        </li>
                        <li>
                            <asp:HyperLink ID="aboutUsPageButton" NavigateUrl="~/pages/aboutus.aspx" runat="server">
                                <strong><i class="fas fa-info-circle"> </i> Hakkımızda</strong>
                            </asp:HyperLink>

                        </li>
                        <li>
                            <asp:HyperLink ID="contactPageButton" NavigateUrl="~/pages/contact.aspx" runat="server">
                                <strong><i class="fas fa-id-badge"> </i> İletişim</strong>
                            </asp:HyperLink>
                        </li>
                    </ul>
                </div>
            </div>
            <asp:Panel ID="page" runat="server">
                hakkımızda
            </asp:Panel>
            <div id="footer">
                <h2 style="text-align:center; color:white; font-family:Arial;" >Designed by 
                    <a target="_blank" href="https://www.enesozcelik.com">Mustafa Enes Özçelik</a>
                </h2>
            </div>
        </asp:Panel>
    </form>
</body>
</html>

