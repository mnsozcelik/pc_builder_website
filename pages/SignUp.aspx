<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="pc_toplama_sistemi.pages.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>KAYIT</title>
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
            
            <asp:Label ID="Label1" CssClass="signUpLBL" runat="server" Text="KAYIT OL"></asp:Label>
            <br />
            <asp:TextBox ID="signUpName" CssClass="signUpTB" placeholder="Adı-Soyadınız" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="signUpUsername" CssClass="signUpTB" placeholder="Kullanıcı Adı" runat="server" TextMode="SingleLine"></asp:TextBox>
            <br />
            <asp:TextBox ID="signUpMail" CssClass="signUpTB" placeholder="E-Posta Adresi" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <asp:TextBox ID="signUpPassword" CssClass="signUpTB" placeholder="Şifre" runat="server" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:TextBox ID="signUpPasswordAgain" CssClass="signUpTB" placeholder="Şifre Tekrar" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <a href="Login.aspx">
                <asp:Label ID="loginAccountLBL" CssClass="loginAccountLBL" runat="server" Text="GİRİŞ YAP"></asp:Label>
            </a>
            <asp:Button ID="signUpBTN" CssClass="signUpBTN" OnClick="signUpBTN_Click" runat="server" Text="KAYIT OL" />
            
        </asp:Panel>
        <div class="control">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="signUpName" runat="server" ErrorMessage="İsim ve Soyisim Boş Geçilemez."></asp:RequiredFieldValidator>
            <br />                                                   
            <br />                                                   
            <br />                                                   
            <br />                                                   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="signUpUsername" runat="server" ErrorMessage="Kullanıcı Adı Boş Geçilemez."></asp:RequiredFieldValidator>
            <br />                                                   
            <br />                                                   
            <br />                                                  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="signUpMail" runat="server" ErrorMessage="Mail Boş Geçilemez."></asp:RequiredFieldValidator>
            <br />                                                   
            <br />                                                   
            <br />                                                   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="signUpPassword" runat="server" ErrorMessage="Şifre Boş Geçilemez."></asp:RequiredFieldValidator>
            <br />                                                   
            <br />                                                   
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ControlToValidate="signUpPasswordAgain" runat="server" ErrorMessage="Şifre Tekrar Boş Geçilemez."></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" style="font-family:Arial; font-size:18px; font-weight:bold; color:red; background-color:rgba(57, 56, 56, 0.76); padding:5px; border:1px solid transparent; border-radius:10px;" ErrorMessage="Girilen şifreler uyuşmuyor." ControlToValidate="signUpPassword" ControlToCompare="signUpPasswordAgain"></asp:CompareValidator>
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
