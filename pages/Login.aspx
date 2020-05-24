<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pc_toplama_sistemi.pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GİRİŞ</title>
    <link rel="stylesheet" type="text/css" href="../Style.css" />
    <link rel="stylesheet" type="text/css" href="../accordionStyle.css" />

    <link href="../fontawesome/css/all.css" rel="stylesheet" />
    <script src="../components/sliderengine/jquery.js"></script>
    <script src="../components/sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="../components/sliderengine/amazingslider-1.css"/>
    <script src="../components/sliderengine/initslider-1.js"></script>
</head>
<body>
    <video autoplay muted loop id="myVideo">
      <source src="../src/hdd.mp4" type="video/mp4"/>
      TARAYICINIZ HTML 5 STANDARTLARINI DESTEKLEMİYOR.
    </video>
    <form id="form1" runat="server">
        
        <asp:Panel ID="login" CssClass="login" runat="server">
            <asp:Image ID="loginLogo" CssClass="loginLogo" ImageUrl="~/src/logo.png" runat="server" />
            <br />
            
            <asp:Label ID="Label1" CssClass="loginLBL" runat="server" Text="GİRİŞ"></asp:Label>
            <br />
            <asp:TextBox ID="usernameLogin" CssClass="loginTB" placeholder="Kullanıcı Adı" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="passwordLogin" CssClass="loginTB" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <a href="../pages/SignUp.aspx">
                <asp:Label ID="createAccountLBL" CssClass="createAccountLBL"  runat="server" Text="KAYIT OL"></asp:Label>
            </a>
            <asp:Button ID="loginBTN" CssClass="loginBTN" OnClick="loginBTN_Click" runat="server" Text="GİRİŞ" />
            
        </asp:Panel>

        <div class="control">
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="usernameLogin" runat="server" ErrorMessage="Kullanıcı Adınızı Giriniz."></asp:RequiredFieldValidator>
            <br />                                                   
            <br />                                                   
            <br />                                                   
            <br />                                                  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="passwordLogin" runat="server" ErrorMessage="Şifre Boş Geçilemez."></asp:RequiredFieldValidator>
        </div>
        <asp:Label ID="response" CssClass="" runat="server" Text=""></asp:Label>

        <script>
            var video = document.getElementById("myVideo");
            var btn = document.getElementById("myBtn");

            function myFunction() {
                if (video.paused) {
                    video.play();
                    btn.innerHTML = "Pause";
                } else {
                    video.pause();
                    btn.innerHTML = "Play";
                }
            }
        </script>
    </form>
</body>
</html>
