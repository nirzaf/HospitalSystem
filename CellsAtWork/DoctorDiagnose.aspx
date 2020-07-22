﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorDiagnose.aspx.cs" Inherits="CellsAtWork.DoctorDiagnose" %>

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
                <li class="active">
                    <a href="DoctorPersonal.aspx"  aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
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
 <!---Add Diagnosis Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   New Diagnosis
  </div>
  <div class="card-body">
            <asp:Label ID="Label6" runat="server" Text="Cheif Complaint"></asp:Label>
            <br />
             <br />
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
           <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Label ID="Label7" runat="server" Text="illness"></asp:Label>           
             <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>    
             <br />
             <br />
             <asp:Label ID="Label8" runat="server" Text="Prescription"></asp:Label>
             <br />
             <br />
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" />
             <br />
             <br />
  </div>
</div> 
 <!---/End of Add Diagnosis Card-->  
     <br />
      <!---Add Allergy Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   Add Allergy
  </div>
  <div class="card-body">
            <asp:Label ID="Label10" runat="server" Text="AllergyType"></asp:Label>
             <br />
             <br />
             <asp:DropDownList ID="DropDownList2" runat="server">
                  <asp:ListItem Value="0">Type</asp:ListItem>
                  <asp:ListItem Value="1">Drug</asp:ListItem>
                  <asp:ListItem Value="2">Food</asp:ListItem>
                  <asp:ListItem Value="3">Insect</asp:ListItem>
                 <asp:ListItem Value="4">Latex</asp:ListItem>
                 <asp:ListItem Value="5">Mold</asp:ListItem>
                 <asp:ListItem Value="6">Pet</asp:ListItem>
                 <asp:ListItem Value="7">Pollen</asp:ListItem>
             </asp:DropDownList>
             <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
            <asp:Label ID="Label9" runat="server" Text="AlleryName"></asp:Label>
            <br />
             <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">Name</asp:ListItem>
                  <asp:ListItem Value="1">Peanut</asp:ListItem>
                  <asp:ListItem Value="2">Berry</asp:ListItem>
                 <asp:ListItem Value="3">Milk</asp:ListItem>
                  <asp:ListItem Value="4">Aspirin</asp:ListItem>
                 <asp:ListItem Value="5">Penicillin</asp:ListItem>
                  <asp:ListItem Value="6">Cosmetic</asp:ListItem>
                 <asp:ListItem Value="7">Shellfish</asp:ListItem>
                  <asp:ListItem Value="8">Cat</asp:ListItem>
            </asp:DropDownList>
           <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Button ID="Button2" runat="server" Text="ADD" OnClick="Button2_Click" />
            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
             
             <br />
             <br />
  </div>
</div> 
 <!---/End of Add Allergy Card-->  
     <br />
 <!---Patient General Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Patient General Info 
  </div>
  <div class="card-body">
     <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Center"  Height="159px" Width="624px">
     </asp:GridView>
      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> 
  </div>
</div> 
 <!---/End of Patient General Card-->  
            
 <br />
      <!---Diagnosis Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Previous Diagnosis
  </div>
  <div class="card-body">
     <asp:GridView ID="GridView2" runat="server"  HorizontalAlign="Center" Height="159px" Width="624px">
     </asp:GridView>
      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
  </div>
</div> 
 <!---/End of Diagnosis Card-->  
            
 <br />
  <!---Surgeries Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Previous Surgeries
  </div>
  <div class="card-body">
     <asp:GridView ID="GridView3" runat="server"  HorizontalAlign="Center" Height="159px" Width="624px">
     </asp:GridView>
      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
  </div>
</div> 
 <!---/End of surgeries Card-->  
            
 <br />
  <!---Blood Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Blood Transfusions
  </div>
  <div class="card-body">
     <asp:GridView ID="GridView4" runat="server"  HorizontalAlign="Center" Height="159px" Width="624px">
     </asp:GridView>
      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
  </div>
</div> 
 <!---/End of Blood Card-->  
            
 <br />
       <!---Allergies Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Allergies
  </div>
  <div class="card-body">
     <asp:GridView ID="GridView5" runat="server"  HorizontalAlign="Center" Height="159px" Width="624px">
     </asp:GridView>
      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
  </div>
</div> 
 <!---/End of Allergies Card-->  
            
 <br />
 
     
         
</div>      
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