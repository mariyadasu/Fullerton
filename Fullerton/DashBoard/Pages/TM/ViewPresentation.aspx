<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPresentation.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TM.ViewPresentation" MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

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
                            <li><i class="fa fa-home"></i><a href="TMDashBoard.aspx">Home</a></li>
                            <li><i class="fa fa-th-list"></i>View Presentation</li>
                        </ol>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-sm-8">
                        <section class="panel">
                            <header class="panel-heading">
                                Uploaded Presentations
                            </header>
                            <asp:GridView ID="gvConcepts" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvConcepts_PageIndexChanging" OnRowCommand="grdData_RowCommand"
                                CssClass="gv"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:BoundField DataField="SNO" HeaderText="SNO"
                                        SortExpression="SNO" />
                                    <asp:BoundField DataField="ContentText" HeaderText="Content Text"
                                        SortExpression="ContentText" />
                                    <asp:TemplateField HeaderText="Concept Note">
                                        <ItemTemplate>
   
                                            <asp:Button ID="btnDownload" runat="server" CommandName="download" CommandArgument='<%#Eval("ID")%>'
                                                Text="Download" />
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
        <input type="hidden" runat="server" id="hidConceptId" value="0" />
    </form>
        
     

</asp:Content>
 
