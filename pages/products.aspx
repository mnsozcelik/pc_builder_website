<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="pc_toplama_sistemi.pages.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:Panel ID="productsPageProducts" CssClass="productsPageProducts" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="64px">
            <asp:Panel ID="Panel2" runat="server" Font-Bold="False">
                <asp:Label ID="Label1" runat="server" Text="Filtre: " Font-Bold="True" Font-Names="Arial"></asp:Label>
                <asp:RadioButton ID="categorycpuRB" CssClass="categoryRadioButton" runat="server" Text="İşlemciler" />
                <asp:RadioButton ID="categorymainboardRB" CssClass="categoryRadioButton" runat="server" Text="Anakartlar" />
                <asp:RadioButton ID="categoryramRB" CssClass="categoryRadioButton" runat="server" Text="RAM'ler" />
                <asp:RadioButton ID="categorygpuRB" CssClass="categoryRadioButton" runat="server" Text="Ekran Kartları" />
                <asp:RadioButton ID="categorypsuRB" CssClass="categoryRadioButton" runat="server" Text="Güç Kaynakları" />
                <asp:RadioButton ID="categorydiscRB" CssClass="categoryRadioButton" runat="server" Text="Depolama Araçları" />
            </asp:Panel>
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

