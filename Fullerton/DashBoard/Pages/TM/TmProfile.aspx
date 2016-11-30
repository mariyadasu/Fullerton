<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="TmProfile.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TM.TmProfile" %>

<%@ Register TagPrefix="uc" TagName="Registration" Src="~/Controls/Registration.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form2" runat="server" class="registration-form">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-table"></i>Table</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="fa fa-th-list"></i>Profile</li>
                        </ol>
                    </div>
                </div>
                <!-- page start-->
                <div class="row">

                    <div class="col-sm-12">
                        <section class="panel">

                            <uc:Registration ID="ucRegistration" runat="server" MinValue="1" MaxValue="10" />
                           
                        </section>
                    </div>
                </div>

                <!-- page end-->
            </section>
        </section>
    </form>
   <script type="text/javascript">
       //$('.btn-warning').attr("style", "display:none");
   </script>
</asp:Content>
