
jQuery(document).ready(function () {

    /*
        Fullscreen background
    */
    //$.backstretch("assets/img/backgrounds/1.jpg");

    $('#top-navbar-1').on('shown.bs.collapse', function () {
        $.backstretch("resize");
    });
    $('#top-navbar-1').on('hidden.bs.collapse', function () {
        $.backstretch("resize");
    });

    /*
        Form
    */
    $('.registration-form fieldset:first-child').fadeIn('slow');

    $('.registration-form input[type="text"], .registration-form input[type="password"], .registration-form textarea').on('focus', function () {
        $(this).removeClass('input-error');
    });

    // next step
    $('.registration-form .btn-next-1').on('click', function () {
        var parent_fieldset = $(this).parents('fieldset');
        var next_step = true;

        debugger;
        //var txtUserName = $("#txtUserName").val();
        var txtEmailId = $("#txtEmailId").val();
        var txtPassword = $("#txtPassword").val();
        var txtConformPwd = $("#txtConformPwd").val();
        var txtFirstNAme = $("#txtFirstNAme").val();
        var txtDOB = $("#txtDOB").val();
        var txtLastName = $("#txtLastName").val();

        //$("#txtUserNameError")[0].innerText="";
        $("#txtEmailIdError")[0].innerText = "";
        $("#txtPasswordError")[0].innerText = "";
        $("#txtConformPwdError")[0].innerText = "";
        $("#txtFirstNAmeError")[0].innerText = "";
        $("#txtLastNameError")[0].innerText = "";
        $("#txtDOBError")[0].innerText = "";

        if (txtEmailId == "") {
            $("#txtEmailIdError")[0].innerText = "Please Enter Email Id";
            next_step = false;
        }

        var IsvalidEmail = true;

        if (txtEmailId != "")
            var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (!filter.test(txtEmailId)) {
            $("#txtEmailIdError")[0].innerText = "Please Enter valid Email ID";
            IsvalidEmail = false;
            next_step = false;
        }
        debugger;
        if (txtEmailId != "" && IsvalidEmail) {
            $.ajax({
                type: "POST",
                url: "../FullertonService.asmx/CheckEmailExist",
                contentType: "application/json; charset=utf-8",
                type: 'POST',
                dataType: 'JSON',
                async: false,
                data: JSON.stringify({ email: txtEmailId }),
                success: function (data) {

                    if (data.d == true) {
                        $("#txtEmailIdError")[0].innerText = "Email Already Exist";
                        next_step = false;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    debugger;
                }
            });
        }


        if (txtPassword == "") {
            $("#txtPasswordError")[0].innerText = "Please Enter Password";
            next_step = false;
        }

        if (txtPassword != "") {
            var filter = /(?!^[0-9]*$)(?!^[a-zA-Z~|!@#$%^&*()+=_-]*$)^([a-zA-Z0-9~!|@#$%^&*()+=_-]{8,})$/
            if (!filter.test(txtPassword)) {

                $("#txtPasswordError")[0].innerText = "Password should be at least 8 characters long,\n include at least 1 number and at least 1 alphabet or special character.";
            }
        }

        if (txtConformPwd == "") {
            $("#txtConformPwdError")[0].innerText = "Please Enter Confirm Password";
            next_step = false;
        }

        if (txtPassword != "" && txtConformPwd != "") {
            if (txtPassword != txtConformPwd) {
                $("#txtConformPwdError")[0].innerText = "Miss Match in Password and Confirm Password";
                next_step = false;
            }
        }

        if (txtFirstNAme == "") {
            $("#txtFirstNAmeError")[0].innerText = "Please Enter First Name";
            next_step = false;
        }


        if (txtLastName == "") {
            $("#txtLastNameError")[0].innerText = "Please Enter Lst Name";
            next_step = false;
        }
        if (txtDOB == "") {
            $("#txtDOBError")[0].innerText = "Please Enter DOB";
            next_step = false;
        }

        if (next_step) {
            parent_fieldset.fadeOut(400, function () {
                $(this).next().fadeIn();
            });
        }

    });

    $('.registration-form .btn-next-2').on('click', function () {
        var parent_fieldset = $(this).parents('fieldset');
        var next_step = true;
        debugger;
        var ddlInstitute = $("#ddlInstitute").val();

        var txtMobileNo = $("#txtMobileNo").val();
        var ddlCourse = $("#ddlCourse").val();
        var ddlCourseType = $("#ddlCourseType").val();
        var txtHomeTown = $("#txtHomeTown").val();

        $("#ddlInstituteError")[0].innerText = "";

        $("#txtMobileNoError")[0].innerText = "";
        $("#ddlCourseError")[0].innerText = "";
        $("#ddlCourseTypeError")[0].innerText = "";
        $("#txtHomeTownError")[0].innerText = "";

        if (ddlInstitute == "0") {
            $("#ddlInstituteError")[0].innerText = "Please Enter Institute";
            next_step = false;
        }


        if (txtMobileNo == "") {
            $("#txtMobileNoError")[0].innerText = "Please Enter Mobile No";
            next_step = false;
        }
        if (ddlCourse == "0") {
            $("#ddlCourseError")[0].innerText = "Please Enter Course";
            next_step = false;
        }
        if (ddlCourseType == "0") {
            $("#ddlCourseTypeError")[0].innerText = "Please Enter Course Type";
            next_step = false;
        }
        if (txtHomeTown == "") {
            $("#txtHomeTownError")[0].innerText = "Please Enter Home Town";
            next_step = false;
        }

        if (next_step) {
            parent_fieldset.fadeOut(400, function () {
                $(this).next().fadeIn();
            });
        }

    });

    $('.registration-form .btn-next-3').on('click', function () {
        var parent_fieldset = $(this).parents('fieldset');
        var next_step = true;

        var txtPerminentAddress = $("#txtPerminentAddress").val();
        var ddlSemisters = $("#ddlSemisters").val();
        var txtRollNo = $("#txtRollNo").val();
        var fluImage = $("#fluImage").val();
        var ddlTeamNames = $("#ddlTeamNames").val();
        var txtTeamName = $("#txtTeamName").val();

        $("#txtPerminentAddressError")[0].innerText = "";
        $("#ddlSemistersError")[0].innerText = "";
        $("#txtRollNoError")[0].innerText = "";
        $("#ddlTeamNamesError")[0].innerText = "";

        if (txtPerminentAddress == "") {
            $("#txtPerminentAddressError")[0].innerText = "Please Enter Address";
            next_step = false;
        }
        if (ddlSemisters == "0") {
            $("#ddlSemistersError")[0].innerText = "Please Enter Semister";
            next_step = false;
        }
        if (txtRollNo == "") {
            $("#txtRollNoError")[0].innerText = "Please Enter Roll No";
            next_step = false;
        }
        if (ddlTeamNames == "0" && txtTeamName == "") {
            $("#ddlTeamNamesError")[0].innerText = "Please Enter Team Name";
            next_step = false;
        }

        if (!next_step)
            return false;

        debugger;
        $('#btnSubmit').click();
        return true;
    });

    // previous step
    $('.registration-form .btn-previous').on('click', function () {
        $(this).parents('fieldset').fadeOut(400, function () {
            $(this).prev().fadeIn();
        });
    });

    // submit
    //$('.registration-form').on('submit', function (e) {

    //    $(this).find('input[type="text"], input[type="password"], textarea').each(function () {
    //        if ($(this).val() == "") {
    //            e.preventDefault();
    //            $(this).addClass('input-error');
    //        }
    //        else {
    //            $(this).removeClass('input-error');
    //        }
    //    });

    //});


});
