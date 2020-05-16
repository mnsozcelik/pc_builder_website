<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pc_toplama_sistemi.pages._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bilgisayar Topla-AnaSayfa</title>
    <link rel="stylesheet" type="text/css" href="../Style.css" />
    <link href="../fontawesome/css/all.css" rel="stylesheet" />
    <script src="../components/sliderengine/jquery.js"></script>
    <script src="../components/sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="../components/sliderengine/amazingslider-1.css"/>
    <script src="../components/sliderengine/initslider-1.js"></script>
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
                <div id="footer">
                    <h2>Designed by <br />
                        <a target="_blank" href="https://www.enesozcelik.com">Mustafa Enes Özçelik</a>
                    </h2>
                </div>
            </div>
            
            <asp:Panel ID="page" runat="server">
                
                <asp:Panel ID="slider" runat="server">
                    <div class="amazingslider-wrapper" id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:1100px;margin:0px auto 0px;">
                        <div class="amazingslider" id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
                            <ul class="amazingslider-slides" style="display:none;">
                                <li><img src="../components/images/MSI%20Oyuncu%20Bilgisayarlar%C4%B1.jpg" alt="MSI Oyuncu Bilgisayarları"  title="MSI Oyuncu Bilgisayarları" />
                                </li>
                                <li><img src="../components/images/Ki%C5%9Fiye%20%C3%96zel%20Toplanan%20Sistemler.jpg" alt="Kişiye Özel Toplanan Sistemler"  title="Kişiye Özel Toplanan Sistemler" />
                                </li>
                                <li><img src="../components/images/MSI%20Oyun%20Ekipmanlar%C4%B1.jpg" alt="MSI Oyun Ekipmanları"  title="MSI Oyun Ekipmanları" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </asp:Panel>
                
                <!-------------------------PRODUCTS----------------------------------->
                <asp:Panel ID="products" CssClass="mainPageProducts" runat="server">

                    <asp:Panel ID="productSection" CssClass="mainPageProductSection" runat="server">
                        <asp:Panel ID="product" CssClass="mainPageProduct" runat="server">
                            <asp:Label ID="productName" CssClass="mainPageProductName" runat="server" Text="Label">ÜRÜN ADI 1</asp:Label>
                            <asp:Image ID="productImage" ImageUrl="~/src/urun-foto.png" CssClass="mainPageProductImage" runat="server" />
                            <asp:Button ID="productButton" CssClass="mainPageProductButton" runat="server" Text="Detay" />
                        </asp:Panel>
                    </asp:Panel>
                    
                </asp:Panel>
                <!-------------------------PRODUCTS END----------------------------------->
                
            </asp:Panel>
            
            
        </asp:Panel>
    </form>
</body>
</html>
