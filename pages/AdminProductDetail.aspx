<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminProductDetail.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <asp:Panel ID="prdPanel" CssClass="prdPanel" runat="server">
                <asp:Panel ID="prdHead" CssClass="prdHead" runat="server">
                    <asp:Label ID="prdHBrand" CssClass="prdHBrand" runat="server" Text="MARKA"></asp:Label>
                    <asp:Label ID="prdHName" CssClass="prdHName" runat="server" Text="İSİM"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="prdDetails" CssClass="prdDetails" runat="server">
                    <table>
                        <tr>
                            <td><asp:Label ID="prdBrand" CssClass="prdLabels" runat="server" Text="Ürün Markası:"></asp:Label></td>
                            <td><asp:TextBox ID="prdBrandTB" CssClass="prdDetail" runat="server" Text='<%#Eval("ParcaMarka") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="prdName" CssClass="prdLabels" runat="server" Text="Ürün Adı:"></asp:Label></td>
                            <td><asp:TextBox ID="prdNameTB" CssClass="prdDetail" runat="server" Text='<%#Eval("ParcaAd") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="prdCategory" CssClass="prdLabels" runat="server" Text="Ürün Kategorisi:"></asp:Label></td>
                            <td>
                                <asp:DropDownList ID="prdCategoryList" CssClass="prdDetail prdCategoryDDL"  runat="server">
                                    <asp:ListItem Value="1"> İşlemci </asp:ListItem>
                                    <asp:ListItem Value="2"> Anakart </asp:ListItem>
                                    <asp:ListItem Value="3"> RAM </asp:ListItem>
                                    <asp:ListItem Value="4"> Ekran Kartı </asp:ListItem>
                                    <asp:ListItem Value="5"> Güç Kaynağı </asp:ListItem>
                                    <asp:ListItem Value="6"> Depolama </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="prgImage" CssClass="prdLabels" runat="server" Text="Ürün Resim Bağlantısı:"></asp:Label></td>
                            <td><asp:TextBox ID="prgImageTB" CssClass="prdDetail" runat="server" Text='<%#Eval("ParcaResim") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="prdAttribute" CssClass="prdLabels" runat="server" Text="Ürün Özellikleri:"></asp:Label></td>
                            <td><asp:TextBox ID="prdAttributeTB" CssClass="prdDetail" runat="server" Text='<%#Eval("ParcaOzellik") %>'></asp:TextBox></td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Button ID="prdDetailBackBTN" CssClass="prdDetailBackBTN prdBTN" PostBackUrl="~/pages/AdminProducts.aspx" runat="server" Text="GERİ" />
                <asp:Button ID="prdDetailSaveBTN" CssClass="prdDetailSaveBTN prdBTN" OnClick="prdDetailSaveBTN_Click" runat="server" Text="KAYDET" />
                <asp:Button ID="prdDetailDeleteBTN" CssClass="prdDetailDeleteBTN prdBTN" OnClick="prdDetailDeleteBTN_Click" runat="server" Text="SİL" />
            </asp:Panel>

</asp:Content>
