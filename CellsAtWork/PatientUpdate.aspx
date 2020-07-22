<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientUpdate.aspx.cs" Inherits="CellsAtWork.PatientUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cells At Work</title>
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

 

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style3.css">

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

            <ul class="list-unstyled components">
                <li >
                    <a href="Patient.aspx"  aria-expanded="false" >
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
                        <li>
                            <a href="SearchClinics.aspx">Search For Clinics</a>
                        </li>
                        <li>
                            <a href="SearchHospitals.aspx">Search For Hospitals</a>
                        </li>
                        
                    </ul>
                </li>
                <li class="active">
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
 <div id="content">
   
    
 <!---update Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Update Personal Info
  </div>
  <div class="card-body">
            <asp:Label ID="Label1" runat="server"  Text="Address" Width="172px"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"  Width="308px" CssClass="auto-style8"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Phone number" Width="163px"></asp:Label>
             <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="315px" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
           <asp:Label ID="Label11" runat="server" Text="Blood Type"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="0">Select your BloodType</asp:ListItem>
                <asp:ListItem Value="1">A</asp:ListItem>
                <asp:ListItem Value="2">B</asp:ListItem>
                <asp:ListItem Value="3">AB</asp:ListItem>
                <asp:ListItem Value="4">O</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
             <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
            <br />
            <br />
             <asp:Label ID="Label3" runat="server" Text="Note:if you dont enter a field it will not be updated"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"  />

            <br />
            <br />
  </div>
</div> 
 <!---/End of update Personal Card-->  
            
            <br />

 <!---/End of update clinic Card-->  
     <br />
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Update Account Info
  </div>
  <div class="card-body">
            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
             <br />
             <br />
             
            <asp:TextBox ID="TextBox10" TextMode="Email" runat="server" ></asp:TextBox>
             <br />
            <br />
             <asp:Label ID="Label10" runat="server"  Text="Password"></asp:Label>
             <br />
             <br />
             <asp:TextBox ID="TextBox11" TextMode="Password" runat="server" ></asp:TextBox>
             <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="UserName"></asp:Label>
            <br />
             <br />
            <asp:TextBox ID="TextBox12"  runat="server" ></asp:TextBox>
            
         <br/>
         <br/>
             <asp:Label ID="Label16" runat="server" Text="Note:if you dont enter a field it will not be updated"></asp:Label>
             <br />
            <br />
            <asp:Button ID="Button3" OnClick="Button3_Click" runat="server" Text="Update" />
             <br />
             <br />
  </div>
</div> 
 <!---/End of Personal Card-->  
     <br />

 <!---/End of current occupation Card-->  
            
            <br />
         
</div>       <!-- end page Content  -->
</div>

        </div>
    </form>
       <!---JQ-->
        <script src="java/jquery-3.3.1.min.js"></script>

        <!---bootstrap-java --->
        <script src="java/bootstrap.min.js"></script>
        <!--wow-->
        <script src="java/wow.min.js"></script>
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
</body>
        <!--my java-->
        <script src="patientjava.js"></script>

</html>
