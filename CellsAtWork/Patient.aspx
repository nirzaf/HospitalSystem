<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="CellsAtWork.Patient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cells At Work</title>
      <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

 
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

            <!--Menu list-->

 <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3 id="PatientName" runat="server"></h3>
                <strong id="PnameClosed" runat="server"></strong>
            </div>

            <ul id="ListSidebar" class="list-unstyled components">
                <li id="homepage" class="active">
                    <a href="#homeSubmenu"  aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li>
                <li>
                  
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-search"></i>
                        Search
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li id="clinicpage">
                            <a href="SearchClinics.aspx" >Search For Clinics</a>
                        </li>
                        <li  id="hospitalpage">
                            <a href="#">Search For Hospitals</a>
                        </li>
                        
                    </ul>
                </li>
                <li id="accountpage">
                    <a href="PatientUpdate.aspx">
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

        <!-- Page Content  -->
        <div id="PersonalHome" class="content">
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    My Personal Info
  </div>
  <div class="card-body">
   <div style="display:inline-block; font-weight:bolder; float:left">
   <p id="Patientnm" runat="server"></p>
   <p id="PatientEmail" runat="server"></p>
   <p id="PatientPhone" runat="server"></p>
      </div>
    <div id="Second" style="display:inline-block; font-weight:bolder; float:right">
   <p id="PatientGender" runat="server">Gender: Male</p>
   <p id="PatientBD" runat="server">BirthDate: 2-1-2000</p>
   <p id="PatientAddress" runat="server">Address: 21st AbdElZaher,Fisel,Cairo</p>
   <p id="PatientBloodtYPE" runat="server">BloodType: A</p>
    </div>
  </div>
</div> 
 <!---/End of Personal Card-->  
            
            <br />
 <!---Diagnosis Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    My Diagnosis
  </div>
  <div class="card-body">
    <asp:GridView width="100%" ID="GridView1" runat="server" BorderColor="#0099FF" BackColor="White" BorderStyle="Inset" BorderWidth="0"></asp:GridView>
    </div>
  </div>
<!---/End of Diagnosis Card-->
  <!---Appointments Card-->
     <br/>
  <div class="card" >
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    My Appointments
  </div>
  <div class="card-body">
    <asp:GridView AutoGenerateSelectButton="True" OnSelectedIndexChanging="GridView2_SelectedIndexChanging" width="100%" ID="GridView2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" runat="server" BorderColor="#0099FF" BackColor="White" BorderStyle="Inset" BorderWidth="0"></asp:GridView>
    </div>
  </div>
 <!---/End of Appointments Card--> 
</div> 
     
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
