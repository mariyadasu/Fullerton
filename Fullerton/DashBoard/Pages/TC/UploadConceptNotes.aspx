<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadConceptNotes.aspx.cs" Inherits="Fullerton.DashBoard.Pages.TC.UploadConceptNotes" MasterPageFile="~/DashBoard/DashboardMaster.Master" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"></h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="TcDashBoard.aspx">Home</a></li>
                            <li><i class="fa fa-th-list"></i>Upload Concepts</li>
                        </ol>
                    </div>
                </div>
                <!-- page start-->
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <section class="panel">
                            <header class="panel-heading">
                                Upload Concept Notes
                            </header>
                            <div class="panel-body">
                                <div align="center">
                                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Orange" Font-Bold="true" ClientIDMode="Static"></asp:Label>
                                </div>
                                <div align="center" style="position: relative; top: 10px;">
                                                
                                                <div class="form-group">
                                                    <label class="control-label col-sm-4">Name of the Idea :</label>
                                                    <div class="col-sm-6">
                                                         <asp:TextBox ID="txtNameOfIdea" runat="server" MaxLength="150" class="form-control" ClientIDMode="Static"></asp:TextBox>
                                                       
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-sm-4">Upload File:</label>
                                                    <div class="col-sm-6">
                                                        <asp:FileUpload runat="server" ID="fileConceptFile"  class="form-control" ClientIDMode="Static"/>

                                                    </div>
                                                </div>
                                                  <asp:Button ID="btnSave" ClientIDMode="Static" runat="server" Text="Save" OnClick="btnSave_Click"
                                                          OnClientClick="return Validateall();"   />
                                                       
                                                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="ClearConcept_Click" />
                                            </div>
                               
                            </div>
                        </section>

                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-sm-8">
                        <section class="panel">
                            <header class="panel-heading">
                                Saved Concept Notes
                            </header>
                            <asp:GridView ID="gvConcepts" runat="server" AutoGenerateColumns="false" Width="100%"
                                AllowPaging="true" EmptyDataText="No Records Found" PageSize="8" OnPageIndexChanging="gvConcepts_PageIndexChanging" OnRowCommand="grdData_RowCommand"
                                CssClass="gv"
                                AlternatingRowStyle-CssClass="alt"
                                PagerStyle-CssClass="pgr">
                                <Columns>
                                    <asp:BoundField DataField="SNO" HeaderText="SNO"
                                        SortExpression="SNO" />
                                    <asp:BoundField DataField="ContentText" HeaderText="Content Text"
                                        SortExpression="ContentText" />
                                    <asp:TemplateField HeaderText="Concept Note">
                                        <ItemTemplate>
                                            <%--<asp:LinkButton ID="LinkButton1" CommandName="download" CommandArgument='<%#Eval("ID")%>' runat="server">Download</asp:LinkButton>--%>
                                            <asp:Button ID="btnDownload" runat="server" CommandName="download" CommandArgument='<%#Eval("ID")%>'
                                                Text="Download" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <%-- <asp:LinkButton ID="LinkButton2" CommandName="editrec" CommandArgument='<%#Eval("ID")%>' runat="server">edit</asp:LinkButton>--%>
                                            <asp:Button ID="btnEdit" runat="server" CommandName="editrec" CommandArgument='<%#Eval("ID")%>'
                                                Text="Edit" />
                                            <asp:Button ID="btnDelete" runat="server" CommandName="deleterec" CommandArgument='<%#Eval("ID")%>'
                                                Text="Delete" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>


                        </section>
                    </div>
                </div>

                <!-- page end-->
            </section>
        </section>
        <input type="hidden" runat="server" id="hidConceptId" value="0" />
    </form>
        
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnSave").on("click", function () {
                debugger;
                var txtNameOfIdea = $("#txtNameOfIdea").val();
                var fileConceptFile = $("#fileConceptFile").val();
                var allowedFiles = [".doc", ".docx", ".pdf"];
                var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(" + allowedFiles.join('|') + ")$");
                $("#lblMessage")[0].innerText = "";
                if (txtNameOfIdea == "") {
                    $("#lblMessage")[0].innerText = "Please Enter Name Of Idea";
                    return false;
                }
                if (fileConceptFile == "") {
                    $("#lblMessage")[0].innerText = "Please Upload File.";
                    return false;
                }
               
                if (!regex.test(fileConceptFile)) {
                    $("#lblMessage")[0].innerText = "Please upload files having extensions: " + allowedFiles.join(', ') + " only.";
                    return false;
                }
                if (typeof ($("#fileConceptFile")[0].files) != "undefined") {
                    var size = parseFloat($("#fileConceptFile")[0].files[0].size / 1024).toFixed(2);
                    if (size >= 1024) {
                        $("#lblMessage")[0].innerText = "Uploaded file size is too large.";
                        return false;
                    }
                }
                return true;
            });

        });
    </script>

</asp:Content>
