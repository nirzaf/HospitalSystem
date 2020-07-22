<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Monthly_Report.aspx.cs" Inherits="CellsAtWork.Monthly_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Monthly Report</title>
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

 

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="style3.css">

      <style type="text/css">
          .auto-style2 {
              margin-left: 430px;
          }
          .auto-style3 {
              margin-left: 400px;
          }
          .auto-style4 {
              margin-left: 280px;
          }
          .auto-style6 {
              margin-left: 5px;
          }
          .auto-style7 {
              margin-left: 490px;
          }
          .auto-style8 {
              margin-left: 390px;
          }
          .auto-style9 {
              margin-left: 234px;
          }
          .auto-style10 {
              margin-left: 151px;
          }
      </style>
</head>
<body>
     <form id="form1" runat="server">
        <div style="background-color:lightcyan">
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
                
                <li id="accountpage">
                    <a href="#">
                        <i class="fas fa-user"></i>
                        Account
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-sign-out-alt"></i>
                        LogOut
                    </a>
                </li>
               
            </ul>
            <img id="logo" style="margin-left:20px;"src="img\caw.png"/>
        </nav>
    
     <div id="content">
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Surgieries in Hospital in specific year
  </div>
  <div class="card-body">
      <br />
      <br />
      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style4" >
          
      </asp:DropDownList>
      <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style7">
         
      </asp:DropDownList>
      <br />
      <br />
      <asp:Chart ID="Chart1" runat="server" CssClass="auto-style1" style="margin-left: 140px">
                <Series>
                    <asp:Series Name="Series1" ChartArea="ChartArea1" YValuesPerPoint="2"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX Title="Hospital">

                        </AxisX>
                        <AxisY Title="Number Of surgeries"></AxisY>
                        <Area3DStyle Enable3D="true" Rotation="20" />
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
      <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style10" Width="72px"></asp:Label>
             <asp:Button ID="Button1" runat="server" Text="Get H_S in that year" CssClass="auto-style9" OnClick="Button1_Click" />
      </div>
      </div>
         
      <div id="content">
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Surgeries in specific hospital
  </div>
  <div class="card-body">
      <br />
      <br />
      <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style4" >
          
      </asp:DropDownList>
     
      <br />
      <br />
      <asp:Chart ID="Chart2" runat="server" CssClass="auto-style1" style="margin-left: 140px">
                <Series>
                    <asp:Series Name="Series2" ChartArea="ChartArea2" YValuesPerPoint="2"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea2">
                        <AxisX Title="Surgeries">

                        </AxisX>
                        <AxisY Title="Number Of surgeries"></AxisY>
                        <Area3DStyle Enable3D="true" Rotation="20" />
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
      <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style10" Width="72px"></asp:Label>
      <asp:Button ID="Button2" runat="server" Text="Get  Sur in that Hos" CssClass="auto-style9" OnClick="Button2_Click" />


       <div id="content">
 <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Doctors in a hospital
  </div>
  <div class="card-body">
      <br />
      <br />
      <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style4" >
          
      </asp:DropDownList>
     
      <br />
      <br />
      <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
      <asp:Button ID="Button3" runat="server" Text="Get  Drs in that Hos" CssClass="auto-style9" OnClick="Button3_Click" />
     </div>
       </div>
    </form>
    
</body>
</html>
