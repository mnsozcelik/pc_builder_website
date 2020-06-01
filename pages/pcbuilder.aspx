<%@ Page Title="" Language="C#" MasterPageFile="~/pages/SayfaYapisi.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PCBuilder.aspx.cs" Inherits="pc_toplama_sistemi.pages.PCBuilder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-----------PC BUİLDER------------------>
            <div class="collapse-content">
                <div class="collapse" id="cpu">
                    <a class="cpu" href="#cpu"> <asp:Image ID="cpuImg" ImageUrl="~/src/cpu.png" runat="server" /> İşlemci</a>
                    <div class="content">
                      <div class="inner-content">
                          <asp:Panel ID="cpus" CssClass="cpus" runat="server">
                                <asp:DataList ID="cpudatalist" runat="server">
                                    <ItemTemplate>
                                        <asp:Panel ID="cartPrdPNL" CssClass="cartPrdPNL" runat="server">
                                            <asp:Label ID="cpuBrandName" CssClass="cartPrdName" runat="server" Text='<%# Eval("Ozellik")%>'></asp:Label>
                                            <asp:Button ID="cpuBTN" CssClass="cartPrdBTN" PostBackUrl='<%# "PCBuilder.aspx?Ekleid=" + Eval("Parcaid") %>' runat="server" Text="Sepete Ekle" />
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="mainboard">
                    <a class="mainboard" href="#mainboard"> <asp:Image ID="mainboardImg" ImageUrl="~/src/mainboard.png" runat="server" /> Anakart</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="mainboards" CssClass="mainboards" runat="server">
                            <asp:DataList ID="mainboarddatalist" runat="server">
                                <ItemTemplate>
                                    <asp:Panel ID="cartPrdPNL" CssClass="cartPrdPNL" runat="server">
                                        <asp:Label ID="cpuBrandName" CssClass="cartPrdName" runat="server" Text='<%# Eval("Ozellik")%>'></asp:Label>
                                        <asp:Button ID="cpuBTN" CssClass="cartPrdBTN" PostBackUrl='<%# "PCBuilder.aspx?Ekleid=" + Eval("Parcaid") %>' runat="server" Text="Sepete Ekle" />
                                    </asp:Panel>
                                </ItemTemplate>
                            </asp:DataList>    
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="ram">
                    <a class="ram" href="#ram"> <asp:Image ID="ramImg" ImageUrl="~/src/ram.png" runat="server" />RAM</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="rams" CssClass="rams" runat="server">
                                <asp:DataList ID="ramdatalist" runat="server">
                                    <ItemTemplate>
                                        <asp:Panel ID="cartPrdPNL" CssClass="cartPrdPNL" runat="server">
                                            <asp:Label ID="cpuBrandName" CssClass="cartPrdName" runat="server" Text='<%# Eval("Ozellik")%>'></asp:Label>
                                            <asp:Button ID="cpuBTN" CssClass="cartPrdBTN" PostBackUrl='<%# "PCBuilder.aspx?Ekleid=" + Eval("Parcaid") %>' runat="server" Text="Sepete Ekle" />
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                          </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="gpu">
                    <a class="gpu" href="#gpu"> <asp:Image ID="gpuImg" ImageUrl="~/src/gpu.png" runat="server" /> Ekran Kartı</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="gpus" CssClass="gpus" runat="server">
                                <asp:DataList ID="gpudatalist" runat="server">
                                    <ItemTemplate>
                                        <asp:Panel ID="cartPrdPNL" CssClass="cartPrdPNL" runat="server">
                                            <asp:Label ID="cpuBrandName" CssClass="cartPrdName" runat="server" Text='<%# Eval("Ozellik")%>'></asp:Label>
                                            <asp:Button ID="cpuBTN" CssClass="cartPrdBTN" PostBackUrl='<%# "PCBuilder.aspx?Ekleid=" + Eval("Parcaid") %>' runat="server" Text="Sepete Ekle" />
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="powersup">
                    <a class="powersup" href="#powersup"> <asp:Image ID="powersupImg" ImageUrl="~/src/powersup.png" runat="server" /> Güç Kaynağı</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="powersups" CssClass="powersups" runat="server">
                                <asp:DataList ID="psudatalist" runat="server">
                                    <ItemTemplate>
                                        <asp:Panel ID="cartPrdPNL" CssClass="cartPrdPNL" runat="server">
                                            <asp:Label ID="cpuBrandName" CssClass="cartPrdName" runat="server" Text='<%# Eval("Ozellik")%>'></asp:Label>
                                            <asp:Button ID="cpuBTN" CssClass="cartPrdBTN" PostBackUrl='<%# "PCBuilder.aspx?Ekleid=" + Eval("Parcaid") %>' runat="server" Text="Sepete Ekle" />
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
                <div class="collapse" id="disc">
                    <a class="disc" href="#disc"> <asp:Image ID="discImg" ImageUrl="~/src/ssd.png" runat="server" /> HDD/SSD</a>
                    <div class="content">
                      <div class="inner-content">
                        <asp:Panel ID="discs" CssClass="discs" runat="server">
                                <asp:DataList ID="discdatalist" runat="server">
                                    <ItemTemplate>
                                        <asp:Panel ID="cartPrdPNL" CssClass="cartPrdPNL" runat="server">
                                            <asp:Label ID="cpuBrandName" CssClass="cartPrdName" runat="server" Text='<%# Eval("Ozellik")%>'></asp:Label>
                                            <asp:Button ID="cpuBTN" CssClass="cartPrdBTN" PostBackUrl='<%# "PCBuilder.aspx?Ekleid=" + Eval("Parcaid") %>' runat="server" Text="Sepete Ekle" />
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                        </asp:Panel>
                      </div>
                    </div>
                </div>
            </div>
            <asp:Panel ID="sepetPanel" CssClass="sepetPanel" runat="server">
                <asp:Label ID="sepet" runat="server" Text="SEPET"></asp:Label>
                <hr />
                <asp:Panel ID="sepetProPanel" CssClass="sepetProPanel" runat="server">
                    <asp:DataList ID="userBasketDataList" runat="server">
                        <ItemTemplate>
                            <asp:Panel ID="sepetPro" CssClass="sepetPro" runat="server">
                                <asp:Label ID="sepetProBrand" CssClass="sepetProName" runat="server" Text='<%#Eval("ParcaMarka") %>'></asp:Label>
                                <asp:Label ID="sepetProName" CssClass="sepetProName" runat="server" Text='<%#Eval("ParcaAd") %>'></asp:Label>
                                <asp:Button ID="sepetProBTN" CssClass="sepetProBTN" OnClick="sepetProBTN_Click" PostBackUrl='<%# "PCBuilder.aspx?Silid=" + Eval("Parcaid") %>' runat="server" Text="X" />
                            </asp:Panel>
                            <br />
                        </ItemTemplate>
                        
                    </asp:DataList>
                </asp:Panel>
            </asp:Panel>
    <asp:Label ID="response" CssClass="" runat="server" Text=""></asp:Label>
                <!-----------PC BUİLDER END-------------->
</asp:Content>
