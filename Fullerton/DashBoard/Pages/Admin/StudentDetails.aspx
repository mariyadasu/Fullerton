<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.StudentDetails"
    MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form1" runat="server">
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-table"></i>Table</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="fa fa-th-list"></i>Student Details</li>
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

                        <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="true" Width="100%" 
                            AllowPaging="true" PageSize="8" OnPageIndexChanging="gvStudent_PageIndexChanging"
                            CssClass="Grid"
                            AlternatingRowStyle-CssClass="alt"
                            PagerStyle-CssClass="pgr">
                        </asp:GridView>

                         
                    </section>
                </div>
            </div>

            <!-- page end-->
        </section>
    </section>
       </form>
</asp:Content>
