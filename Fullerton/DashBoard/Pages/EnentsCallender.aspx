﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="EnentsCallender.aspx.cs" Inherits="Fullerton.DashBoard.Pages.EnentsCallender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
    <style>
        body {
            margin: 40px 10px;
            padding: 0;
            font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
            font-size: 14px;
        }

        #calendar {
            max-width: 900px;
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="form-horizontal" style="padding-top:70px;">

            <div class="form-group">
                        <div class="row">
                            <div class="col-md-3">
                                <span>Select Event Month :</span>
                            </div>
                            <div class="col-md-3">
                                <asp:DropDownList ID="ddlMonth" runat="server">
                                    <asp:ListItem Text="Jan-2016" Value="01-2016"></asp:ListItem>
                                    <asp:ListItem Text="Feb-2016" Value="02-2016"></asp:ListItem>
                                    <asp:ListItem Text="Mar-2016" Value="03-2016"></asp:ListItem>
                                    <asp:ListItem Text="Apr-2016" Value="04-2016"></asp:ListItem>
                                    <asp:ListItem Text="May-2016" Value="05-2016"></asp:ListItem>
                                    <asp:ListItem Text="Jun-2016" Value="06-2016"></asp:ListItem>
                                    <asp:ListItem Text="Jul-2016" Value="07-2016"></asp:ListItem>
                                    <asp:ListItem Text="Aug-2016" Value="08-2016"></asp:ListItem>
                                    <asp:ListItem Text="Sep-2016" Value="09-2016"></asp:ListItem>
                                    <asp:ListItem Text="Oct-2016" Value="10-2016"></asp:ListItem>
                                    <asp:ListItem Text="Nov-2016" Value="11-2016"></asp:ListItem>
                                    <asp:ListItem Text="Dec-2016" Value="12-2016"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="btnGetEnets" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="Submit" OnClick="btnGetEnets_Click" />

                            </div>
                        </div>

                    </div>
            <div class="col-md-12">

                <div id='calendar' style="width:800px;text-align:center"></div>

            </div>
        </div>
    </form>

    <script type="text/javascript">

        $(document).ready(function () {
           
            var eventsArray = <%=events%>;
            var startDate=<%=defaultDate%>;
            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay,listWeek'
                },
                defaultDate: startDate,
                navLinks: true, // can click day/week names to navigate views
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                events:eventsArray
            });

        });
         
    </script>
</asp:Content>