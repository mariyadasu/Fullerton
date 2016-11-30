<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard/DashboardMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TC.Profile" %>

<%@ Register TagPrefix="uc" TagName="Registration" Src="~/Controls/Registration.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="~/Scripts/scripts.js"></script>

    <link href="~/css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <uc:Registration ID="ucRegistration" runat="server" MinValue="1" MaxValue="10" />
    </form>
</asp:Content>
