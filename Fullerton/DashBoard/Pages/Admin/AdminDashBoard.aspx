<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.AdminDashBoard" 
    MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

 <asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

 </asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="AdminDashBoard.aspx">Home</a></li>
						<li><i class="fa fa-laptop"></i>Dashboard</li>						  	
					</ol>
				</div>
			</div>
              
            <div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box blue-bg">
						<i class="fa fa-cloud-download"></i>
						<div class="count">674</div>
						<div class="title">Total Team Members</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->
				
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box brown-bg">
						<i class="fa fa-shopping-cart"></i>
						<div class="count">538</div>
						<div class="title">Total Team Coordinator</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->	
				
			 
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box green-bg">
						<i class="fa fa-cubes"></i>
						<div class="count">426</div>
						<div class="title">Events</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->
				
			</div><!--/.row-->
		
		 
          </section>
      </section>
</asp:Content>