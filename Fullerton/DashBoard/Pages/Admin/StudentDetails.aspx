<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Fullerton.DashBoard.Pages.Admin.StudentDetails" 
     MasterPageFile="~/DashBoard/DashboardMaster.Master"%>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">

 </asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-table"></i> Table</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-th-list"></i>Student Details</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  
                  <div class="col-sm-12">
                      <section class="panel">
                          <header class="panel-heading">
                              <a class="btn btn-success" href="" title="Bootstrap 3 themes generator">Export To Excel</a>
                          </header>
                          <table class="table table-striped">
                              <thead>
                              <tr>
                                  <th>#</th>
                                  <th>First Name</th>
                                  <th>Last Name</th>
                                  <th>Email</th>
                                  <th>DOB</th>
                                  <th>Institute</th>
                                  <th>MobileNo</th>
                                  <th>Course</th>
                                  <th>HomeTown</th>
                                  <th>TeamName</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td>1</td>
                                  <td>ganapathi</td>
                                  <td>dasari</td>
                                  <td>ganapathi.power@gmail.com</td>
                                  <td>11/11/1988</td>
                                  <td>Univercity1</td>
                                  <td>9701767096</td>
                                  <td>Btech</td>
                                  <td>Hyderabad</td>
                                  <td>Team name1</td>
                              </tr>
                              <tr>
                                  <td>2</td>
                                  <td>ganapathi</td>
                                  <td>dasari</td>
                                  <td>ganapathi.power@gmail.com</td>
                                  <td>11/11/1988</td>
                                  <td>Univercity1</td>
                                  <td>9701767096</td>
                                  <td>Btech</td>
                                  <td>Hyderabad</td>
                                  <td>Team name2</td>
                              </tr>
                              <tr>
                                  <td>3</td>
                                  <td>ganapathi</td>
                                  <td>dasari</td>
                                  <td>ganapathi.power@gmail.com</td>
                                  <td>11/11/1988</td>
                                  <td>Univercity1</td>
                                  <td>9701767096</td>
                                  <td>Btech</td>
                                  <td>Hyderabad</td>
                                  <td>Team name3</td>
                              </tr>
                              </tbody>
                          </table>
                      </section>
                  </div>
              </div>
            


              <!-- page end-->
          </section>
      </section>
</asp:Content>
