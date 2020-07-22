<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reserving_leaving.aspx.cs" Inherits="CellsAtWork.reserving_leaving" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Reserving and Checking out</title>
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
                        <!-- FROM reserving and leaving -->
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
           
      <!---Reserving Card-->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
    Reserving a Room
  </div>
  <div class="card-body"> 

    <asp:GridView  width="624px" ID="GridView1" runat="server" HorizontalalAign="Center" BorderColor="#0099FF" BackColor="White" BorderStyle="Inset" BorderWidth="0px"  DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Roomnumber" HeaderText="Roomnumber" SortExpression="Roomnumber" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="reserve"  />
        </Columns>
      </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="present_rooms" SelectCommandType="StoredProcedure">
          <SelectParameters>
              <asp:Parameter DefaultValue="empty" Name="status" Type="String" />
              <asp:Parameter DefaultValue="123456789" Name="w_ID" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>

    </div>
 





    
<!---/End of Reserving Card-->


  <!---checking out Card-->
     <br/>
      
      
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   Check out
  </div>
       <div class="card-body">
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center" Width="400px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
               <Columns>
                   <asp:BoundField DataField="Roomnumber" HeaderText="Roomnumber" SortExpression="Roomnumber" />
                   <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                   <asp:ButtonField ButtonType="Button" CommandName="Select" Text="check out" />
               </Columns>
           </asp:GridView>


                     
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="present_rooms" SelectCommandType="StoredProcedure">
               <SelectParameters>
                   <asp:Parameter DefaultValue="reserved" Name="status" Type="String" />
                   <asp:Parameter DefaultValue="123456789" Name="w_ID" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>


           </div>
  
    
 <!---/End of checking out Card--> 
      
     <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   reserving info
  </div>
<div class="card-body">
    <asp:Label ID="Label1" runat="server" Text="P_ID:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
     <asp:Label ID="Label2" runat="server" Text="start date:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="reserve" OnClick="Button1_Click" />
    </div>
        

        <!--checking out info>-->
           <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;  background-color:lightcyan;">
   checking_out info
  </div>
<div class="card-body">
    <asp:Label ID="Label3" runat="server" Text="end date:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
     <asp:Label ID="Label4" runat="server" Text="blood cost:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="check out" OnClick="Button2_Click" />
    </div>
          
         
            <!--end of  checking out info>-->
        <!--</div>
        </div>-->
    </form>
</body>
</html>
<a href="DoctorPersonal.aspx">DoctorPersonal.aspx</