<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" CodeBehind="PCBuilder.aspx.cs" Inherits="pc_toplama_sistemi.pages.PCBuilder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-----------PC BUİLDER------------------>
            <div class="collapse-content">
                <div class="collapse" id="cpu">
                    <a class="cpu" href="#cpu"> <asp:Image ID="cpuImg" ImageUrl="~/src/cpu.png" runat="server" /> İşlemci</a>
                    <div class="content">
                      <div class="inner-content">
                          <asp:Panel ID="cpus" CssClass="cpus" runat="server">
                            <asp:RadioButtonList ID="cpusTable" CssClass="productTable" runat="server" AutoPostBack="True" DataSourceID="pcbuild" DataTextField="Ozellik" DataValueField="Ozellik">

                            </asp:RadioButtonList>
                              <asp:SqlDataSource ID="pcbuild" runat="server" ConnectionString="<%$ ConnectionStrings:pcbuildConnectionString %>" SelectCommand="select
	Tbl_Parcalar.Parcaid,
	Tbl_Parcalar.ParcaMarka+' '+Tbl_Parcalar.ParcaAd+ ' ' + STRING_AGG(Ozellik,' ')  as &quot;Ozellik&quot;
from Tbl_Parcalar,Tbl_Ozellik
where Tbl_Parcalar.Kategoriid=1 and Tbl_Ozellik.Parcaid=Tbl_Parcalar.Parcaid 
group by Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaAd"></asp:SqlDataSource>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="mainboard">
                    <a class="mainboard" href="#mainboard">
                        <asp:Image ID="mainboardImg" ImageUrl="~/src/mainboard.png" runat="server" /> Anakart</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="mainboards" CssClass="mainboards" runat="server">
                              <asp:RadioButtonList ID="mainboardTable" CssClass="productTable" runat="server" AutoPostBack="True" DataSourceID="mainboardDB" DataTextField="Ozellik" DataValueField="Ozellik">
                              </asp:RadioButtonList>
                              <asp:SqlDataSource ID="mainboardDB" runat="server" ConnectionString="<%$ ConnectionStrings:pcbuildConnectionString %>" SelectCommand="select
	Tbl_Parcalar.Parcaid,
	Tbl_Parcalar.ParcaMarka+' '+Tbl_Parcalar.ParcaAd+ ' ' + STRING_AGG(Ozellik,' ')  as &quot;Ozellik&quot;
from Tbl_Parcalar,Tbl_Ozellik
where Tbl_Parcalar.Kategoriid=2 and Tbl_Ozellik.Parcaid=Tbl_Parcalar.Parcaid 
group by Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaAd"></asp:SqlDataSource>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="ram">
                    <a class="ram" href="#ram">
                        <asp:Image ID="ramImg" ImageUrl="~/src/ram.png" runat="server" />
                        RAM</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="rams" CssClass="rams" runat="server">
                              <asp:RadioButtonList ID="ramTable" CssClass="productTable" runat="server" AutoPostBack="True" DataSourceID="ramDB" DataTextField="Ozellik" DataValueField="Ozellik">
                              </asp:RadioButtonList>
                              <asp:SqlDataSource ID="ramDB" runat="server" ConnectionString="<%$ ConnectionStrings:pcbuildConnectionString %>" SelectCommand="select
	Tbl_Parcalar.Parcaid,
	Tbl_Parcalar.ParcaMarka+' '+Tbl_Parcalar.ParcaAd+ ' ' + STRING_AGG(Ozellik,' ')  as &quot;Ozellik&quot;
from Tbl_Parcalar,Tbl_Ozellik
where Tbl_Parcalar.Kategoriid=3 and Tbl_Ozellik.Parcaid=Tbl_Parcalar.Parcaid 
group by Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaAd"></asp:SqlDataSource>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="gpu">
                    <a class="gpu" href="#gpu">
                        <asp:Image ID="gpuImg" ImageUrl="~/src/gpu.png" runat="server" />
                        Ekran Kartı</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="gpus" CssClass="gpus" runat="server">
                              <asp:RadioButtonList ID="gpuTable" CssClass="productTable" runat="server" AutoPostBack="True" DataSourceID="gpuDB" DataTextField="Ozellik" DataValueField="Ozellik">
                              </asp:RadioButtonList>
                              <asp:SqlDataSource ID="gpuDB" runat="server" ConnectionString="<%$ ConnectionStrings:pcbuildConnectionString %>" SelectCommand="select
	Tbl_Parcalar.Parcaid,
	Tbl_Parcalar.ParcaMarka+' '+Tbl_Parcalar.ParcaAd+ ' ' + STRING_AGG(Ozellik,' ')  as &quot;Ozellik&quot;
from Tbl_Parcalar,Tbl_Ozellik
where Tbl_Parcalar.Kategoriid=4 and Tbl_Ozellik.Parcaid=Tbl_Parcalar.Parcaid 
group by Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaAd"></asp:SqlDataSource>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="powersup">
                    <a class="powersup" href="#powersup">
                        <asp:Image ID="powersupImg" ImageUrl="~/src/powersup.png" runat="server" />
                        Güç Kaynağı</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="powersups" CssClass="powersups" runat="server">
                              <asp:RadioButtonList ID="powersupTable" CssClass="productTable" runat="server" AutoPostBack="True" DataSourceID="psuDB" DataTextField="Ozellik" DataValueField="Ozellik">

                              </asp:RadioButtonList>
                              <asp:SqlDataSource ID="psuDB" runat="server" ConnectionString="<%$ ConnectionStrings:pcbuildConnectionString %>" SelectCommand="select
	Tbl_Parcalar.Parcaid,
	Tbl_Parcalar.ParcaMarka+' '+Tbl_Parcalar.ParcaAd+ ' ' + STRING_AGG(Ozellik,',')  as &quot;Ozellik&quot;
from Tbl_Parcalar,Tbl_Ozellik
where Tbl_Parcalar.Kategoriid=5 and Tbl_Ozellik.Parcaid=Tbl_Parcalar.Parcaid 
group by Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaAd"></asp:SqlDataSource>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="disc">
                    <a class="disc" href="#disc">
                        <asp:Image ID="discImg" ImageUrl="~/src/ssd.png" runat="server" />
                        HDD/SSD</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="discs" CssClass="discs" runat="server">
                              <asp:RadioButtonList ID="discTable" CssClass="productTable" runat="server" AutoPostBack="True" DataSourceID="discDB" DataTextField="Ozellik" DataValueField="Ozellik">
                              </asp:RadioButtonList>
                              <asp:SqlDataSource ID="discDB" runat="server" ConnectionString="<%$ ConnectionStrings:pcbuildConnectionString %>" SelectCommand="select
	Tbl_Parcalar.Parcaid,
	Tbl_Parcalar.ParcaMarka+' '+Tbl_Parcalar.ParcaAd+ ' ' + STRING_AGG(Ozellik,' ')  as &quot;Ozellik&quot;
from Tbl_Parcalar,Tbl_Ozellik
where Tbl_Parcalar.Kategoriid=6 and Tbl_Ozellik.Parcaid=Tbl_Parcalar.Parcaid 
group by Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaAd"></asp:SqlDataSource>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
            </div>
            <asp:Panel ID="sepetPanel" CssClass="sepetPanel" runat="server">
                <asp:Label ID="sepet" runat="server" Text="SEPET"></asp:Label>
                <hr />
                <asp:Panel ID="sepetProPanel" CssClass="sepetProPanel" runat="server">
                    <asp:Panel ID="sepetPro" CssClass="sepetPro" runat="server">
                        <asp:Label ID="sepetProName" CssClass="sepetProName" runat="server" Text="ÜRÜN ADI"></asp:Label>
                        
                        <asp:Button ID="sepetProCB" CssClass="sepetProCB" runat="server" Text="X" />
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>


                <!-----------PC BUİLDER END-------------->
</asp:Content>
