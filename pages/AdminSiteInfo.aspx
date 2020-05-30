<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminSiteInfo.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminSiteInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong class="adminSayfaBasligi"><i class="fas fa-info-circle"> </i> Site Hakkında</strong>
    <hr />
    <br />
    <asp:TextBox ID="siteInfoTB" CssClass="siteInfoTB" Width="800px" Height="400px" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="siteInfoUpdateBTN" CssClass="siteInfoUpdateBTN" OnClick="siteInfoUpdateBTN_Click" runat="server" Text="Güncelle" />
</asp:Content>
