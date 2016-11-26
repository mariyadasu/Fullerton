<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.Events"
     MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
   
    <script type="text/javascript">
        $(function () {
            $("#txtEventDate").datepicker();
        });
        function Validateall() {
            var txtEventName = document.getElementById("<%=txtEventName.ClientID%>");
            var txtEventDate = document.getElementById("<%=txtEventDate.ClientID%>");

             var lblMessage = document.getElementById("<%=lblMessage.ClientID%>");
             lblMessage.innerText = "";
             if (txtEventName.value == "") {
                 lblMessage.innerText = "Please Enter Event Name";
                 txtEventName.focus();
                 return false;
             }
             if (txtEventDate.value == "") {
                 lblMessage.innerText = "Please select Event Date.";
                 txtEventDate.focus();
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
                            <li><i class="fa fa-th-list"></i>Events</li>
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

                            <asp:GridView ID="gvEvents" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvEvents_PageIndexChanging"
                                CssClass="gv"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:TemplateField HeaderText="Event Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEventName" runat="server" Text='<%#Eval("EventName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Even Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEventDate" runat="server" Text='<%#Eval("EventDate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click"  />
                                            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the Event.');"
                                                 OnClick="btnDelete_Click" />
                                            <asp:Label ID="lblEventId" runat="server" Text='<%#Eval("EventId") %>' Visible="false"></asp:Label>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>


                        </section>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6">
                        <section class="panel">
                            <header class="panel-heading">
                                Add/Modify Event
                            </header>
                            <div class="panel-body">
                                        <div align="center">
                                            <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Orange" Font-Bold="true"></asp:Label>
                                        </div>
                                <table align="center" style="position: relative; top: 10px;">
                                    <tr>
                                        <td>
                                            <table align="center">
                                                <tr>
                                                    <td>Event Name :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtEventName" runat="server" MaxLength="150" Width="250px"></asp:TextBox>

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Event Date:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtEventDate" runat="server" MaxLength="10" Width="250px"></asp:TextBox>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td colspan="2" align="center">
                                                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" OnClientClick="return Validateall();" />
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" OnClientClick="return Validateall();"
                                                            Visible="false" />
                                                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    
                                </table>

                            </div>
                        </section>

                    </div>
                </div>
                <!-- page end-->
            </section>
        </section>
        <input type="hidden" runat="server" id="hidEventId" />
    </form>
</asp:Content>

