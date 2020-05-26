<%@ Page Title="" Language="C#" MasterPageFile="~/pages/AdminSayfaYapisi.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="pc_toplama_sistemi.pages.AdminDefault" EnableViewState="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong class="adminSayfaBasligi"><i class="fas fa-users"> </i> Kullanıcılar</strong>
    <br />
    <asp:Panel ID="usersGeneralPanel" CssClass="usersGeneralPanel" runat="server">
        <asp:Panel ID="usersPanel" CssClass="usersPanel" runat="server">
            <strong class="adminSayfaBasligi">Kullanıcılar</strong>
            <br />
            <asp:DataList ID="usersDataList" CssClass="usersDataList" runat="server">
                <ItemTemplate>
                    <asp:Panel ID="userRow" CssClass="userRow"  runat="server">
                        <asp:Label ID="userID" CssClass="userID" runat="server" Text='<%# Eval("Kullaniciid") %>'></asp:Label>
                        <asp:Label ID="userName" CssClass="userName" runat="server" Text='<%# Eval("KullaniciAdi") %>'></asp:Label>
                        <asp:Label ID="userSaveDate" CssClass="userSaveDate" runat="server" Text='<%# Eval("KayitTarihi") %>'></asp:Label>
                        <asp:Button ID="userButton" CssClass="userButton" OnClientClick="gor(this)"  runat="server" Text="Gör >" />
                    </asp:Panel>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="usersEditPanel" CssClass="usersEditPanel" runat="server">
            <asp:Label ID="adminSayfaBasligi" CssClass="adminSayfaBasligi" Text="Kullanıcı Bilgileri" runat="server" />
            <br />
            
            <asp:TextBox ID="TextBox5" CssClass="editTBB" runat="server" Text=""></asp:TextBox> 
            <asp:Button ID="userSearchButton" CssClass="editTBBBTN" OnClick="userSearchButton_Click" runat="server" Text="Ara" />
            
            <asp:FormView ID="UserDataView" runat="server"  OnPageIndexChanging="FormView1_PageIndexChanging" Width="100%">
                <ItemTemplate>
                    <table class="usersDataList">
                        <tr>
                            <td><asp:Label ID="Label1" CssClass="editLabel" runat="server" Text="Adı:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox1" CssClass="editTB" onChange="degis1(this)" runat="server" Text='<%# Eval("Adi") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label2" CssClass="editLabel" runat="server" Text="Kullanıcı Adı:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox2" CssClass="editTB" onChange="degis2(this)" runat="server" Text='<%# Eval("KullaniciAdi") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label3" CssClass="editLabel" runat="server" Text="Şifre:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox3" CssClass="editTB" onChange="degis3(this)" runat="server" Text='<%# Eval("Sifre") %>'></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td> <asp:Label ID="Label4" CssClass="editLabel" runat="server" Text="Admin:"></asp:Label></td>
                            <td><asp:CheckBox ID="CheckBox1" CssClass="editCB" onChange="degis4(this)" runat="server" Checked='<%# Eval("isAdmin") %>'/></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="Label5" CssClass="editLabel" runat="server" Text="E-Posta:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox4" CssClass="editTB" onChange="degis5(this)" runat="server" Text='<%# Eval("EPosta") %>'></asp:TextBox> </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
            <br /><br />
            <asp:Button ID="userSave" CssClass="userSaveBTN" OnClick="userSave_Click" runat="server" Text="KAYDET" />
            <asp:Button ID="userDelete" CssClass="userDeleteBTN" OnClick="userDelete_Click" runat="server" Text="SİL" />
            <asp:HiddenField ID="HiddenField1" runat="server" Value="0"/>
            <asp:HiddenField ID="HiddenField2" runat="server" Value="0"/>
            <asp:HiddenField ID="HiddenField3" runat="server" Value="0"/>
            <asp:HiddenField ID="HiddenField4" runat="server" Value="false"/>
            <asp:HiddenField ID="HiddenField5" runat="server" Value="0"/>
        </asp:Panel>
        <script type="text/javascript">
            if (document.getElementById('ContentPlaceHolder1_TextBox5').value != "") {
                document.getElementById('ContentPlaceHolder1_userSearchButton').classList.add("buttonActive");
            }
            document.getElementById('ContentPlaceHolder1_HiddenField1').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox1').value;
            document.getElementById('ContentPlaceHolder1_HiddenField2').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox2').value;
            document.getElementById('ContentPlaceHolder1_HiddenField3').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox3').value;
            document.getElementById('ContentPlaceHolder1_HiddenField4').value = document.getElementById('ContentPlaceHolder1_UserDataView_CheckBox1').checked;
            document.getElementById('ContentPlaceHolder1_HiddenField5').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox4').value;
            function degis1 (obj){
                document.getElementById('ContentPlaceHolder1_HiddenField1').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox1').value;
            }
            function degis2 (obj){
                document.getElementById('ContentPlaceHolder1_HiddenField2').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox2').value;

            }
            function degis3 (obj){
                document.getElementById('ContentPlaceHolder1_HiddenField3').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox3').value;
            }
            function degis4 (obj){
                document.getElementById('ContentPlaceHolder1_HiddenField4').value = document.getElementById('ContentPlaceHolder1_UserDataView_CheckBox1').checked;
            }
            function degis5 (obj){
                document.getElementById('ContentPlaceHolder1_HiddenField5').value = document.getElementById('ContentPlaceHolder1_UserDataView_TextBox4').value;
            }
            function gor(obj) {
                var btnid = obj.getAttribute("id");
                var lblid = btnid.replace("userButton", "userID");
                var userid = document.getElementById(lblid).innerText;
                document.getElementById('ContentPlaceHolder1_TextBox5').value = userid;
                document.getElementById('ContentPlaceHolder1_userSearchButton').classList.add("buttonActive");
            }
        </script>
    </asp:Panel>
</asp:Content>
