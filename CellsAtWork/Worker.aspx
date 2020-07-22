<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Worker.aspx.cs" Inherits="CellsAtWork.Worker" %>


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
                <h3 id="Workername" runat="server"></h3>
                <strong id="PnameClosed" runat="server"></strong>
            </div>

            <ul id="ListSidebar" class="list-unstyled components">
                <li class="active" id="homepage" >
                    <a href="Worker.aspx"  aria-expanded="false" >
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

               <!--Search Content-->
 <div id="SearchClinics" class="animate bounceInDown content">
 <!---Personal Card-->
 <div style="width:100%;height:100%" class="page-wrapper bg-img-2 p-t-165 p-b-120">
        <div class="wrapper wrapper--w1226">
            <div style="width:100%;height:620px; opacity:.97;" id="searchcard" class="card card-5">
                <!--Search form-->
                <div id="Workerpages" runat="server" style="margin-left:160px;margin-top:70px;" class="card-body">
               <div class="input-group" style="display:inline; margin:60px;">
                    <button class="animated bounceInDown" style=" display: inline-block;
                                    width: 150px;
                                    height:150px;
                                   
                                    line-height: 60px;
                                    font-family: inherit;
                                    background-color:darkcyan;
                                    -webkit-border-radius: 10px;
                                    -moz-border-radius: 10px;
                                    border-radius: 150px;
                                    text-transform: uppercase;
                                    color: #fff;
                                    font-size: 18px;
                                    font-weight: 700;
                                    -webkit-transition: all 0.4s ease;
                                    -o-transition: all 0.4s ease;
                                    -moz-transition: all 0.4s ease;
                                    transition: all 0.4s ease;
                                    margin-top: 37px;"><a href="reserving_leaving.aspx">Reserve Room</a></button>
                    </div>
                    <div class="input-group" style="display:inline; margin:60px;">
                    <button class="animated bounceInDown" style=" display: inline-block;
                                    width: 150px;
                                    height:150px;
                                   
                                    line-height: 60px;
                                    font-family: inherit;
                                    background-color:darkcyan;
                                    -webkit-border-radius: 10px;
                                    -moz-border-radius: 10px;
                                    border-radius: 150px;
                                    text-transform: uppercase;
                                    color: #fff;
                                    font-size: 18px;
                                    font-weight: 700;
                                    -webkit-transition: all 0.4s ease;
                                    -o-transition: all 0.4s ease;
                                    -moz-transition: all 0.4s ease;
                                    transition: all 0.4s ease;
                                    margin-top: 37px;"><a href="Adding_Room.aspx">Add Room</a></button>
                    </div>
                       <div class="input-group" style="display:inline; margin:60px;">
                    <button class="animated bounceInUp" style=" display: inline-block;
                                    width: 150px;
                                    height:150px;
                                    line-height: 60px;
                                    
                                    font-family: inherit;
                                    background-color:darkcyan;
                                    -webkit-border-radius: 10px;
                                    -moz-border-radius: 10px;
                                    border-radius: 150px;
                                    text-transform: uppercase;
                                    color: #fff;
                                    font-size: 18px;
                                    font-weight: 700;
                                    -webkit-transition: all 0.4s ease;
                                    -o-transition: all 0.4s ease;
                                    -moz-transition: all 0.4s ease;
                                    transition: all 0.4s ease;
                                    margin-top: 37px;"><a href ="reserving_surgery.aspx">Reserve Surgery</a></button>
                    </div>
                       <div class="input-group" style="display:inline; margin:60px;">
                    <button class="animated bounceInDown" style=" display: inline-block;
                                    width: 150px;
                                    height:150px;
                                    line-height: 60px;
                                    
                                    font-family: inherit;
                                    background-color:darkcyan;
                                    -webkit-border-radius: 10px;
                                    -moz-border-radius: 10px;
                                    border-radius: 150px;
                                    text-transform: uppercase;
                                    color: #fff;
                                    font-size: 18px;
                                    font-weight: 700;
                                    -webkit-transition: all 0.4s ease;
                                    -o-transition: all 0.4s ease;
                                    -moz-transition: all 0.4s ease;
                                    transition: all 0.4s ease;
                                    margin-top: 37px;"><a href="Patient.aspx">Generate Bill</a></button>
                    </div>
                </div>
                <!--End of search form-->
                <!--search result-->
                
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
