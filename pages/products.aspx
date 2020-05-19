<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="pc_toplama_sistemi.pages.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-------------------------PRODUCTS----------------------------------->
                <asp:Panel ID="productsPageProducts" CssClass="productsPageProducts" runat="server">

                    <asp:Panel ID="productsPageProductSection" CssClass="mainPageProductSection" runat="server">
                        <asp:Panel ID="productsPageProduct" CssClass="mainPageProduct" runat="server">
                            <asp:Label ID="productsPageProductName" CssClass="mainPageProductName" runat="server" Text="Label"> ÜRÜN ADI 1</asp:Label>
                            <asp:Image ID="productsPageProductImage" ImageUrl="~/src/urun-foto.png" CssClass="mainPageProductImage" runat="server" />
                            <asp:Button ID="productsPageProductButton" CssClass="mainPageProductButton" runat="server" Text="Detay" />
                        
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="Panel1" CssClass="mainPageProductSection" runat="server">
                        <asp:Panel ID="Panel2" CssClass="mainPageProduct" runat="server">
                            <asp:Label ID="Label1" CssClass="mainPageProductName" runat="server" Text="Label"> ÜRÜN ADI 2</asp:Label>
                            <asp:Image ID="Image1" ImageUrl="~/src/urun-foto.png" CssClass="mainPageProductImage" runat="server" />
                            <asp:Button ID="Button1" CssClass="mainPageProductButton" runat="server" Text="Detay" />
                        
                        </asp:Panel>
                    </asp:Panel>  
                    <asp:Panel ID="Panel3" CssClass="mainPageProductSection" runat="server">
                        <asp:Panel ID="Panel4" CssClass="mainPageProduct" runat="server">
                            <asp:Label ID="Label2" CssClass="mainPageProductName" runat="server" Text="Label"> ÜRÜN ADI 3</asp:Label>
                            <asp:Image ID="Image2" ImageUrl="~/src/urun-foto.png" CssClass="mainPageProductImage" runat="server" />
                            <asp:Button ID="Button2" CssClass="mainPageProductButton" runat="server" Text="Detay" />
                        
                        </asp:Panel>
                    </asp:Panel>  
                    <asp:Panel ID="Panel5" CssClass="mainPageProductSection" runat="server">
                        <asp:Panel ID="Panel6" CssClass="mainPageProduct" runat="server">
                            <asp:Label ID="Label3" CssClass="mainPageProductName" runat="server" Text="Label"> ÜRÜN ADI 4</asp:Label>
                            <asp:Image ID="Image3" ImageUrl="~/src/urun-foto.png" CssClass="mainPageProductImage" runat="server" />
                            <asp:Button ID="Button3" CssClass="mainPageProductButton" runat="server" Text="Detay" />
                        
                        </asp:Panel>
                    </asp:Panel>  

                </asp:Panel>

</asp:Content>

