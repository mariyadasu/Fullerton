<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateTeam.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.UpdateTeam" MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function Validateall() {
            var txtFirstName = document.getElementById("<%=txtFirstName.ClientID%>");
            var txtLastName = document.getElementById("<%=txtLastName.ClientID%>");
            var ddlRole = document.getElementById("<%=ddlRole.ClientID%>");
            var lblMessage = document.getElementById("<%=lblMessage.ClientID%>");
            lblMessage.innerText = "";
            if (txtFirstName.value == "") {
                lblMessage.innerText = "Please Enter First Name";
                txtFirstName.focus();
                return false;
            }
            if (txtLastName.value == "") {
                lblMessage.innerText = "Please enter Last Name.";
                txtLastName.focus();
                return false;
            }
            if (ddlRole.value == "0") {
                lblMessage.innerText = "Please select Role.";
                ddlRole.focus();
                return false;
            }
        }
    </script>
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
                                <%-- <a class="btn btn-success" href="" title="Bootstrap 3 themes generator">Export To Excel</a>--%>
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
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <section class="panel" id="MemberSection" runat="server" visible="false">
                            <header class="panel-heading">
                                Modify Team Member
                            </header>
                            <div class="panel-body">
                                <asp:GridView ID="gvMemberDetails" runat="server" AutoGenerateColumns="false" Width="100%"
                                    AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvMemberDetails_PageIndexChanging"
                                    CssClass="gv"
                                    AlternatingRowStyle-CssClass="alt"
                                    PagerStyle-CssClass="pgr">
                                    <Columns>
                                        <asp:TemplateField HeaderText="FirstName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblFirstName" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="LastName">
                                            <ItemTemplate>
                                                <asp:Label ID="lblLastName" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Role">
                                            <ItemTemplate>
                                                <asp:Label ID="lblShortName" runat="server" Text='<%#Eval("ShortName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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

                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                                                <asp:Button ID="btnDelete" runat="server" Text="Delete"
                                                    Visible='<%# Eval("ShortName").ToString() == "TC" ? false : true %>'
                                                    OnClientClick="return confirm('Are you sure? want to delete the Event.');"
                                                    OnClick="btnDelete_Click" />
                                                <asp:Label ID="lblUserId" runat="server" Text='<%#Eval("UserId") %>' Visible="false"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <div align="center">
                                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Orange" Font-Bold="true"></asp:Label>
                                </div>
                                <div id="divUpdateView" runat="server" visible="false">
                                    <br />
                                   <div class="col-lg-2"></div>
                                    <div class="col-lg-8">
                                    <section class="panel">
                                        <header class="panel-heading">
                                            Update Team Member
                                        </header>
                                        <div class="panel-body">
                                            <div align="center" style="position: relative; top: 10px;">
                                                <div class="form-group">
                                                    <label class="control-label col-sm-4">First Name :</label>
                                                    <div class="col-sm-6">
                                                        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="100" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-sm-4">Last Name:</label>
                                                    <div class="col-sm-6">
                                                        <asp:TextBox ID="txtLastName" runat="server" MaxLength="100" class="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-sm-4">Role:</label>
                                                    <div class="col-sm-6">
                                                        <asp:DropDownList ID="ddlRole" runat="server" class="form-control">
                                                            <asp:ListItem Text="Select Role" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="TC" Value="1"></asp:ListItem>
                                                            <asp:ListItem Text="TM" Value="2"></asp:ListItem>
                                                        </asp:DropDownList>

                                                    </div>
                                                </div>
                                                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" OnClientClick="return Validateall();" />
                                            </div>
                                        </div>
                                    </section>
                                        </div>
                                </div>
                            </div>
                        </section>

                    </div>
                </div>
                <!-- page end-->
            </section>
        </section>
        <input type="hidden" runat="server" id="hidTeamId" />
        <input type="hidden" runat="server" id="hidUserId" />
    </form>
</asp:Content>
