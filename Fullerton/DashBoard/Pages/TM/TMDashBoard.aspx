﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="TMDashBoard.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TM.TMDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-table"></i>Table</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="fa fa-th-list"></i>Member Details</li>
                        </ol>
                    </div>
                </div>
                <!-- page start-->
                <div class="row">

                    <div class="col-sm-12">
                        <section class="panel">

                           <asp:GridView ID="gdvMembers" OnRowCommand="gdvMembers_RowCommand" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true"
                                CssClass="Grid"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" />
                                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" />
                                    <asp:BoundField DataField="CourseName" HeaderText="CourseName" />
                                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" />

                                    <asp:TemplateField HeaderText="Manage">
                                        <ItemTemplate>
                                            <asp:LinkButton CssClass="deleteclass" 
                                                runat="server" ID="lnkWithDrawn" CommandArgument='<%#Eval("UserId") %>'
                                                Visible='<%# Eval("UserId").ToString() ==  HttpContext.Current.Session["UserId"].ToString()  ? true : false %>' 

                                                CommandName="withDrawn">WithDrawn</asp:LinkButton>
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
    </form>

     <script type="text/javascript">
        $(document).ready(function () {
            
            $(".deleteclass").on("click", function () {

                if (!confirm("Are you sure you want to withdrawn from Team")) {
                    return false;
                }
                return true;
            });
        });
    </script>
</asp:Content>
