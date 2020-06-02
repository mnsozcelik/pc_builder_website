<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong class="adminSayfaBasligi"><i class="fas fa-truck-loading"> </i> Siparişler</strong>
    <hr />
    <br />
    <asp:Panel ID="ordersGeneralPanel" CssClass="ordersGeneralPanel" runat="server">
        <asp:Panel ID="ordersPanel" CssClass="ordersPanel" style="background-color:rgba(0, 40, 58, 1);" runat="server">
            <asp:Panel ID="orderRow"  CssClass="orderHeader" style="background-color:rgba(0, 40, 58, 1);" runat="server">
                <asp:Label ID="orderID" CssClass="orderID" style="background-color:rgba(0, 40, 58, 1);" runat="server" Text="ID"></asp:Label>
                <asp:Label ID="orderUserName" CssClass="orderUserName" style="background-color:rgba(0, 40, 58, 1);" runat="server" Text="Kullanıcının Adı"></asp:Label>
                <asp:Label ID="orderName" CssClass="orderName" style="background-color:rgba(0, 40, 58, 1);" runat="server" Text="Sipariş Tarihi"></asp:Label>
            </asp:Panel>
            <asp:DataList ID="ordersDataList" CssClass="ordersDataList" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="orderRow" CssClass="orderRow"  runat="server">
                        <asp:Label ID="orderID" CssClass="orderID" runat="server" Text='<%# Eval("Siparisid") %>'></asp:Label>
                        <asp:Label ID="orderUserName" CssClass="orderUserName" runat="server" Text='<%# Eval("Adi") %>'></asp:Label>
                        <asp:Label ID="orderName" CssClass="orderName" runat="server" Text='<%# Eval("SiparisTarih") %>'></asp:Label>
                        <asp:Button ID="orderButton" CssClass="orderButton" PostBackUrl='<%# "AdminOrderDetail.aspx?Siparisid=" + Eval("Siparisid") %>' runat="server" Text="Siparişe Git >" />
                    </asp:Panel>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
