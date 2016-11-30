<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.Events"
     MasterPageFile="~/DashBoard/DashboardMaster.Master" EnableEventValidation="false" %>

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
                            <li><i class="fa fa-th-list"></i>Events</li>
                        </ol>
                    </div>
                </div>
                <!-- page start-->

                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <header class="panel-heading">
                                <asp:Button ID="btnExport" runat="server" CssClass="btn btn-success" Text="Export To Excel" OnClick="btnExport_Click" />
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
                                <div align="center" style="position: relative; top: 10px;">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Event Name :</label>
                                        <div class="col-sm-6">
                                           <asp:TextBox ID="txtEventName" runat="server" MaxLength="150"  class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-4">Event Date:</label>
                                        <div class="col-sm-6">
                                            <asp:TextBox ID="txtEventDate" runat="server" MaxLength="10"  class="form-control" ClientIDMode="Static"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" OnClientClick="return Validateall();" />
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" OnClientClick="return Validateall();"
                                                            Visible="false" />
                                                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                </div>
                                 

                            </div>
                        </section>

                    </div>
                </div>
                <!-- page end-->
            </section>
        </section>
        <input type="hidden" runat="server" id="hidEventId" />
    </form>

     <script type="text/javascript">

         $(document).ready(function () {
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

