<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Research.aspx.cs" Inherits="CellsAtWork.Research" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

  <head>

  <title>Cells At Work</title>
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

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
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
                    <a href="Home.aspx"  aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
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
    Statistics Yearly
  </div>
  <div class="card-body">
      <br />
      <br />
      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style4" ></asp:DropDownList>
      <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style7">
          <asp:ListItem Value="0">Alexandria</asp:ListItem>
          <asp:ListItem Value="1">Aswan</asp:ListItem>
          <asp:ListItem Value="2">Asyut</asp:ListItem>
           <asp:ListItem Value="3">Beheira</asp:ListItem>
          <asp:ListItem Value="4">Beni Suef</asp:ListItem>
          <asp:ListItem Value="5">Cairo</asp:ListItem>
           <asp:ListItem Value="6">Dakahlia</asp:ListItem>
          <asp:ListItem Value="7">Damietta</asp:ListItem>
          <asp:ListItem Value="8">Faiyum</asp:ListItem>
           <asp:ListItem Value="9">Gharbia</asp:ListItem>
          <asp:ListItem Value="10">Giza</asp:ListItem>
          <asp:ListItem Value="11">Ismailia</asp:ListItem>
           <asp:ListItem Value="12">Kafr El Sheikh</asp:ListItem>
          <asp:ListItem Value="13">Luxor</asp:ListItem>
          <asp:ListItem Value="14">Matruh</asp:ListItem>
           <asp:ListItem Value="15">Minya</asp:ListItem>
          <asp:ListItem Value="16">Monufia</asp:ListItem>
          <asp:ListItem Value="17">New Valley</asp:ListItem>
          <asp:ListItem Value="18">North Sinai</asp:ListItem>
          <asp:ListItem Value="19">Port Said</asp:ListItem>
          <asp:ListItem Value="20">Qalyubia</asp:ListItem>
          <asp:ListItem Value="21">Qena</asp:ListItem>
          <asp:ListItem Value="22">Red Sea</asp:ListItem>
          <asp:ListItem Value="23">Sharqia</asp:ListItem>
          <asp:ListItem Value="24">Sohag</asp:ListItem>
          <asp:ListItem Value="25">South Sinai</asp:ListItem>
          <asp:ListItem Value="26">Suez</asp:ListItem>
      </asp:DropDownList>
      <br />
      <br />

            <asp:Chart ID="Chart1" runat="server" CssClass="auto-style1" style="margin-left: 140px">
                <Series>
                    <asp:Series Name="Series1" ChartArea="ChartArea1" YValuesPerPoint="2"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX Title="Illness">

                        </AxisX>
                        <AxisY Title="Number Of Cases"></AxisY>
                        <Area3DStyle Enable3D="true" Rotation="20" />
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        <div style="display:inline;float:left;margin-left:70px;">
  <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style10" ></asp:Label>
            <br/>

        </div>
              <asp:Chart ID="Chart2" runat="server" CssClass="auto-style1" style="margin-left: 0px">
                <Series>
                    <asp:Series Name="Series2" ChartArea="ChartArea2" YValuesPerPoint="2"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea2">
                        <AxisX Title="Illness">

                        </AxisX>
                        <AxisY Title="Number Of Cases"></AxisY>
                        <Area3DStyle Enable3D="true" Rotation="20" />
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
         <div style="display:inline;float:right;margin-right:350px;">
            <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style6"></asp:Label>
</div>
           <br />

              <asp:Button ID="Button1" runat="server" Text="Illnesses in this Year" CssClass="auto-style9" OnClick="Button1_Click" />
      <asp:Button ID="Button3" runat="server" Text="In this Governorate" CssClass="auto-style8" OnClick="Button3_Click" />
     

       
      <br />
      <br />
    </div>
</div> 
 <!---/End of Personal Card-->  
            
     <br />
         
      <!---Personal Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    MAlES VS FEMALES
  </div>
  <div class="card-body">
      <br />
      <br />
      <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style2" ></asp:DropDownList>
      <br />
      <br />
            <asp:Chart ID="Chart3" runat="server" CssClass="auto-style1" style="margin-left: 380px">
                <Series>
                    <asp:Series Name="Series3" XValueMember="Gender" YValueMembers="NumberOfCases" ChartArea="ChartArea3" ChartType="Pie"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea3">
                        
                        <Area3DStyle Enable3D="true" Rotation="20" />
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
             
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style3"></asp:Label>
            
            <br />
           <br />
      <asp:Button ID="Button2" runat="server" Text="MaleVsFemale" CssClass="auto-style2" OnClick="Button2_Click" style="height: 35px" />
      <br />
      <br />
    </div>
</div> 
 <!---/End of Personal Card-->  
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

