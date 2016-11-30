<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConceptNoteDetails.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.ConceptNoteDetails"
    MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

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
                            <li><i class="fa fa-th-list"></i>Concept Note Details</li>
                        </ol>
                    </div>
                </div>
                
                <div class="row">
                   
                    <div class="col-sm-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Uploaded Concept/Presentation Documents
                            </header>
                            <asp:GridView ID="gvConcepts" runat="server" AutoGenerateColumns="false" Width="100%" 
                                AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvConcepts_PageIndexChanging" 
                                OnRowCommand="grdData_RowCommand"
                                CssClass="Grid"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                  <%--   <asp:BoundField DataField="SNO" HeaderText="SNO"
                                        SortExpression="SNO" />--%>
                                    <asp:BoundField DataField="INSNAME" HeaderText="Institute Name"
                                        SortExpression="INSNAME" />
                                      <asp:BoundField DataField="TeamName" HeaderText="Team name"
                                        SortExpression="TeamName" />
                                    <asp:TemplateField HeaderText="Concept Note 1">
                                        <ItemTemplate>
                                            <asp:Button ID="btnCPdownload" runat="server" CommandName="CPdownload" CommandArgument='<%#Eval("CPID")%>'
                                                Text="Download" Visible='<%# Eval("CPID").ToString() == "" ? false : true %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="CPDATE" HeaderText="Concept Note 1 TimeStamp"
                                        SortExpression="CPDATE" />
                                      <asp:TemplateField HeaderText="Concept Note 2">
                                        <ItemTemplate>
                                            <asp:Button ID="btnCP1download" runat="server" CommandName="CPdownload" CommandArgument='<%#Eval("CP1ID")%>'
                                                Text="Download" Visible='<%# Eval("CP1ID").ToString() == "" ? false : true %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="CPDATE1" HeaderText="Concept Note 2 TimeStamp"
                                        SortExpression="CPDATE1" />

                                     <asp:TemplateField HeaderText="Presentation 1">
                                        <ItemTemplate>
                                            <asp:Button ID="btnPPdownload" runat="server" CommandName="PPdownload" CommandArgument='<%#Eval("PPID")%>'
                                                Text="Download" Visible='<%# Eval("PPID").ToString() == "" ? false : true %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="PPDATE" HeaderText="Presentation 1 TimeStamp"
                                        SortExpression="PPDATE" />
                                      <asp:TemplateField HeaderText="Presentation 2">
                                        <ItemTemplate>
                                            <asp:Button ID="btnPP1download" runat="server" CommandName="PPdownload" CommandArgument='<%#Eval("PP1ID")%>'
                                                Text="Download" Visible='<%# Eval("PP1ID").ToString() == "" ? false : true %>'/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:BoundField DataField="PPDATE1" HeaderText="Presentation 2 TimeStamp"
                                        SortExpression="PPDATE1" />
                                </Columns>
                            </asp:GridView>
                        </section>
                    </div>
                </div>

                <!-- page end-->
            </section>
        </section>
        <input type="hidden" runat="server" id="hidConceptId" value="0" />
    </form>
</asp:Content>
