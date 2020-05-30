<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="pc_toplama_sistemi.pages.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="prodImgPNL" CssClass="prodImgPNL" runat="server">
        <asp:Image ID="prodImg" CssClass="prodImg" ImageUrl='<%# Eval("ParcaResim") %>' runat="server" />
    </asp:Panel>
    <asp:Panel ID="prodInfoPNL" CssClass="prodInfoPNL" runat="server">
        <asp:Label ID="prodInfoBrand" CssClass="prodInfoBrand" runat="server" Text='<%# Eval("ParcaMarka") %>'></asp:Label>
        <br />
        <br />
        <asp:Label ID="prodInfoName" CssClass="prodInfoName" runat="server" Text='<%# Eval("ParcaAd") %>'></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="prodInfoAttribute" CssClass="prodInfoAttribute" runat="server" Text='<%#Eval("ParcaOzellik") %>'></asp:Label>
        <asp:Label ID="prodInfoCategory" CssClass="prodInfoCategory" runat="server" Text='<%#Eval("ParcaKategori") %>'></asp:Label>
    </asp:Panel>
</asp:Content>
