<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchHospitals.aspx.cs" Inherits="CellsAtWork.SearchHospitals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Cells At Work</title>
        <!--search css-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet"/>

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"/>

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all"/>
    <!---end search css-->

    <!--page main css-->
     <!---wow-->
    <link rel="stylesheet" href="animate.css" />
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"/>
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style4.css"/>

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3 id="PatientName" runat="server"></h3>
                <strong id="PnameClosed" runat="server"></strong>
            </div>

            <ul id="ListSidebar" class="list-unstyled components">
                <li id="homepage" >
                    <a href="Patient.aspx"  aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>
                <li class="active">
                  
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-search"></i>
                        Search
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li id="clinicpage" >
                             <a  href="SearchClinics.aspx">Search For Clinics</a>
                        </li>
                        <li class="active" id="hospitalpage">
                            <a href="SearchHospitals.aspx">Search For Hospitals</a>
                        </li>
                        
                    </ul>
                </li>
                <li id="accountpage">
                    <a href="PatientUpdate.aspx"">
                        <i class="fas fa-user"></i>
                        Account
                    </a>
                </li>
                <li>
                    <a href="Home.aspx">
                        <i class="fas fa-sign-out-alt"></i>
                        LogOut
                    </a>
                </li>
               
            </ul>
            <img id="logo" style="margin-left:20px;"src="img\caw.png"/>
        </nav>

               <!--Search Content-->
 <div id="SearchClinics" class="animate bounceInDown content">
 <!---Personal Card-->
 <div style="width:100%;height:100%" class="page-wrapper bg-img-2 p-t-165 p-b-120">
        <div class="wrapper wrapper--w1226">
            <div style="width:100%;height:620px; opacity:.97;" id="searchcard" class="animated bounceInDown card card-5">
                <!--Search form-->
                <div id="Searchform" runat="server" style="margin-left:100px" class="card-body">
                 
                    <div class="col-10">
                                <div   class="input-group">
                                    <label class="label">Hospital Name</label>
                                    <input class="input--style-1" type="text" id="hospitalname" runat="server"  placeholder="All Doctors" />
                                </div>
                            </div>
                    <br/>
                     <div class="col-10">
                                <div   class="input-group">
                                    <label class="label">Specialization</label>
                                    <br/>
                         <asp:DropDownList AppendDataBoundItems="True" Width="100%" cssClass="input--style-1" ID="DropDownList1" runat="server">
                          
                                    </asp:DropDownList>
                                </div>
                            </div>
                    <br/>
                     <div class="col-10">
                                <div   class="input-group">
                                    <label class="label">Address</label>
                                    <input class="input--style-1" type="text" id="address" runat="server"  placeholder="All Places" />
                                </div>
                            </div>
                    <br/>
                    <div class="col-10">
                         <asp:Button CssClass="btn-submit"  OnClientClick="return true;" OnClick="Button1_Click" ID="Button1" runat="server" Text="Search" />
                        </div>
                    
                </div>
                <!--End of search form-->
                <!--search result-->
                 <div id="Searchresult" runat="server" style="margin-left:100px; opacity:1; " class="card-body">
                
                     <div class="input-group" >
                  <asp:GridView  OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnSelectedIndexChanging="GridView1_SelectedIndexChanging1"  EmptyDataText="There are no Hospitals with these info to display." DataKeyNames="address" AutoGenerateSelectButton="True" CssClass="grid" style="width:1000px;margin:auto" ID="GridView1" BorderColor="#999999"  runat="server" Font-Bold="True" Font-Size="Large" FooterStyle-BorderStyle="Groove" FooterStyle-BorderWidth="5px" HeaderStyle-BorderWidth="5px" RowStyle-BorderColor="#0099FF" RowStyle-BorderStyle="Groove" RowStyle-BorderWidth="5px" HeaderStyle-BorderStyle="Groove" HeaderStyle-BorderColor="#0099FF" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                     
   

                      <AlternatingRowStyle BackColor="#DCDCDC" />
<FooterStyle BorderWidth="5px" BorderStyle="Groove" BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

<HeaderStyle BorderColor="#0099FF" BorderWidth="5px" BorderStyle="Groove" BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

<RowStyle BorderColor="#0099FF" BorderWidth="5px" BorderStyle="Groove" BackColor="#EEEEEE" ForeColor="Black"></RowStyle>
                      <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#0000A9" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#000065" />
                     
   

                  </asp:GridView>                    
                </div>
                
                 </div>
                <!--End of search result-->
                <!---phones--->
                     <div id="Phoneresult" runat="server" style="margin-left:100px; opacity:1; " class="card-body">
                
                     <div class="input-group" >
                  <asp:GridView    CssClass="grid" style="width:1000px;margin:auto" ID="GridView2" BorderColor="#999999"  runat="server" Font-Bold="True" Font-Size="Large" FooterStyle-BorderStyle="Groove" FooterStyle-BorderWidth="5px" HeaderStyle-BorderWidth="5px" RowStyle-BorderColor="#0099FF" RowStyle-BorderStyle="Groove" RowStyle-BorderWidth="5px" HeaderStyle-BorderStyle="Groove" HeaderStyle-BorderColor="#0099FF" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                     
   

                      <AlternatingRowStyle BackColor="#DCDCDC" />
                       <FooterStyle BorderWidth="5px" BorderStyle="Groove" BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                    <HeaderStyle BorderColor="#0099FF" BorderWidth="5px" BorderStyle="Groove" BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                      <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

                        <RowStyle BorderColor="#0099FF" BorderWidth="5px" BorderStyle="Groove" BackColor="#EEEEEE" ForeColor="Black"></RowStyle>
                      <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#0000A9" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#000065" />
                     
   

                  </asp:GridView>                    
                </div>
                
                 </div>
                <!---end of phones-->
            </div>
        </div>
    </div>  
            
         
  
</div> 
    <!--End of search content-->
        </div>
            </div>
    </form>
     <!---JQ-->
        <script src="java/jquery-3.3.1.min.js"></script>

        <!---bootstrap-java --->
        <script src="java/bootstrap.min.js"></script>
        <!--wow-->
        <script src="wow.min.js"></script>
        <!--mixitup-->
        <script src="java/mixitup.min.js"></script>
      <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

      <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });

          

           
     
        });
    </script>

      <!--Search js-->
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/jquery-validate/jquery.validate.min.js"></script>
    <script src="vendor/bootstrap-wizard/bootstrap.min.js"></script>
    <script src="vendor/bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
    <!--endsearch js-->
</body>
</html>
