<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorSign.aspx.cs" enableEventValidation="false" Inherits="CellsAtWork.DoctorSign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="vendor/font-awesome-4.7/css/font-awesome.min.css"/>

    <!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/signup.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
		        <div class="col-sm-8 col-sm-offset-2">
		            <!--      Wizard container        -->
		            <div class="wizard-container">
		                <div class="card wizard-card" data-color="blue" id="wizard">
		                    <form action="" method="">
		                    	<div class="wizard-header">
		                        	<h3 class="wizard-title">
		                        		Select the Type of your Account
		                        	</h3>
		                    	</div>
								<div >
									<ul>
			                            <li><a href="PatientSignup.aspx"  >Patient</a></li>
			                            <li class="active" style="background-color:darkcyan"><a href="DoctorSign.aspx"  >Doctor</a></li>
			                            <li><a href="WorkerSign.aspx" >Hospital Worker</a></li>
			                        </ul>
								</div>

		                        <div class="tab-content">


                                    <div class="tab-pane active" id="Doctor_tab">
                                    
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Your Hospital ID</label>
                                                <asp:TextBox runat="server" ID="hospital_id" CssClass="form-control item" AutoPostBack="True" OnTextChanged="ValidateHospitalID" required="" />
                                                <label id="hospital_id_error" runat="server" style="color: #ff0000"></label>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-6">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Specialization</label>
                                                <asp:DropDownList id="department" runat="server" CssClass="form-control" >
                                                    <asp:ListItem Selected="True"></asp:ListItem>
                                                </asp:DropDownList>
                                                <label id="department_error" runat="server" style="color: #ff0000"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group label-floating">
                                        <label class="control-label">Your Last Degree</label>
                                        <asp:TextBox runat="server" ID="last_degree" CssClass="form-control item" TextMode="MultiLine" maxlength="300" required="" />
                                    </div>
                                    
                                    
                                    
<!--- Add clinic -->
  <div class="card">
  <div class="card-header" style="font-size:18px; font-weight:bold;">
    Add Clinic
  </div>
  <div class="card-body">
      
      <div class="form-group label-floating">
            <label ID="Label8" class="control-label" runat="server" >Address</label>
            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" ></asp:TextBox>
             <asp:Label ID="Label19" runat="server" Text="Label" style="color: #ff0000" ></asp:Label>
      </div>

      <div class="form-group label-floating">
            <label class="control-label" runat="server" >Fees</label>
            <asp:TextBox ID="TextBox11" TextMode="Number" CssClass="form-control" runat="server" ></asp:TextBox>
            <asp:Label ID="Label20" runat="server" Text="Label" style="color: #ff0000" ></asp:Label>
      </div>
      
        <div class="form-group label-floating">
            <label class="control-label" runat="server">Max Appointments</label>
            <asp:TextBox ID="TextBox12" TextMode="Number" CssClass="form-control" runat="server" ></asp:TextBox>
           <asp:Label ID="Label21" runat="server" Text="Label" style="color: #ff0000" ></asp:Label>
        </div>
      
        <div class="form-group label-floating">
                <label class="control-label" runat="server">Opening Hours</label>

            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
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
      <asp:Label ID="Label22" runat="server" style="color: #ff0000" Text="Label" ></asp:Label>
            
        </div>

        <div class="form-group label-floating">

            <label class="control-label">Closing Hours</label>

            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
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
            <asp:Label ID="Label23" runat="server" Text="Label" style="color: #ff0000" ></asp:Label>
        </div>

            <asp:Button ID="Button3" CssClass="btn btn-fill btn-primary btn-wd"  runat="server" Text="Add Clinic" OnClick="ValidateAddClinic"  />
           <asp:Label ID="Label17" runat="server" Text="Label" style="color: #ff0000" ></asp:Label>
  </div>
</div> 
 <!---/End of Personal Card-->  
                                    
                                    
                                    

								</div>
								<div class="tab-pane" id="worker_tab">
									
								</div>
							</div>

	                        <div class="wizard-footer">
	                            <div class="pull-right">
                                    <asp:Button CssClass="btn btn-fill btn-primary btn-wd" OnClientClick="false" OnClick="Button1_OnClick" ID="Button1" runat="server" Text="Submit" />
                                </div>
	                            <div class="clearfix"></div>
	                        </div>
		                </form>
		            </div>
		        </div> <!-- wizard container -->
		    </div>
	    </div> <!--  big container -->

    </form>
<!--   Core JS Files   -->
<script src="java/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="java/bootstrap.min.js" type="text/javascript"></script>
<script src="java/signup.js"></script>
<script src="vendor/jquery-validate/jquery.validate.min.js"></script>
</body>




</html>
