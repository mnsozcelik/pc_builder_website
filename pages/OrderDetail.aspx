<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="pc_toplama_sistemi.pages.OrderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="orderDetailPanel" CssClass="orderDetailPanel" runat="server">
        <asp:Label ID="orderDetailLBL" CssClass="orderDetailLBL" runat="server" Text="Sipariş Detayı"></asp:Label>
        <hr />
        <asp:DataList ID="userOrderDataList" CssClass="userOrderDataList" runat="server">
            <ItemTemplate>
                <asp:Panel ID="orderPrd" CssClass="orderPrd" runat="server">
                    <asp:Image ID="Image1" CssClass="orderPrdIMG" ImageUrl='<%# Eval("ParcaResim") %>' runat="server" />
                    <a class="orderPrdLBL" href='<%# "ProductDetail.aspx?Parcaid=" + Eval("Parcaid") %>'>
                        <asp:Label ID="Label2" CssClass="orderPrdLBL" runat="server" Text='<%# Eval("ParcaMarka") %>'></asp:Label>
                        <asp:Label ID="Label3" CssClass="orderPrdLBL" runat="server" Text='<%# Eval("ParcaAd") %>'></asp:Label>
                    </a>
                </asp:Panel>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:Panel ID="orderInfoPanel" CssClass="orderInfoPanel" runat="server">
            <asp:Label ID="orderAdressLBL" CssClass="orderAdressLBL" runat="server" Text="Adres:"></asp:Label>
            <asp:TextBox ID="orderAdressTB" CssClass="orderAdressTB" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:Label ID="orderNoteLBL" CssClass="orderNoteLBL" runat="server" Text="Sipariş Notu:"></asp:Label>
            <asp:TextBox ID="orderNoteTB" CssClass="orderNoteTB" runat="server" TextMode="MultiLine"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="orderAdressTB" runat="server" ErrorMessage="Lütfen Adresinizi Giriniz."></asp:RequiredFieldValidator>
        <asp:Button ID="addOrderBTN" CssClass="addOrderBTN" runat="server" OnClick="addOrderBTN_Click" Text="Siparişi Tamamla" />
    </asp:Panel>
    <asp:Label ID="response" CssClass="" runat="server" Text=""></asp:Label>
</asp:Content>
