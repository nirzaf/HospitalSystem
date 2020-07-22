<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminViewe.aspx.cs" Inherits="CellsAtWork.AdminViewe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin View Page</title>
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
                        <!-- FROM Admin View Page -->
</head>
<body>
   <form id="form1" runat="server">
       <div style="background-color:lightcyan"/>
            <!--Menu list-->

 <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3 id="AdminName" runat="server"></h3>
                <strong id="PnameClosed" runat="server"></strong>
            </div>

            <ul id="ListSidebar" class="list-unstyled components">
                <li id="homepage" class="active">
                    <a href="home.aspx"  aria-expanded="false" >
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
        <div id="PersonalHome" class="content">
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    My Personal Info
  </div>
  <div class="card-body">
   <div style="display:inline-block; font-weight:bolder; float:left">
   <p id="Adminnm" runat="server"></p>
       </ div>
       </div>
     </div>
            </div>
        <!--Add Admin-->
        <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   Add New Admin
  </div>
<div class="card-body">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Admin name:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
     <asp:Label ID="Label2" runat="server" Text="Admin_ID:"></asp:Label>

    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Add Admin" OnClick="Button1_Click" />
    </div>
        </div>
        <!--end Add Admin-->

        <!--Add  Hospital-->
        <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   Add New Hospital
  </div>
<div class="card-body">
    <br />
    <asp:Label ID="Label3" runat="server" Text="Hospital name:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="hospital_ID:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="hospital_Adress:"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Add hospital BloodBank"></asp:Label>
    <br />
    <br />
    <div style="display:inline-block;margin-left:10px;">
    <asp:Label ID="Label6" runat="server" Text="A Amount :"></asp:Label>
    <asp:TextBox ID="TextBox6" TextMode="Number" runat="server"></asp:TextBox>
    <asp:Label ID="Label15" runat="server" Text="A Cost :"></asp:Label>
    <asp:TextBox ID="TextBox14" TextMode="Number"  runat="server"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" Text="B Amount :"></asp:Label>
    <asp:TextBox ID="TextBox7" TextMode="Number" runat="server"></asp:TextBox>
      <asp:Label ID="Label16" runat="server" Text="B Cost :"></asp:Label>
    <asp:TextBox ID="TextBox15" TextMode="Number"  runat="server"></asp:TextBox>
                <br/>
                <br/>
        <div style="margin-left:5px;">
          <asp:Label ID="Label9" runat="server" Text="AB Amount :"></asp:Label>
    <asp:TextBox ID="TextBox8" TextMode="Number" runat="server"></asp:TextBox>
           <asp:Label ID="Label17" runat="server" Text="AB Cost :"></asp:Label>
    <asp:TextBox ID="TextBox16" TextMode="Number"  runat="server"></asp:TextBox>
          <asp:Label ID="Label10" runat="server" Text="O Amount :"></asp:Label>
    <asp:TextBox ID="TextBox9" TextMode="Number" runat="server"></asp:TextBox>
           <asp:Label ID="Label18" runat="server" Text="O Cost :"></asp:Label>
    <asp:TextBox ID="TextBox17" TextMode="Number"  runat="server"></asp:TextBox>

        </div>
    </div>
    <br />
    <br />
      <div style="display:inline-block;">
             <asp:Label ID="Label11" runat="server" Text="A+ Amount :"></asp:Label>
    <asp:TextBox ID="TextBox10" TextMode="Number" runat="server"></asp:TextBox>
    <asp:Label ID="Label12" runat="server" Text="A+ Cost :"></asp:Label>
    <asp:TextBox ID="TextBox11" TextMode="Number"  runat="server"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" Text="B+ Amount :"></asp:Label>
    <asp:TextBox ID="TextBox12" TextMode="Number" runat="server"></asp:TextBox>
      <asp:Label ID="Label14" runat="server" Text="B+ Cost :"></asp:Label>
    <asp:TextBox ID="TextBox13" TextMode="Number"  runat="server"></asp:TextBox>
          <br />
          <br />
                  <div style="float:left;">
          <asp:Label ID="Label19" runat="server" Text="AB+ Amount :"></asp:Label>
    <asp:TextBox ID="TextBox18" TextMode="Number" runat="server"></asp:TextBox>
           <asp:Label ID="Label20" runat="server" Text="AB+ Cost :"></asp:Label>
    <asp:TextBox ID="TextBox19" TextMode="Number"  runat="server"></asp:TextBox>
          <asp:Label ID="Label21" runat="server" Text="O+ Amount :"></asp:Label>
    <asp:TextBox ID="TextBox20" TextMode="Number" runat="server"></asp:TextBox>
           <asp:Label ID="Label22" runat="server" Text="O+ Cost :"></asp:Label>
    <asp:TextBox ID="TextBox21" TextMode="Number"  runat="server"></asp:TextBox>
                      </div>
    </div>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Add Hospital" OnClick="Button2_Click" />
    </div>
        </div>
        <!--end Add Hospital-->
        <!-- view monthly report -->
        <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   View Monthly Report
  </div>
<div class="card-body">
    <br />
    <asp:Button ID="Button3" runat="server" Text="view report " OnClick="Button3_Click" />
    </div>
        </div>
        <!--end view monthly report-->
    </form>
</body>
</html>
