<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pc_toplama_sistemi.pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="contactHead" CssClass="aboutUsHead" runat="server" Text="İLETİŞİM"></asp:Label>

    <asp:Panel ID="contactSection" CssClass="contactSection" runat="server">
        <asp:Panel ID="contactNameSurname" CssClass="contactSections" runat="server">
            <asp:Label ID="contactNameLabel" CssClass="contactLabels" runat="server" Text="ADINIZ-SOYADINIZ:"></asp:Label>
            <asp:TextBox ID="contactNameTB" CssClass="contactTB" runat="server" TabIndex="1"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:Panel ID="contactMail" CssClass="contactSections" runat="server">
            <asp:Label ID="contactMailLabel" CssClass="contactLabels" runat="server" Text="E-POSTA:"></asp:Label>
            <asp:TextBox ID="contactMailTB" CssClass="contactTB" runat="server" TabIndex="2"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:Panel ID="contactMessage" CssClass="contactSections" runat="server">
            <asp:Label ID="contactMessageLabel" CssClass="contactLabels" runat="server" Text="MESAJINIZ:"></asp:Label>
            <asp:TextBox ID="contactMessageTB" CssClass="contactTB contactMessageTB" runat="server" MaxLength="750" TextMode="MultiLine" TabIndex="3"></asp:TextBox>
        </asp:Panel>
        <br />
        <asp:Panel ID="contactButtonSection" runat="server">
            <asp:Button ID="contactButton" OnClick="contactButton_Click" CssClass="contactTB contactButton" runat="server" Text="Button" />
        </asp:Panel>
        <br />
          

    </asp:Panel>
    <asp:Label ID="response" CssClass="" runat="server" Text=""></asp:Label>
          
</asp:Content>

