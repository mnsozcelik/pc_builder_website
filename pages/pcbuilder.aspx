<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pcbuilder.aspx.cs" Inherits="pc_toplama_sistemi.pages.pcbuilder" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bilgisayar Topla-Bilgisayar Topla</title>
    <link rel="stylesheet" type="text/css" href="../Style.css" />
    
    <link rel="stylesheet" type="text/css" href="../accordionStyle.css" />
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

                <!-----------PC BUİLDER------------------>
            <div class="collapse-content">
                <div class="collapse" id="cpu">
                    <a class="cpu" href="#cpu">
                        <asp:Image ID="cpuImg" ImageUrl="~/src/cpu.png" runat="server" />
                        İşlemci
                    </a>
                    <div class="content">
                      <div class="inner-content">
                          <asp:Panel ID="cpus" CssClass="cpus" runat="server">
                              <asp:RadioButtonList ID="cpustable" CssClass="productTable" runat="server" AutoPostBack="True">
                                  <asp:ListItem>Item 1</asp:ListItem>
                                  <asp:ListItem>Item 2</asp:ListItem>
                                  <asp:ListItem>Item 3</asp:ListItem>
                                  <asp:ListItem>Item 4</asp:ListItem>
                                  <asp:ListItem>Item 5</asp:ListItem>
                                  <asp:ListItem>Item 6</asp:ListItem>
                              </asp:RadioButtonList>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="mainboard">
                    <a class="mainboard" href="#mainboard">
                        <asp:Image ID="mainboardImg" ImageUrl="~/src/mainboard.png" runat="server" />Anakart</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="mainboards" CssClass="mainboards" runat="server">
                              <asp:RadioButtonList ID="mainboardTable" CssClass="productTable" runat="server" AutoPostBack="True">
                                  <asp:ListItem>Item 1</asp:ListItem>
                                  <asp:ListItem>Item 2</asp:ListItem>
                                  <asp:ListItem>Item 3</asp:ListItem>
                                  <asp:ListItem>Item 4</asp:ListItem>
                                  <asp:ListItem>Item 5</asp:ListItem>
                                  <asp:ListItem>Item 6</asp:ListItem>
                              </asp:RadioButtonList>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="ram">
                    <a class="ram" href="#ram">
                        <asp:Image ID="ramImg" ImageUrl="~/src/ram.png" runat="server" />
                        RAM</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="rams" CssClass="rams" runat="server">
                              <asp:RadioButtonList ID="ramTable" CssClass="productTable" runat="server" AutoPostBack="True">
                                  <asp:ListItem>Item 1</asp:ListItem>
                                  <asp:ListItem>Item 2</asp:ListItem>
                                  <asp:ListItem>Item 3</asp:ListItem>
                                  <asp:ListItem>Item 4</asp:ListItem>
                                  <asp:ListItem>Item 5</asp:ListItem>
                                  <asp:ListItem>Item 6</asp:ListItem>
                              </asp:RadioButtonList>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="gpu">
                    <a class="gpu" href="#gpu">
                        <asp:Image ID="gpuImg" ImageUrl="~/src/gpu.png" runat="server" />
                        Ekran Kartı</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="gpus" CssClass="gpus" runat="server">
                              <asp:RadioButtonList ID="gpuTable" CssClass="productTable" runat="server" AutoPostBack="True">
                                  <asp:ListItem>Item 1</asp:ListItem>
                                  <asp:ListItem>Item 2</asp:ListItem>
                                  <asp:ListItem>Item 3</asp:ListItem>
                                  <asp:ListItem>Item 4</asp:ListItem>
                                  <asp:ListItem>Item 5</asp:ListItem>
                                  <asp:ListItem>Item 6</asp:ListItem>
                              </asp:RadioButtonList>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="powersup">
                    <a class="powersup" href="#powersup">
                        <asp:Image ID="powersupImg" ImageUrl="~/src/powersup.png" runat="server" />
                        Güç Kaynağı</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="powersups" CssClass="powersups" runat="server">
                              <asp:RadioButtonList ID="powersupTable" CssClass="productTable" runat="server" AutoPostBack="True">
                                  <asp:ListItem>Item 1</asp:ListItem>
                                  <asp:ListItem>Item 2</asp:ListItem>
                                  <asp:ListItem>Item 3</asp:ListItem>
                                  <asp:ListItem>Item 4</asp:ListItem>
                                  <asp:ListItem>Item 5</asp:ListItem>
                                  <asp:ListItem>Item 6</asp:ListItem>
                              </asp:RadioButtonList>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="disc">
                    <a class="disc" href="#disc">
                        <asp:Image ID="discImg" ImageUrl="~/src/ssd.png" runat="server" />
                        HDD/SSD</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="discs" CssClass="discs" runat="server">
                              <asp:RadioButtonList ID="discTable" CssClass="productTable" runat="server" AutoPostBack="True">
                                  <asp:ListItem>Item 1</asp:ListItem>
                                  <asp:ListItem>Item 2</asp:ListItem>
                                  <asp:ListItem>Item 3</asp:ListItem>
                                  <asp:ListItem>Item 4</asp:ListItem>
                                  <asp:ListItem>Item 5</asp:ListItem>
                                  <asp:ListItem>Item 6</asp:ListItem>
                              </asp:RadioButtonList>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
            </div>
            <asp:Panel ID="sepetPanel" CssClass="sepetPanel" runat="server">
                <asp:Label ID="sepet" runat="server" Text="SEPET"></asp:Label>
                <hr />
                <asp:Panel ID="sepetProPanel" CssClass="sepetProPanel" runat="server">
                    <asp:Panel ID="sepetPro" CssClass="sepetPro" runat="server">
                        <asp:Label ID="sepetProName" CssClass="sepetProName" runat="server" Text="ÜRÜN ADI"></asp:Label>
                        
                        <asp:Button ID="sepetProCB" CssClass="sepetProCB" runat="server" Text="X" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>


                <!-----------PC BUİLDER END-------------->

            </asp:Panel>
            <div id="footer">
                <h2 style="text-align:center; color:white; font-family:Arial;" >Designed by 
                    <br />
                    <a target="_blank" href="https://www.enesozcelik.com">Mustafa Enes Özçelik</a>
                </h2>
            </div>
        </asp:Panel>
    </form>
</body>
</html>

