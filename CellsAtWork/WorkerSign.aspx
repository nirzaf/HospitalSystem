<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorkerSign.aspx.cs" enableEventValidation="false" Inherits="CellsAtWork.WorkerSign" %>

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
			                            <li ><a href="PatientSignup.aspx"  >Patient</a></li>
			                            <li><a href="DoctorSign.aspx" >Doctor</a></li>
			                            <li class="active" style="background-color: darkcyan;"><a href="WorkerSign.aspx" >Hospital Worker</a></li>
			                        </ul>
								</div>
                                
                                

                                <div class="form-group label-floating">
                                    <label class="control-label">Your Hospital ID</label>
                                    <asp:TextBox runat="server" ID="hospital_id" CssClass="form-control item" AutoPostBack="True" OnTextChanged="ValidateHospitalID" required="" />
                                    <label id="hospital_id_error" runat="server" style="color: #ff0000"></label>
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
