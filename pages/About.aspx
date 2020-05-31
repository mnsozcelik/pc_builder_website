<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pc_toplama_sistemi.pages.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="aboutUsSection" CssClass="aboutUsSection" runat="server">
        <asp:Label ID="aboutUsHead" CssClass="aboutUsHead" runat="server" Text="HAKKIMIZDA"></asp:Label>
        <br />
        <br />
        <asp:Label ID="aboutUsText" CssClass="aboutUsText" runat="server" Text="hakkımızda"></asp:Label>
    </asp:Panel>
</asp:Content>
