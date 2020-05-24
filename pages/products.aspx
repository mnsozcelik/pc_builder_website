<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="pc_toplama_sistemi.pages.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="productsPageProducts" CssClass="productsPageProducts" runat="server">
        <asp:Panel ID="categoryContainer" CssClass="categoryContainer" runat="server">
            
            <asp:Button ID="categoryAll" OnClick="categoryAll_Click" CssClass="category_item" runat="server" Text="HEPSİ"/>
            <asp:Button ID="categoryCpu" OnClick="categoryCpu_Click" CssClass="category_item" runat="server" Text="İŞLEMCİ"/>
            <asp:Button ID="categoryMainboard" OnClick="categoryMainboard_Click" CssClass="category_item" runat="server" Text="ANAKART"/>
            <asp:Button ID="categoryRam" OnClick="categoryRam_Click" CssClass="category_item" runat="server" Text="RAM"/>
            <asp:Button ID="categoryGpu" OnClick="categoryGpu_Click" CssClass="category_item" runat="server" Text="EKRAN KARTI"/>
            <asp:Button ID="categorypsu" OnClick="categorypsu_Click" CssClass="category_item" runat="server" Text="GÜÇ KAYNAĞI"/>
            <asp:Button ID="categorydisc" OnClick="categorydisc_Click" CssClass="category_item" runat="server" Text="DEPOLAMA ARAÇLARI"/>
        </asp:Panel>
            <!-------------------------PRODUCTS----------------------------------->
        <asp:Panel ID="products" CssClass="productPageProducts" runat="server">
            <asp:DataList ID="productPageDataList" CssClass="productPageDataList" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="productSection" CssClass="productPageProductSection" runat="server">
                    <asp:Panel ID="product" CssClass="productPageProduct" runat="server">
                        <asp:Label ID="productBrand" CssClass="productPageProductBrand" runat="server" Text='<%# Eval("ParcaMarka") %>'></asp:Label>
                        <br />
                        <asp:Label ID="productName" CssClass="productPageProductName" runat="server" Text='<%# Eval("ParcaAd") %>'></asp:Label>
                        <br />
                        <asp:Image ID="productImage" ImageUrl='<%# Eval("ParcaResim") %>' CssClass="productPageProductImage" runat="server" />
                        <br />
                        <asp:Label ID="productCategory" CssClass="productPageProductCategory" runat="server" Text='<%# Eval("KategoriAdi") %>'></asp:Label>
                        <asp:Button ID="productButton" CssClass="productPageProductButton" runat="server" Text="Detay" />
                    </asp:Panel>
                    </asp:Panel>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
            <!-------------------------PRODUCTS END----------------------------------->
    </asp:Panel>

</asp:Content>

