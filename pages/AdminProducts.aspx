<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminProducts.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminProducts" EnableViewState="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="productsGeneralPanel" CssClass="productsGeneralPanel" runat="server">
        <asp:Panel ID="productsPanel" CssClass="productsPanel" runat="server">
            <strong class="adminSayfaBasligi">ÜRÜNLER</strong>
            <br />
            <asp:DataList ID="productsDataList" CssClass="productsDataList" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="productPanel" CssClass="productPanel"  runat="server">
                        <asp:Label ID="productID" CssClass="productID" runat="server" Text='<%# "ID: "+Eval("Parcaid") %>'></asp:Label><br />
                        <asp:Label ID="productBrand" CssClass="productBrand" runat="server" Text='<%# "Marka: "+Eval("ParcaMarka") %>'></asp:Label><br />
                        <asp:Label ID="productName" CssClass="productName" runat="server" Text='<%# "Model: "+ Eval("ParcaAd") %>'></asp:Label><br />
                        <asp:Button ID="productButton" CssClass="productButton" PostBackUrl='<%# "AdminProductDetail.aspx?Parcaid=" + Eval("Parcaid") %>' runat="server" Text="DETAY" />
                    </asp:Panel>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
