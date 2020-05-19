﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pc_toplama_sistemi.pages.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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


</asp:Content>

                