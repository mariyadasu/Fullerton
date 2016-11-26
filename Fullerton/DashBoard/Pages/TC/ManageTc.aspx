<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboardmaster.Master" AutoEventWireup="true" CodeBehind="ManageTc.aspx.cs" Inherits="Fullerton.TC.MamageTC" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form runat="server">
    <div class="form-horizontal">

        
        <div class="panel panel-success">
            <div class="panel-heading">Team Coordinator privileges</div>
            <div class="panel-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-md-3">
                            <label for="ddlTeamNames">Activation Type <span class="red-text">*</span> :</label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList class="form-control" ID="ddlStatus" runat="server" ClientIDMode="Static">

                                <asp:ListItem Value="1" Text="TC"></asp:ListItem>
                                <asp:ListItem Value="0" Text="Partial TC"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="btnUpdateStatus" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="Submit" OnClick="btnUpdateStatus_Click" />
                        </div>
                    </div>

                </div>

            </div>
        </div>


        <div class="panel panel-success">
            <div class="panel-heading">Activate New Team Coordinator</div>
            <div class="panel-body">
                <div class="form-group">
                   <div class="row">
                        <div class="col-md-3">
                            <label for="ddlTeamNames">New Team Coordinator <span class="red-text">*</span> :</label>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList class="form-control" ID="ddlTeamMembers" runat="server" ClientIDMode="Static">

                            </asp:DropDownList>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="btnNewTcUpdate" class="btn btn-next-3 btn-warning" runat="server" ClientIDMode="Static" Text="Submit" OnClick="btnNewTcUpdate_Click"/>
                            <asp:Label ID="lblNewTcMsg" runat="server" Visible="false"></asp:Label>
                        </div>
                    </div>

                </div>

            </div>
        </div>

    </div>
        </form>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnNewTcUpdate").on("click", function () {
                debugger;
                var ddlTeamMembers = $("#ddlTeamMembers").val();
               
                if(ddlTeamMembers=="0")
                {
                    alert("Please Select Team Member");
                    return false;
                }

                if(!confirm("Do you want to assign new team coordinator?"))
                {
                    return false;
                }
                return true;
            });

            $("#btnUpdateStatus").on("click",function () {
                
                debugger;
                var status = $("#ddlStatus").val();

                var msg = "Do you want to became teem coordinator";
                if (status=="0")
                    msg = "Do you want to became partial teem coordinator"
                if (!confirm(msg)) {
                    return false;
                }
                return true;
            });
        });
    </script>

</asp:Content>
