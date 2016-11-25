<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboardmaster.Master" AutoEventWireup="true" CodeBehind="TcDashBoard.aspx.cs" Inherits="Fullerton.TC.TcDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".editclass").on("click", function () {
               
                if(!confirm("Are you sure you want to update user details"))
                {
                    return false;
                }
                return true;
            });

            $(".deleteclass").on("click", function () {

                if (!confirm("Are you sure you want to Delete user details")) {
                    return false;
                }
                return true;
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <asp:GridView AutoGenerateColumns="false" runat="server" ID="gdvMembers" OnRowCommand="gdvMembers_RowCommand">
        <Columns>

            <asp:BoundField DataField="UserName" HeaderText="UserName" />
            <asp:BoundField DataField="EmailId" HeaderText="EmailId" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" />
            <asp:BoundField DataField="RollNo" HeaderText="RollNo" />

            <asp:TemplateField HeaderText="Manage">
                <ItemTemplate>
                    <asp:LinkButton CssClass="editclass" runat="server" ID="lnkAdd" CommandArgument='<%#Eval("UserId") %>'
                        CommandName="Edited">Edit</asp:LinkButton>
                    <asp:LinkButton CssClass="deleteclass" runat="server" ID="lnkDelete" CommandArgument='<%#Eval("UserId") %>'
                        CommandName="Deleted">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </form>
</asp:Content>
