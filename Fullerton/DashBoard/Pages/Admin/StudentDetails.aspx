<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.StudentDetails"
    MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Grid {
            background-color: #fff;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
            font-family: Calibri;
            color: #474747;
        }

            .Grid td {
                padding: 2px;
                border: solid 1px #c1c1c1;
            }

            .Grid th {
                padding: 4px 2px;
                color: #fff;
                background: #363670 url(Images/grid-header.png) repeat-x top;
                border-left: solid 1px #525252;
                font-size: 0.9em;
            }

            .Grid .alt {
                background: #fcfcfc url(Images/grid-alt.png) repeat-x top;
            }

            .Grid .pgr {
                background: #363670 url(Images/grid-pgr.png) repeat-x top;
            }

                .Grid .pgr table {
                    margin: 3px 0;
                }

                .Grid .pgr td {
                    border-width: 0;
                    padding: 0 6px;
                    border-left: solid 1px #666;
                    font-weight: bold;
                    color: #fff;
                    line-height: 12px;
                }

                .Grid .pgr a {
                    color: Gray;
                    text-decoration: none;
                }

                    .Grid .pgr a:hover {
                        color: #000;
                        text-decoration: none;
                    }
    </style>
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
