<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstituteCoordinatorDetails.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.InstituteCoordinatorDetails"
    MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header">  </h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="fa fa-th-list"></i>Institute Coordinator Details</li>
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

                            <asp:GridView ID="gvICDetails" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvICDetails_PageIndexChanging"
                                CssClass="gv"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:TemplateField HeaderText="Institute Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblIstuteName" runat="server" Text='<%#Eval("InstituteName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Institute Coordinator" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblInstituteCoordinator" runat="server" Text='<%#Eval("InstituteCoordinator") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Contact No">
                                        <ItemTemplate>
                                            <asp:Label ID="lblContactNo" runat="server" Text='<%#Eval("ContactNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                                            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the Institute.');" OnClick="btnDelete_Click" />
                                            <asp:Label ID="lblInstituteId" runat="server" Text='<%#Eval("InstituteId") %>' Visible="false"></asp:Label>
                                             <asp:Label ID="lblPassword" runat="server" Text='<%#Eval("PassWord") %>' Visible="false"></asp:Label>
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
                                Add/Modify Institute
                            </header>
                            <div class="panel-body">
                                <table align="center" style="position: relative; top: 20px;">
                                    <tr>
                                        <td>
                                            <table align="center">
                                                <tr>
                                                    <td>Institute Name :
                                                    </td>
                                                    <td>
                                                         <asp:TextBox ID="txtInstitueName" runat="server" MaxLength="100" Width="250px"></asp:TextBox>
                                                    
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Institute Coordinator:
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtInstituteCoordinator" runat="server"   Width="250px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Email :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtIEmail" runat="server" MaxLength="100" Width="250px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>Password :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtIPwd" runat="server" TextMode="Password" MaxLength="100" Width="250px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>Mobile No :
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtIMobileNo" runat="server" MaxLength="10" Width="250px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" align="center">
                                                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"
                                                            Visible="false" />
                                                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <br />
                                            <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Blue"></asp:Label>
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
         <input type="hidden" runat="server" id="hidInstituteId" />
    </form>
</asp:Content>
