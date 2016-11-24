<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateTeam.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.UpdateTeam"    MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"></h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="AdminDashBoard.aspx">Home</a></li>
                            <li><i class="fa fa-th-list"></i>Modify/Delete Team</li>
                        </ol>
                    </div>
                </div>
                <!-- page start-->

                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <header class="panel-heading">
                                <a class="btn btn-success" href="" title="Bootstrap 3 themes generator">Export To Excel</a>
                            </header>

                            <asp:GridView ID="gvTeamDetails" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvTeamDetails_PageIndexChanging"
                                CssClass="gv"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:TemplateField HeaderText="Team Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTeamName" runat="server" Text='<%#Eval("TeamName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblInstituteName" runat="server" Text='<%#Eval("InstituteName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Institute Coordinator">
                                        <ItemTemplate>
                                            <asp:Label ID="lblICName" runat="server" Text='<%#Eval("NAME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnView" runat="server" Text="View" OnClick="btnView_Click" />
                                            <asp:Label ID="lblTeamId" runat="server" Text='<%#Eval("TeamId") %>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </section>
                    </div>
                </div>
                 
                <!-- page end-->
            </section>
        </section>
        <input type="hidden" runat="server" id="hidTeamId" />
    </form>
</asp:Content>