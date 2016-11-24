<%@ Page Language="C#" enableEventValidation="true" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="Fullerton.TC.StudentRegistration" %>
<%@ Register TagPrefix="uc" TagName="Registration" Src="~/Controls/Registration.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../Scripts/scripts.js"></script>

    <link href="../css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
</head>
<body>
    <form id="form1" runat="server" class="registration-form">
    <uc:Registration ID="ucRegistration" runat="server" MinValue="1" MaxValue="10" />
    </form>
</body>
</html>
