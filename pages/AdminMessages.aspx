<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminMessages.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminMessages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong class="adminSayfaBasligi"><i class="fas fa-inbox"> </i> Kullanıcı Mesajları</strong>
    <hr />
    <br />
    <asp:Panel ID="messagesGeneralPanel" CssClass="messagesGeneralPanel" runat="server">
        <asp:Panel ID="messagesPanel" CssClass="messagesPanel" runat="server">
            <strong class="adminSayfaBasligi">Mesajlar</strong>
            <hr />
            <br />
            <asp:DataList ID="messagesDataList" CssClass="messagesDataList" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="messageRow" CssClass="messageRow"  runat="server">
                        <asp:Label ID="messageID" CssClass="messageID" runat="server" Text='<%# Eval("Mesajid") %>'></asp:Label>
                        <asp:Label ID="messageName" CssClass="messageName" runat="server" Text='<%# Eval("MesajAd") %>'></asp:Label>
                        <asp:Button ID="messageButton" CssClass="messageButton" OnClick="messageButton_Click" PostBackUrl='<%# "AdminMessages.aspx?Mesajid=" + Eval("Mesajid") %>' runat="server" Text="Oku >" />
                    </asp:Panel>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <hr />
        </asp:Panel>
        <asp:Panel ID="messagesEditPanel" CssClass="messagesEditPanel" runat="server">
            <asp:Label ID="adminSayfaBasligi" CssClass="adminSayfaBasligi" Text="Kullanıcı Bilgileri" runat="server" />
            <hr />
            <br />
            <asp:Label ID="Label1" CssClass="editLabel" runat="server" Text="Adı:"></asp:Label>
            <asp:Label ID="nameLBL" CssClass="msgLabel" runat="server" Text='<%# Eval("MesajAd") %>'></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label5" CssClass="editLabel" runat="server" Text="Mesaj Mail:"></asp:Label>
            <asp:Label ID="mailLBL" CssClass="msgLabel" runat="server" Text='<%# Eval("MesajMail") %>'></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" CssClass="editLabel" runat="server" Text="Mesajı:"></asp:Label>
            <asp:Label ID="messageLBL" CssClass="msgLabel" runat="server" Text='<%# Eval("MesajMesaj") %>'></asp:Label>
            
            <asp:Button ID="messageDelete" CssClass="messageDeleteBTN" OnClick="messageDelete_Click"  runat="server" Text="SİL" />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
