<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="EnentsCallender.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.EnentsCallender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form id="form2" runat="server">
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
                <div class="col-lg-3"></div>

                <div class="form-group" style="width: 100%">
                    <div class="row">
                        <div class="col-lg-3">
                            <span>Select Event Month :</span>
                        </div>
                        <div class="col-lg-3">
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

                            <asp:Button ID="btnGetEnets" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="Submit" OnClick="btnGetEnets_Click" />

                        </div>

                    </div>
                    <div class="form-group" style="width: 100%">
                        <div class="row">
                            <div id='calendar' text-align: center"></div>
                        </div>
                    </div>
                </div>


            </section>
        </section>
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
