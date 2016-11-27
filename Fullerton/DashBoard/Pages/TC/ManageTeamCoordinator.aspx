<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTeamCoordinator.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TC.ManageTeamCoordinator" MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

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
                            <li><i class="fa fa-th-list"></i>Manage TC</li>
                        </ol>
                    </div>
                </div>
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <section class="panel">
                        <header class="panel-heading">
                            Add/Modify Event
                        </header>
                        <div class="panel-body">
                            <div class="panel panel-success">
                                <div class="panel-heading">Team Coordinator privileges</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label for="ddlTeamNames">Activation Type <span class="red-text">*</span> :</label>
                                            </div>
                                            <div class="col-md-3">
                                                <asp:DropDownList class="form-control" ID="ddlStatus" runat="server" ClientIDMode="Static">
                                                    <asp:ListItem Value="1" Text="TC"></asp:ListItem>
                                                    <asp:ListItem Value="0" Text="Partial TC"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-3">
                                                <asp:Button ID="btnUpdateStatus" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="Submit" OnClick="btnUpdateStatus_Click" />
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="panel panel-success">
                                <div class="panel-heading">Activate New Team Coordinator</div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label for="ddlTeamNames">New Team Coordinator <span class="red-text">*</span> :</label>
                                            </div>
                                            <div class="col-md-3">
                                                <asp:DropDownList class="form-control" ID="ddlTeamMembers" runat="server" ClientIDMode="Static">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col-md-3">
                                                <asp:Button ID="btnNewTcUpdate" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="Submit" OnClick="btnNewTcUpdate_Click" />
                                                <asp:Label ID="lblNewTcMsg" runat="server" Visible="false"></asp:Label>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </section>

                </div>
                </section>
            </section>
    </form>

    <script type="text/javascript">
        $(document).ready(function () {

            $("#ddlTeamMembers").removeClass("aspNetDisabled");
            $("#ddlTeamMembers").addClass("form-control");

            $("#btnNewTcUpdate").on("click", function () {
                debugger;
                var ddlTeamMembers = $("#ddlTeamMembers").val();

                if (ddlTeamMembers == "0") {
                    alert("Please Select Team Member");
                    return false;
                }

                if (!confirm("Do you want to assign new team coordinator?")) {
                    return false;
                }
                return true;
            });

            $("#btnUpdateStatus").on("click", function () {

                debugger;
                var status = $("#ddlStatus").val();

                var msg = "Do you want to became teem coordinator";
                if (status == "0")
                    msg = "Do you want to became partial teem coordinator"
                if (!confirm(msg)) {
                    return false;
                }
                return true;
            });
        });
    </script>
</asp:Content>
