<%@ Page Language="C#" enableEventValidation="false" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Fullerton.Registration" %>
<%@ Register TagPrefix="uc" TagName="Registration" Src="~/Controls/Registration.ascx" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script src="Scripts/DateFormat.js"></script>
    <script src="Scripts/popcalendarrep.js"></script>
    <script src="Scripts/jquery-1.4.1-vsdoc.js"></script>
    <script src="Scripts/jquery-1.4.1.js"></script>
    <script src="Scripts/jquery-1.4.1.min.js"></script>--%>
    <link href="css/LoginStyle.css" rel="stylesheet" />
    <script type="text/javascript">

<%--        function Validateall(btnRegister) {
            debugger;
            var txtfname = document.getElementById("<%=txtfname.ClientID%>");
            var txtlname = document.getElementById("<%=txtlname.ClientID%>");
            var txtdob = document.getElementById("<%=txtdob.ClientID%>");
            var ddlinstitute = document.getElementById("<%=ddlinstitute.ClientID%>");
            var txtEmailID = document.getElementById("<%=txtEmailID.ClientID%>");
            var txtpwd = document.getElementById("<%=txtPassword.ClientID%>");
            var txtcpwd = document.getElementById("<%=txtConfirmPwd.ClientID%>");
            var txtMobileNo = document.getElementById("<%=txtMobileNo.ClientID%>");
            var ddlCourse = document.getElementById("<%=ddlCourse.ClientID%>");
            var ddlCourseType = document.getElementById("<%=ddlCourseType.ClientID%>");
            var txtHomeTown = document.getElementById("<%=txtHomeTown.ClientID%>");
            var txtPermanetAddress = document.getElementById("<%=txtPermanetAddress.ClientID%>");
            var ddlyear = document.getElementById("<%=ddlyear.ClientID%>");
            var txtRollNo = document.getElementById("<%=txtRollNo.ClientID%>");
            var txtTeamName = document.getElementById("<%=txtTeamName.ClientID%>");
            var checkConfirm = document.getElementById("<%=checkConfirm.ClientID%>");
            if (txtEmailID.value == "") {
                alert("Please enter email id.");
                txtEmailID.focus();
                return false;
            }
            else {
                var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                if (!filter.test(txtEmailID.value)) {
                    alert("Please enter valid Email ID");
                    txtEmailID.focus();
                    return false;
                }
            }
            if (txtpwd.value == "") {
                alert("Please enter password.");
                txtpwd.focus();
                return false;
            }
            else {
                var x = txtpwd.value;
                var filter = /(?!^[0-9]*$)(?!^[a-zA-Z~|!@#$%^&*()+=_-]*$)^([a-zA-Z0-9~!|@#$%^&*()+=_-]{8,})$/
                if (!filter.test(x)) {
                    alert("Password should be at least 8 characters long, include at least 1 number and at least 1 alphabet or special character.");
                    txtpwd.value = '';
                    txtpwd.focus();
                    return false;
                }
            }
            if (txtcpwd.value == "") {
                alert("Please enter confirm password.");
                txtcpwd.focus();
                return false;
            }
            else {
                var x = txtcpwd.value;
                var filter = /(?!^[0-9]*$)(?!^[a-zA-Z~|!@#$%^&*()+=_-]*$)^([a-zA-Z0-9~!|@#$%^&*()+=_-]{8,})$/
                if (!filter.test(x)) {
                    alert("Password should be at least 8 characters long, include at least 1 number and at least 1 alphabet or special character.");
                    txtcpwd.focus();
                    txtcpwd.value = '';
                    return false;
                }
            }
            if (txtpwd.value != txtcpwd.value) {
                alert("Confirm password does not match password.");
                txtcpwd.value = '';
                txtcpwd.focus();
                return false;
            }
            if (txtfname.value == "") {
                alert("Please enter first name.");
                txtfname.focus();
                return false;
            }
            if (txtlname.value == "") {
                alert("Please enter last name.");
                txtlname.focus();
                return false;
            }
            if (txtdob.value == "") {
                alert("Please enter date of birth.");
                txtdob.focus();
                return false;
            }
            else {
                if (!DateFieldsValidation(txtdob, txtdob.value, "Join Date")) {
                    txtdob.focus();
                    txtdob.value = '';
                    return false;
                }
            }
            if (ddlinstitute.value == "0") {
                alert("Please select institute name.");
                ddlinstitute.focus();
                return false;
            }
            if (txtMobileNo.value == "") {
                alert("Please enter Mobile NO.");
                txtMobileNo.focus();
                return false;
            }
            else {
                var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
                if (!txtMobileNo.value.match(phoneno)) {
                    alert("Not a valid Phone Number");
                    return false;
                }

            }
            if (ddlCourse.value == "0") {
                alert("Please select Course.");
                ddlCourse.focus();
                return false;
            }
            if (ddlCourseType.value == "0") {
                alert("Please select Course type.");
                ddlCourseType.focus();
                return false;
            }
            if (txtHomeTown.value == "") {
                alert("Please enter Home town.");
                txtHomeTown.focus();
                return false;
            }
            if (txtPermanetAddress.value == "") {
                alert("Please enter text permanet Address.");
                txtPermanetAddress.focus();
                return false;
            }
            if (ddlyear.value == "-1") {
                alert("Please select Year/Semester.");
                ddlyear.focus();
                return false;
            }
            if (txtRollNo.value == "") {
                alert("Please enter role no.");
                txtRollNo.focus();
                return false;
            }
            if (txtTeamName.value == "") {
                alert("Please enter team Name.");
                txtTeamName.focus();
                return false;
            }
             
            if (checkConfirm.checked == false) {
                alert("Please select terms and conditions.");
                checkConfirm.focus();
                return false;
            }
            return true;
        }
        function DateFieldsValidation(obj, objvalue, objName) {
            if (objvalue != '') {
                if (!DateFormat(obj, objvalue, event, true, '1')) {
                    return false;
                }
                else
                    return true;
            }
            return true;
        }
        function ShowCourseTextBox() {
            var ddlcourse = document.getElementById("<%=ddlCourse.ClientID%>");
            var Couseli = document.getElementById("<%=Couseli.ClientID%>");
            Couseli.style.display = ddlcourse.value == "Others" ? "block" : "none";
        }
        --%>
    </script>

    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/scripts.js"></script>

    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
</head>
<body>

    <section class="container">

        <div class="SignUp">
            <h1>Student SignUp</h1>
            <form id="Form2" method="post" runat="server" class="registration-form">
                <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="form_sub">
                    <ul>
                        <li>
                            <label>
                                Email</label>
                            <asp:TextBox ID="txtEmailID" runat="server" placeholder="Email ID" />
                        </li>
                        <li>
                            <label>
                                Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" />
                        </li>
                        <li>
                            <label>
                                Confirm  Password</label>
                            <asp:TextBox ID="txtConfirmPwd" runat="server" placeholder="Password" />
                        </li>
                        <li>
                            <label>
                                First Name</label>
                            <asp:TextBox ID="txtfname" runat="server" placeholder="First Name" />
                        </li>

                        <li>
                            <label>
                                Last Name</label>
                            <asp:TextBox ID="txtlname" runat="server" placeholder="Last Name" />
                        </li>
                        <li>
                            <label>
                                DOB</label>
                            <asp:TextBox ID="txtdob" runat="server" placeholder="Date Of Birth" />
                        </li>
                        <li>
                            <label>
                                Institute</label>
                            <asp:DropDownList ID="ddlinstitute" runat="server" placeholder="Institute">
                            </asp:DropDownList>
                        </li>

                        <li>
                            <label>
                                Mobile Number
                            </label>
                            <asp:TextBox ID="txtMobileNo" runat="server" placeholder="Mobile No" />
                        </li>
                        <li>
                            <label>
                                Course 
                            </label>
                            <asp:DropDownList ID="ddlCourse" runat="server" placeholder="Course" onchange = "ShowCourseTextBox()">
                                <asp:ListItem Text="Select Course" Value="0"></asp:ListItem>
                                <asp:ListItem Text="BE/B.Tech" Value="BE/B.Tech"></asp:ListItem>
                                <asp:ListItem Text="M.Tech" Value="M.Tech"></asp:ListItem>
                                <asp:ListItem Text="MBA" Value="MBA"></asp:ListItem>
                                <asp:ListItem Text="Polytechnic" Value="Polytechnic"></asp:ListItem>
                                <asp:ListItem Text="Incubated Startup" Value="Incubated Startup"></asp:ListItem>
                                <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                            </asp:DropDownList>
                              
                        </li>
                         <li id="Couseli" runat="server" style="display: none" >
                            <label>
                            </label>
                             <asp:TextBox ID="txtCourse" runat="server" placeholder="Course" />
                        </li>
                        <li>
                            <label>
                                Course Type 
                            </label>
                            <asp:DropDownList ID="ddlCourseType" runat="server">
                                <asp:ListItem Text="Select Course Type" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Fulltime" Value="Fulltime"></asp:ListItem>
                                <asp:ListItem Text="Part time" Value="Part time"></asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <label>
                                Home Town  
                            </label>
                            <asp:TextBox ID="txtHomeTown" runat="server" placeholder="Home Town" />
                        </li>
                        <li>
                            <label>
                                Permanent address 
                            </label>
                            <asp:TextBox ID="txtPermanetAddress" runat="server" placeholder="Permanent Address" />
                        </li>
                        <li>
                            <label>
                                Year/Semester  
                            </label>
                            <asp:DropDownList ID="ddlyear" runat="server">
                                <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                <asp:ListItem Text="8" Value="8"></asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <label>
                                Roll No 
                            </label>
                            <asp:TextBox ID="txtRollNo" runat="server" placeholder="Roll/Hall ticket/Admission Number " />
                        </li>
                        <li>
                            <label>
                                Photograph  
                            </label>
                            <asp:FileUpload ID="PhotoUpload" runat="server" />
                        </li>
                        <li>
                            <label>
                                Team Name 
                            </label>
                            <asp:TextBox ID="txtTeamName" runat="server" placeholder="Team Name " />
                        </li>

                        <asp:CheckBox ID="checkConfirm" runat="server" Text="Please confirm that you have read and understood the Terms and Conditions  (hyperlink to T&Cs page) and agree to the same" />

                        <li>
                            <div align="right">
                                <p class="submit">
                                    <asp:Button ID="btnSignup" runat="server" Text="SignUp" Font-Bold="true" CssClass="btnStyle" OnClientClick="return Validateall(this);" />
                                </p>
                            </div>
                            <p><a href="Home.aspx" style="font-weight: bold">Go To Home</a>.</p>
                        </li>
                    </ul>
                </div>--%>

                <uc:Registration ID="ucRegistration" runat="server" MinValue="1" MaxValue="10" />
            </form>
        </div>
    </section>

</body>
</html>
