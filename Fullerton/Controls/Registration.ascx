<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registration.ascx.cs" Inherits="Fullerton.Controls.Registration" %>
<div class="bodycontainer">

    <fieldset>

        <div class="form-group text-aline-left">
            <label for="txtEmailId">Email Id <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="50" runat="server" ID="txtEmailId" ClientIDMode="Static"></asp:TextBox>
            <label id="txtEmailIdError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtUserName">Password <span class="red-text">*</span></label>
            <asp:TextBox runat="server" MaxLength="12" ID="txtPassword" ClientIDMode="Static" TextMode="Password" class="form-control"></asp:TextBox>
            <label id="txtPasswordError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtConformPwd">Confirm Password <span class="red-text">*</span></label>
            <asp:TextBox runat="server" MaxLength="12" ID="txtConformPwd" ClientIDMode="Static" TextMode="Password" class="form-control"></asp:TextBox>
            <label id="txtConformPwdError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtFirstNAme">First Name <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="50" runat="server" ID="txtFirstNAme" ClientIDMode="Static"></asp:TextBox>
            <label id="txtFirstNAmeError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtLastName">Lat Name <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="50" runat="server" ID="txtLastName" ClientIDMode="Static"></asp:TextBox>
            <label id="txtLastNameError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtDOB">DOB <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="10" runat="server" ID="txtDOB" ClientIDMode="Static" Enabled="false" EnableViewState="false"></asp:TextBox>
            <label id="txtDOBError" class="red-text"></label>
        </div>

        <div class="text-aline-left">

            <button type="button" class="btn btn-next-1 btn-warning">Next</button>
        </div>

    </fieldset>

    <fieldset>

        <div class="form-group text-aline-left">
            <label for="ddlInstitute">Institute <span class="red-text">*</span></label>
            <asp:DropDownList class="form-control dropdown-width-18" ID="ddlInstitute" runat="server" ClientIDMode="Static">
            </asp:DropDownList>
            <label id="ddlInstituteError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtMobileNo">Mobile No <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="50" runat="server" ID="txtMobileNo" ClientIDMode="Static"></asp:TextBox>
            <label id="txtMobileNoError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="ddlCourse">Course <span class="red-text">*</span></label>
            <asp:DropDownList class="form-control dropdown-width-18" ID="ddlCourse" runat="server" ClientIDMode="Static">
                <asp:ListItem Value="0" Text="SELECT"></asp:ListItem>
                <asp:ListItem Value="1" Text="BE/BTech"></asp:ListItem>
                <asp:ListItem Value="2" Text="M.Tech"></asp:ListItem>
                <asp:ListItem Value="3" Text="Polytechnic"></asp:ListItem>
                <asp:ListItem Value="4" Text="Incubated Startup"></asp:ListItem>
                <asp:ListItem Value="1000" Text="Other"></asp:ListItem>
            </asp:DropDownList>

            <asp:TextBox class="form-control" MaxLength="50" runat="server" ID="txtCourseOther" ClientIDMode="Static"></asp:TextBox>

            <label id="ddlCourseError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="ddlCourseType">Course Type <span class="red-text">*</span></label>
            <asp:DropDownList class="form-control dropdown-width-18" ID="ddlCourseType" runat="server" ClientIDMode="Static">
                <asp:ListItem Value="0" Text="SELECT"></asp:ListItem>
                <asp:ListItem Value="1" Text="Full Time"></asp:ListItem>
                <asp:ListItem Value="2" Text="Part Time"></asp:ListItem>
            </asp:DropDownList>

            <label id="ddlCourseTypeError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtHomeTown">Home Town <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="100" ID="txtHomeTown" runat="server" ClientIDMode="Static"></asp:TextBox>

            <label id="txtHomeTownError" class="red-text"></label>
        </div>

        <div class="text-aline-left">
            <button type="button" class="btn btn-previous btn-warning">Previous</button>
            <button type="button" class="btn btn-next-2 btn-warning">Next</button>
        </div>

    </fieldset>

    <fieldset>

        <div class="form-group text-aline-left">
            <label for="txtPerminentAddress">Permanent address <span class="red-text">*</span></label>
            <asp:TextBox class="form-control dropdown-width-18" runat="server" TextMode="MultiLine" ID="txtPerminentAddress" ClientIDMode="Static"></asp:TextBox>
            <label id="txtPerminentAddressError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="ddlSemisters">Year/Semester <span class="red-text">*</span></label>
            <asp:DropDownList class="form-control dropdown-width-18" ID="ddlSemisters" runat="server" ClientIDMode="Static">
                <asp:ListItem Value="0" Text="SELECT"></asp:ListItem>
                <asp:ListItem Value="1" Text="First"></asp:ListItem>
                <asp:ListItem Value="3" Text="Second"></asp:ListItem>
                <asp:ListItem Value="4" Text="Third"></asp:ListItem>
                <asp:ListItem Value="5" Text="Fourth"></asp:ListItem>
                <asp:ListItem Value="6" Text="Fifth"></asp:ListItem>
                <asp:ListItem Value="7" Text="Sixth"></asp:ListItem>
                <asp:ListItem Value="8" Text="Seventh"></asp:ListItem>
                <asp:ListItem Value="9" Text="Enght"></asp:ListItem>
            </asp:DropDownList>
            <label id="ddlSemistersError" class="red-text"></label>
        </div>

        <div class="form-group text-aline-left">
            <label for="txtRollNo">Roll/Hall ticket/Admission Number <span class="red-text">*</span></label>
            <asp:TextBox class="form-control" MaxLength="50" runat="server" ID="txtRollNo" ClientIDMode="Static"></asp:TextBox>
            <label id="txtRollNoError" class="red-text"></label>
        </div>


        <div class="form-group text-aline-left">
            <label for="fluImage">Photograph</label>
            <asp:FileUpload ID="fluImage" runat="server" ClientIDMode="Static" />
            <label id="fluImageError" class="red-text"></label>
        </div>


        <div class="form-group text-aline-left">
            <label for="ddlTeamNames">Team Name <span class="red-text">*</span> :</label>
            <asp:DropDownList class="form-control dropdown-width-18" ID="ddlTeamNames" runat="server" ClientIDMode="Static">
            </asp:DropDownList>
            <asp:HiddenField ID="hdnTeamdID" ClientIDMode="Static" runat="server" Value="0" />
            <asp:TextBox runat="server" class="form-control" MaxLength="100" ID="txtTeamName" ClientIDMode="Static"></asp:TextBox>
            <label id="ddlTeamNamesError" class="red-text"></label>
        </div>


        <div class="form-group text-aline-left">
            <button type="button" class="btn btn-previous btn-warning">Previous</button>
            <asp:Button ID="btnSubmit" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="SignUp" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnnidden" runat="server" Text="Submit" Style="visibility: hidden; display: none;" OnClick="btnRedirect_Click" />
            <%--<button type="button" class="btn btn-next-3 btn-warning">SUBMIT</button>--%>
        </div>
    </fieldset>
</div>


<script type="text/javascript">

    $(document).ready(function () {

        $("#txtDOB").datepicker({
            changeMonth: true,
            changeYear: true,
            ignoreReadonly: false,
            maxDate: 'now'
        });
        $("#ddlTeamNames").change(function () {

            debugger;

            var ddlTeamNames = $("#ddlTeamNames").val();

            $("#hdnTeamdID").val(ddlTeamNames);

            $("#txtTeamName").attr("style", "display:none");
            $("#txtTeamName").val("");
            if (ddlTeamNames == "1000") {
                $("#hdnTeamdID").val("0");
                $("#txtTeamName").attr("style", "display:block");
            }
        });


        $("#ddlCourse").change(function () {
            var ddlCourse = $("#ddlCourse").val();
            $("#txtCourseOther").val("");
            $("#txtCourseOther").attr("style", "display:none");
            if (ddlCourse == "1000") {
                $("#txtCourseOther").attr("style", "display:block");
            }
        });

        $("#ddlInstitute").change(function () {
            debugger;

            var institute = $("#ddlInstitute").val();

            $.ajax({
                type: "POST",
                url: "../FullertonService.asmx/GetTeamsByInstitute",
                contentType: "application/json; charset=utf-8",
                type: 'POST',
                dataType: 'JSON',
                async: false,
                data: JSON.stringify({ id: institute }),
                success: function (data) {
                    debugger;
                    //var json_obj = $.parseJSON(data.d);//json return type parse to object type

                    if (data.d == "") {
                        $("#ddlTeamNames").html("<option value='0'>SELECT</option><option value='1000'>Other</option>");

                        $("#ddlTeamNames").attr("style", "display:none");
                        $("#txtTeamName").attr("style", "display:block");
                    }

                    if (data.d != "") {
                        $("#ddlTeamNames").attr("style", "display:block");
                        $("#txtTeamName").attr("style", "display:none");
                        $("#ddlTeamNames").html(data.d);
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    debugger;
                }
            });
        });

        //$(".email").change(function () {
            
        //});
    });

    function Redirection() {
        alert("Registration Successfully Completed");
        jQuery("#<%=btnnidden.ClientID%>").trigger("click");
        return true;
    }
</script>
