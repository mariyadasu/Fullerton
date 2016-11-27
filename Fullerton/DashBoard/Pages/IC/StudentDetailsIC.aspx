<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetailsIC.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TC.StudentDetails" MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

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
                                    <asp:TemplateField HeaderText="NAME">
                                        <ItemTemplate>
                                            <asp:Label ID="lblName" runat="server" Text='<%#Eval("NAME") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Institute Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblInstituteName" runat="server" Text='<%#Eval("InstituteName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Institute Coordinator">
                                        <ItemTemplate>
                                            <asp:Label ID="lblInstituteCoordinator" runat="server" Text='<%#Eval("InstituteCoordinator") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Mobile No">
                                        <ItemTemplate>
                                            <asp:Label ID="lblMobileNo" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Course">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCourse" runat="server" Text='<%#Eval("Course") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     
                                     <asp:TemplateField HeaderText="RollNo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRollNo" runat="server" Text='<%#Eval("RollNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatusName" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                            <asp:Button ID="btnApprove" runat="server" Text="Approve" OnClick="btnApprove_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                            <asp:Button ID="btnReject" runat="server" Text="Reject" OnClick="btnReject_Click" />
                                            <asp:Label ID="lblUserId" runat="server" Text='<%#Eval("SNO") %>' Visible="false"></asp:Label>
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
        <input type="hidden" runat="server" id="hidUserId" />
    </form>
</asp:Content>
