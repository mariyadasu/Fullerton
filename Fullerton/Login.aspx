<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fullerton.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1-vsdoc.js"></script>
    <script src="Scripts/jquery-1.4.1.js"></script>
    <script src="Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript">
    function Validate(btnsubmit){
            var UserEmail = $("#<%=txtuserid.ClientID%>");
            var UserPassword = $("#<%=txtpassword.ClientID%>");            
            if (UserEmail.val() == "") {
                alert("Please enter Email ID.");
                UserEmail.val('');
                UserEmail.focus();
                 return false;
                }              
            else {
                var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                if (!filter.test(UserEmail.val())) {
                    UserEmail.val('');
                    alert("Please enter valid user id.");
                    return false;
            }
            if (UserPassword.val() == "") {
                alert("Please enter Password.");
                UserPassword.val('');
                UserPassword.focus();
                return false;
            } 
            return true;
        }
    }
        function CheckForgot(btnsignin) {
            var UserEmail = $("#<%=txtuserid.ClientID%>");
            if (UserEmail.val() == "") {
                alert("Please enter Email ID.");
                UserEmail.val('');
                UserEmail.focus();
                return false;
            }              
            else {
                var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                if (!filter.test(UserEmail.val())) {
                    UserEmail.val('');
                    alert("Please enter valid user id.");
                    return false;
                }
        }
        </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="msgdiv" runat="server" />
        <table id="tbllogin" align="center" border="0">
            <tr>
                <td>User ID</td>
                <td>
                    <asp:TextBox ID="txtuserid" runat="server" /></td>
            </tr>
            <tr>
                <td>Password
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" /></td>
            </tr>
            <tr><td></td>
                <td>
                    <asp:CheckBox ID="chkremeber" runat="server" Text="Remember me" />
                </td>
            </tr>
            <tr><td></td>
                <td><a href="#">Forgot Password ?</a></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClientClick="return Validate(this);" OnClick="btnsubmit_Click" /></td>
                <td>
                    <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" /></td>
            </tr>

        </table>
    </form>
</body>
</html>

