<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="pc_toplama_sistemi.pages.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bilgisayar Topla-İletişim</title>
    <link rel="stylesheet" type="text/css" href="../Style.css" />
    <link href="../fontawesome/css/all.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="header" runat="server">
         <asp:ImageButton ID="headerLogo" ImageUrl="../src/logo.png" runat="server" />
         
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
                <asp:Label ID="contactHead" CssClass="aboutUsHead" runat="server" Text="İLETİŞİM"></asp:Label>

                <asp:Panel ID="contactSection" runat="server">
                    <asp:Panel ID="contactNameSurname" CssClass="contactSections" runat="server">
                        <asp:Label ID="contactNameLabel" CssClass="contactLabels" runat="server" Text="ADINIZ-SOYADINIZ:"></asp:Label>
                        <asp:TextBox ID="contactNameTB" CssClass="contactTB" runat="server" TabIndex="1"></asp:TextBox>
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="contactMail" CssClass="contactSections" runat="server">
                        <asp:Label ID="contactMailLabel" CssClass="contactLabels" runat="server" Text="E-POSTA:"></asp:Label>
                        <asp:TextBox ID="contactMailTB" CssClass="contactTB" runat="server" TabIndex="2"></asp:TextBox>
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="contactMessage" CssClass="contactSections" runat="server">
                        <asp:Label ID="contactMessageLabel" CssClass="contactLabels" runat="server" Text="MESAJINIZ:"></asp:Label>
                        <asp:TextBox ID="contactMessageTB" CssClass="contactTB" runat="server" MaxLength="750" TextMode="MultiLine" TabIndex="3"></asp:TextBox>
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="contactButtonSection" runat="server">
                        <asp:Button ID="contactButton"  CssClass="contactTB" runat="server" Text="Button" />
                    </asp:Panel>
                </asp:Panel>
                W
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
