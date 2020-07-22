<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CellsAtWork.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cells At Work</title>
    <!---bootstrap-css-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!---wow-->
    <link rel="stylesheet" href="css/animate.css" />
    <!---font-awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"/>
    <!--google font-->
    <link href="https://fonts.googleapis.com/css?family=Baloo+Bhai|Merriweather+Sans" rel="stylesheet"/>

    <!---my css-->
    <link rel="stylesheet" href="style.css" />
  
  
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-default navbar-fixed-top" id="h" >
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand"  href="#"><img width="50px" height="35px" src="img/caw.png"   /></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <li><a style="color:white;" href="AdminLogin.aspx">Admin</a></li>

        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a style="color:white;" href="Research.aspx">Statistics</a></li>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a style="color:white;" href="SignUp.aspx">SignUp</a></li>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a style="color:white; cursor:pointer;" href="Login.aspx">Login</a></li>

        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<!---slider-->

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        

    </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
      <div class="item active">
          <img width="100%" src="img/photo5.jpg" alt="...">
          <div style="position:absolute; top:50%;font-size:50px;" class="carousel-caption text-center  wow bounceInDown">
              Cells At<span style="font-size:70px;"> <b>Work!</b></span><br>
              <span style="color:#55efc4; ">KEEP YOUR VITALITY </span><br>
              <span style="color:#55efc4; ">-</span><span style="font-size:30px;">We Take Care Of Your Health</span><span style="color:#55efc4; ">-</span>
          </div>
      </div>
      <div class="item">
          <img width="100%" src="img/photo8.jpg" alt="...">
          <div style="position:absolute; top:50%;font-size:50px;" class="carousel-caption text-center  wow bounceInDown">
              Cells At<span style="font-size:70px;"> <b>Work!</b></span><br>
              <span style="color:#55efc4; ">Time To Check Your Health ? </span><br>
              <span style="color:#55efc4; ">-</span><span style="font-size:30px;">We Help You Make Your Appointment</span><span style="color:#55efc4; ">-</span>
          </div>
      </div>
      <div class="item">
          <img width="100%" src="img/photo7.jpg" alt="...">
          <div style="position:absolute; top:50%;font-size:50px;" class="carousel-caption text-center  wow bounceInDown">
              Cells At<span style="font-size:70px;"> <b>Work!</b></span><br>
              <span style="color:#55efc4; ">Are U A Researcher ? </span><br>
              <span style="color:#55efc4; ">-</span><span style="font-size:30px;">We Provide You with Health Statistics</span><span style="color:#55efc4; ">-</span>
          </div>
      </div>
     



  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<!---slider-->

<section id="loading">
<img src="img/caw.png" class="animated bounceOut" id="myimg" style="margin-left:10%" />

</section>


<br>
<br>
<div>
<p style="color:#91cde0; font-size:50px;" class="text-center" >Our System</p>
<br>
<p class="text-center" style="color:#dcdde1;" >___________________ <i class="far fa-heart"></i> ___________________</p> 
<br>
<p class="text-center" style="color:#636e72; font-size:18px;" >We Keep You Healthy, high professionalism in order to keep our Patients healthy concerns us because the presence and professional <br>furniture .. We support the customer with the latest modern designs.</p>

</div>


<!---Mix it up-->

 <div class="controls text-center wow fadeInLeft">
            <button  type="button" class="control controlactive" data-filter="all">All</button>
            <button type="button" class="control " data-filter=".green">Hospitals</button>
            <button type="button" class="control" data-filter=".blue">Clinics</button>
            <button type="button" class="control" data-filter=".pink">Labs</button>
            <button type="button" class="control" data-filter=".red">Staff</button>


        </div>

        <div class="container-fluid" data-ref="mixitup-container">
            <div class="item green" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-1.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div class="item red" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-2.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div  class="item green" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-3.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div class="item red" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-4.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div class="item green" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-5.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div class="item pink" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-6.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div class="item blue" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-7.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>
            <div class="item pink" data-ref="mixitup-target">
			<img width="30px" height="210px" class="col-lg-3" src="img/item-8.jpg" style=" margin-left:0; margin-right:0; padding-left:0; padding-right:0;" />
			</div>

            <div class="gap"></div>
            <div class="gap"></div>
            <div class="gap"></div>
        </div>


     <!---/Mix it up-->



<br>
<br>
<div class="wow bounceInDown">
<p style="color:#91cde0; font-size:50px;" class="text-center" >About Us</p>
<br>
<p class="text-center" style="color:#dcdde1;" >___________________ <i class="far fa-heart"></i> ___________________</p> 
<br>
<p class="text-center" style="color:#636e72; font-size:15px;" >Cells At Work , is manufacturer of fine classic and contemporary health system to the most established and innovative italian and<br> european health systems with combination of exceptional quality , unique finishes and unparalleled client services.</p>
<br>
<p class="text-center" style="color:#dcdde1;" >___________________ <i class="far fa-heart"></i> ___________________</p> 
<br>
<p class="text-center" style="color:#636e72; font-size:15px;" >our vision for Cells At Work is , to be pioneer in providing a complete health care in all health areas of residential and commercial<br> projects we are providing the highest health quality in all aspects of health and care.
</p>
<br>
<p class="text-center" style="color:#dcdde1;" >___________________ <i class="far fa-heart"></i> ___________________</p> 
<br>
<p class="text-center" style="color:#636e72; font-size:15px;" >each service produced by Cells At Work has been carefully thought out and designed with the care of an individual piece of health.</p>
<br>


</div>

<div class="divy container-fluid text-center">
<br>
<br>
<p class="text-center" style="color:white; font-size:30px;">Some Fun Facts</p>
<br>
<p class="text-center" style="color:white;" >___________________ <i class="far fa-heart"></i> ___________________</p> 
<br>
<br>
<div class="container text-center" style="position:relative;  left:20px;">
<div class="col-lg-3 text-center"><i class=" far fa-clock text-center " style="font-size:40px; color:white; "></i></div>
<div class="col-lg-3 text-center"><i class="fas fa-users text-center " style="font-size:40px; color:white;"></i></div>
<div class=" col-lg-3 text-center"><i class=" fas fa-rocket text-center " style="font-size:40px; color:white;"></i></div>
<div class=" col-lg-3 text-center"><i class="far fa-clock text-center" style="font-size:40px; color:white;" ></i></div>
<div class="col-lg-3 text-center">
<div id="shiva" style="line-height:65px;"><span class="count wow bounceInDown" style="font-size:50px; color:white;">12</span></div>
<br>
<p style="color:white; font-size:20px;">Hours of work per day</p>

</div>
<div class="col-lg-3 text-center inline" style="line-height:30px;">
<p style="font-size:15px; color:white;">more than</p>
<p id="shiva"><span class="count wow bounceInDown" style="font-size:50px; color:white;">500</span></p>

<p style="color:white; font-size:20px;">SATISFIED CLIENT</p>

</div>
<div class="col-lg-3 text-center inline" style="line-height:30px;">
<p style="font-size:15px; color:white;">more than</p>
<p id="shiva"><span class="count wow bounceInDown" style="font-size:50px; color:white;">850</span></p>

<p style="color:white; font-size:20px;">ROOMS DELIVERED</p>

</div>
<div class="col-lg-3 text-center">
<div id="shiva" style="line-height:65px;"><span class="count wow bounceInDown" style="font-size:50px; color:white;">2015</span></div>
<br>
<p style="color:white; font-size:20px;">SINCE</p>

</div>

</div>




</div>



<br>


<section id="contact" class="contact">
<div class="container">
    <div class="row mb50">

        <div class="text-center mb50 wow fadeInDown animated">
            <h2 style="color:#91cde0; font-size:50px;" id="h2-title">WHO ARE WE ?</h2>
            <br>
            <p class="text-center" style="color:#dcdde1;">___________________ <i class="far fa-heart"></i> ___________________</p>
        </div>
        <br>

        <div id="p-title" class="text-center wow rubberBand animated">
            <p id="p-title">We support the client in the course of the contract and after delivery and at any time within 24 hours .. E-mail us at any time and we will reply as soon as.</p>
        </div>
        <br>


        <!-- contact address -->
        <div class=" wow fadeInLeft animated">
           <img src="img/load.png" width="70px" height="100px" style="border-radius:50%" class="col-lg-3 animated bounceInDown" />
           <img src="img/load.png" width="100px" height="100px" style="border-radius:100px" class="col-lg-3 animated bounceInUp" />
           <img src="img/load.png" width="100px" height="100px" style="border-radius:100px" class="col-lg-3 animated bounceInDown" />
           <img src="img/load.png" width="100px" height="100px" style="border-radius:100px" class="col-lg-3 animated bounceInUp" />
           
        </div>
        </div>
        </div>
        <!-- end contact address -->
   </section>    
     
        
    </form>
 
         <!---JQ-->
        <script src="java/jquery-3.3.1.min.js"></script>

        <!---bootstrap-java --->
        <script src="java/bootstrap.min.js"></script>
        <!--wow-->
        <script src="java/wow.min.js"></script>
        <!--mixitup-->
        <script src="java/mixitup.min.js"></script>

        <!--my java-->
   <script src="java/java.js"></script>

</body>
</html>
