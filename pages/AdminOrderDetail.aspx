<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminOrderDetail.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminOrderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="orderDetailLBL" CssClass="orderDetailLBL" runat="server" Text="Sipariş Detayı"></asp:Label>
    <hr />
    <asp:PlaceHolder ID="MyPlaceholder" runat="server"></asp:PlaceHolder>
</asp:Content>
