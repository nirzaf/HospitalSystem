<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorPersonal.aspx.cs" Inherits="CellsAtWork.DoctorPersonal" %>

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
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    My Personal Info
  </div>
  <div class="card-body">
   <div style="display:inline-block; font-weight:bolder; float:left">
   <p id="doctornm" runat="server"></p>
   <p id="doctorEmail" runat="server"></p>
   <p id="doctorPhone" runat="server"></p>
      </div>
    <div id="Second" style="display:inline-block; font-weight:bolder; float:right">
   <p id="doctorDept" runat="server">Department: Surgery</p>
   <p id="docLastDegree" runat="server">LastDegree: Phd</p>
   
    </div>
  </div>
</div> 
 <!---/End of Personal Card-->  
            
            <br />
     <!---Appointment Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Today's Appointments
  </div>
  <div class="card-body">
   
      <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="159px" Width="624px">

              <Columns >
       
                    <asp:ButtonField ButtonType="Button" Text="Diagnose" CommandName="Select" />
                </Columns>
      </asp:GridView>
      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </div>
  </div>

 <!---/End of Appointment Card-->    
     <br />
 <!---update Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Update Personal Info
  </div>
  <div class="card-body">
            <asp:Label ID="Label1" runat="server"  Text="Email" Width="172px"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Width="308px" CssClass="auto-style8"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Phone number" Width="163px"></asp:Label>
             <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="315px" CssClass="auto-style5"></asp:TextBox>
            <br />
            <br />
           <asp:Label ID="Label11" runat="server" Text="Last Degree"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="0">Select a degree</asp:ListItem>
                <asp:ListItem Value="1">Bachelor Degree</asp:ListItem>
                <asp:ListItem Value="2">Masters Degree</asp:ListItem>
                <asp:ListItem Value="3">PHD</asp:ListItem>
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
<!---update clinic Card-->
      <div id="phoneclinic" runat="server">
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Update Clinic Phone
  </div>
 
  <div class="card-body" >
       
            <asp:Label ID="Label4" runat="server" Text="clinic phone"></asp:Label>
             <br />
             <br /> 
           <asp:DropDownList ID="DropDownList1" runat="server"  ></asp:DropDownList>
             <br />
             <br /> 
            <asp:Button ID="Button2" runat="server" Text="delete" OnClick="Button2_Click" />
            <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
             <br />
            <br />
      <asp:Label ID="Label7" runat="server" Text="new clinic phone"></asp:Label>
             <br />
             <br />
            <asp:TextBox ID="TextBox9" textmode="Number" runat="server" ></asp:TextBox>
             <br />
            <br />
             <asp:Button ID="Button4" runat="server" Text="ADD" OnClick="Button4_Click"  />
      <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
         </div>
  </div>
</div> 
 <!---/End of update clinic Card-->  
     <br />
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Update Clinic Info
  </div>
  <div class="card-body">
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
             
             <br />
             <br />
             
            <asp:TextBox ID="TextBox10" runat="server" ></asp:TextBox>
             <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
      
             <br />
            <br />
             <asp:Label ID="Label10" runat="server"  Text="Fees"></asp:Label>
             
             <br />
             <br />
             <asp:TextBox ID="TextBox11" TextMode="Number" runat="server" ></asp:TextBox>
            <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
             <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Max Appointments"></asp:Label>
            <br />
             <br />
            <asp:TextBox ID="TextBox12" TextMode="Number" runat="server" ></asp:TextBox>
           <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Label ID="Label12" runat="server" Text="Opening Hours"></asp:Label>
             <br />
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server">
               <asp:ListItem Value="0">00:00</asp:ListItem>
                <asp:ListItem Value="1">00:30</asp:ListItem>
                <asp:ListItem Value="2">01:00</asp:ListItem>
                <asp:ListItem Value="3">01:30</asp:ListItem>
                <asp:ListItem Value="4">02:00</asp:ListItem>
                 <asp:ListItem Value="5">02:30</asp:ListItem>
                <asp:ListItem Value="6">03:00</asp:ListItem>
                 <asp:ListItem Value="7">03:30</asp:ListItem>
                <asp:ListItem Value="8">04:00</asp:ListItem>
                <asp:ListItem Value="9">04:30</asp:ListItem>
                <asp:ListItem Value="10">05:00</asp:ListItem>
                <asp:ListItem Value="11">05:30</asp:ListItem>
                <asp:ListItem Value="12">06:00</asp:ListItem>
                <asp:ListItem Value="13">06:30</asp:ListItem>
                <asp:ListItem Value="14">07:00</asp:ListItem>
                <asp:ListItem Value="15">07:30</asp:ListItem>
                <asp:ListItem Value="16">08:00</asp:ListItem>
                <asp:ListItem Value="17">08:30</asp:ListItem>
                <asp:ListItem Value="18">09:00</asp:ListItem>
                <asp:ListItem Value="19">09:30</asp:ListItem>
                <asp:ListItem Value="20">10:00</asp:ListItem>
                <asp:ListItem Value="21">10:30</asp:ListItem>
                <asp:ListItem Value="22">11:00</asp:ListItem>
          <asp:ListItem Value="23">11:30</asp:ListItem>
          <asp:ListItem Value="24">12:00</asp:ListItem>
          <asp:ListItem Value="25">12:30</asp:ListItem>
          <asp:ListItem Value="26">13:00</asp:ListItem>
           <asp:ListItem Value="27">13:30</asp:ListItem>
           <asp:ListItem Value="28">14:00</asp:ListItem>
           <asp:ListItem Value="29">14:30</asp:ListItem>
                 <asp:ListItem Value="30">15:00</asp:ListItem>
           <asp:ListItem Value="31">15:30</asp:ListItem>
                 <asp:ListItem Value="32">16:00</asp:ListItem>
           <asp:ListItem Value="33">16:30</asp:ListItem>
                 <asp:ListItem Value="34">17:00</asp:ListItem>
           <asp:ListItem Value="35">17:30</asp:ListItem>
                 <asp:ListItem Value="36">18:00</asp:ListItem>
           <asp:ListItem Value="37">18:30</asp:ListItem>
                 <asp:ListItem Value="38">19:00</asp:ListItem>
           <asp:ListItem Value="39">19:30</asp:ListItem>
                 <asp:ListItem Value="40">20:00</asp:ListItem>
           <asp:ListItem Value="41">20:30</asp:ListItem>
                 <asp:ListItem Value="42">21:00</asp:ListItem>
           <asp:ListItem Value="43">21:30</asp:ListItem>
                 <asp:ListItem Value="44">22:00</asp:ListItem>
           <asp:ListItem Value="45">22:30</asp:ListItem>
                 <asp:ListItem Value="46">23:00</asp:ListItem>
           <asp:ListItem Value="47">23:30</asp:ListItem>
                 <asp:ListItem Value="48">select time</asp:ListItem>
            </asp:DropDownList>
      <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>    
             <br />
             <br />
             <asp:Label ID="Label13" runat="server" Text="Closing Hours"></asp:Label>
             <br />
             <br />
             <asp:DropDownList ID="DropDownList5" runat="server">
                  <asp:ListItem Value="0">00:00</asp:ListItem>
                <asp:ListItem Value="1">00:30</asp:ListItem>
                <asp:ListItem Value="2">01:00</asp:ListItem>
                <asp:ListItem Value="3">01:30</asp:ListItem>
                <asp:ListItem Value="4">02:00</asp:ListItem>
                 <asp:ListItem Value="5">02:30</asp:ListItem>
                <asp:ListItem Value="6">03:00</asp:ListItem>
                 <asp:ListItem Value="7">03:30</asp:ListItem>
                <asp:ListItem Value="8">04:00</asp:ListItem>
                <asp:ListItem Value="9">04:30</asp:ListItem>
                <asp:ListItem Value="10">05:00</asp:ListItem>
                <asp:ListItem Value="11">05:30</asp:ListItem>
                <asp:ListItem Value="12">06:00</asp:ListItem>
          <asp:ListItem Value="13">06:30</asp:ListItem>
          <asp:ListItem Value="14">07:00</asp:ListItem>
           <asp:ListItem Value="15">07:30</asp:ListItem>
          <asp:ListItem Value="16">08:00</asp:ListItem>
          <asp:ListItem Value="17">08:30</asp:ListItem>
          <asp:ListItem Value="18">09:00</asp:ListItem>
          <asp:ListItem Value="19">09:30</asp:ListItem>
          <asp:ListItem Value="20">10:00</asp:ListItem>
          <asp:ListItem Value="21">10:30</asp:ListItem>
          <asp:ListItem Value="22">11:00</asp:ListItem>
          <asp:ListItem Value="23">11:30</asp:ListItem>
          <asp:ListItem Value="24">12:00</asp:ListItem>
          <asp:ListItem Value="25">12:30</asp:ListItem>
          <asp:ListItem Value="26">13:00</asp:ListItem>
           <asp:ListItem Value="27">13:30</asp:ListItem>
           <asp:ListItem Value="28">14:00</asp:ListItem>
           <asp:ListItem Value="29">14:30</asp:ListItem>
                 <asp:ListItem Value="30">15:00</asp:ListItem>
           <asp:ListItem Value="31">15:30</asp:ListItem>
                 <asp:ListItem Value="32">16:00</asp:ListItem>
           <asp:ListItem Value="33">16:30</asp:ListItem>
                 <asp:ListItem Value="34">17:00</asp:ListItem>
           <asp:ListItem Value="35">17:30</asp:ListItem>
                 <asp:ListItem Value="36">18:00</asp:ListItem>
           <asp:ListItem Value="37">18:30</asp:ListItem>
                 <asp:ListItem Value="38">19:00</asp:ListItem>
           <asp:ListItem Value="39">19:30</asp:ListItem>
                 <asp:ListItem Value="40">20:00</asp:ListItem>
           <asp:ListItem Value="41">20:30</asp:ListItem>
                 <asp:ListItem Value="42">21:00</asp:ListItem>
           <asp:ListItem Value="43">21:30</asp:ListItem>
           <asp:ListItem Value="44">22:00</asp:ListItem>
           <asp:ListItem Value="45">22:30</asp:ListItem>
           <asp:ListItem Value="46">23:00</asp:ListItem>
           <asp:ListItem Value="47">23:30</asp:ListItem>
             <asp:ListItem Value="48">select time</asp:ListItem>
             </asp:DropDownList>
      <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Label ID="Label16" runat="server" Text="Note:if you dont enter a field it will not be updated"></asp:Label>
             <br />
            <br />
         
            <asp:Button ID="Button3" runat="server" Text="Update Clinic" OnClick="Button3_Click" />
           <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Button ID="Button7" runat="server" Text="Delete Clinic" OnClick="Button7_Click" />
            <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
  </div>
</div> 
 <!---/End of Personal Card-->  
     <br />
 <!---current occupation Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Update Current Occupation
  </div>
  <div class="card-body">
     
             <asp:Label ID="Label14" runat="server" Text="Current hospitals"></asp:Label>
             <br />
             <br />
           <asp:DropDownList ID="DropDownList2" runat="server" >
             </asp:DropDownList>
             <br />
             <br />

             <asp:Button ID="Button5" runat="server" Text="Leave Hospital" OnClick="Button5_Click" />
      <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
             <br />
             <br />
             <asp:Label ID="Label15" runat="server" Text="Start new job"></asp:Label>
             <br />
             <br />
             <asp:TextBox ID="TextBox15" runat="server" textmode="Number" CssClass="auto-style3"></asp:TextBox>
             <br />
             <br />
             <asp:Button ID="Button6" runat="server" Text="Add New Job" OnClick="Button6_Click" />
            <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
             <br />
  </div>
</div> 
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

