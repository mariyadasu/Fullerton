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
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">

    </script>

    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Scripts/scripts.js"></script>

    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    
 
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
                <div style="margin-left:110px">
              <div style="margin-left:110px">
                <uc:Registration ID="ucRegistration" runat="server" MinValue="1" MaxValue="10" />
 
                    </div>
            </form>
 
        </div>
    </section>

</body>
</html>
