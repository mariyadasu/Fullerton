<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamDetails.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.TeamDetails"
    MasterPageFile="~/DashBoard/DashboardMaster.Master" EnableEventValidation="false" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
 
    <script type="text/javascript">
       
        function ConfirmEnable() {
            debugger;
            var countenable = document.getElementById("<%=hfEnableCount.ClientID %>").value;
            var countdisable = document.getElementById("<%=hfDisableCount.ClientID %>").value;
             
            if (countenable == 0 && countdisable == 0) {
                alert("No Teams Selected.");
                return false;
            }
            else {
                return confirm("" + countenable + " for enable and " + countdisable + " for disable teams have been selected, Do you want to enable/disable Presantion upload ?");
            }
        }
        function SelectEnableCheckboxes(headerchk) {
            debugger;
            var countenable = document.getElementById("<%=hfEnableCount.ClientID %>").value;
            if (headerchk.checked)
                countenable ++
            else
                countenable--
            document.getElementById("<%=hfEnableCount.ClientID %>").value = countenable;
        }
        function SelectDisableCheckboxes(headerchk) {
            debugger;
            var countenable = document.getElementById("<%=hfDisableCount.ClientID %>").value;
             if (!headerchk.checked)
                 countenable++
             else
                 countenable--
             document.getElementById("<%=hfDisableCount.ClientID %>").value = countenable;
         }
    </script>
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-table"></i>Table</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="AdminDashBoard.aspx">Home</a></li>
                            <li><i class="fa fa-th-list"></i>Team Details</li>
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
                            <asp:GridView ID="gvTeam" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true" PageSize="8" OnPageIndexChanging="gvTeam_PageIndexChanging"
                                CssClass="Grid"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:BoundField DataField="TeamName" HeaderText="Team Name" />
                                    <asp:BoundField DataField="InstituteName" HeaderText="Institute Name" />
                                    <asp:BoundField DataField="NAME" HeaderText="Institue Coordinator" />
                                     <asp:BoundField DataField="UploadStatus" HeaderText="Upload Status" />
                                    <asp:TemplateField HeaderText="Presentation Upload">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTeamId" runat="server" Text='<%#Eval("TeamId") %>' Visible="false"></asp:Label>
                                            <asp:CheckBox ID="chkenable" runat="server"   Text=""
                                                 Visible='<%# Eval("PresentationUpload").ToString() == "False" ? true : false %>' 
                                                onclick="javascript:SelectEnableCheckboxes(this)" />
                                            <asp:CheckBox ID="chkDisable" runat="server"   Text="" Checked="true"
                                                 Visible='<%# Eval("PresentationUpload").ToString() == "False" ? false : true %>'
                                                 onclick="javascript:SelectDisableCheckboxes(this)" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <br />
                            <asp:Button ID="btnEnableRecord" runat="server" class="btn btn-success" OnClientClick="return ConfirmEnable();" OnClick="btnEnableRecord_Click" Text="Submit" />
                            <br />
                            <asp:HiddenField ID="hfEnableCount" runat="server" Value="0"  />
                            <asp:HiddenField ID="hfDisableCount" runat="server" Value="0"/>
                            <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                        </section>
                    </div>
                </div>

                <!-- page end-->
            </section>
        </section>
    </form>
</asp:Content>
