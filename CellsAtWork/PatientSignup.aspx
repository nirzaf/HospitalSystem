<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientSignup.aspx.cs" enableEventValidation="false" Inherits="CellsAtWork.PatientSignup" %>

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
			                            <li class="active" style="background-color: darkcyan;"><a href="PatientSignup.aspx"  >Patient</a></li>
			                            <li><a href="DoctorSign.aspx" >Doctor</a></li>
			                            <li><a href="WorkerSign.aspx" >Hospital Worker</a></li>
			                        </ul>
								</div>

		                        <div class="tab-content">
		                            <div class="tab-pane active" id="Patient_tab" runat="server">
		                            	<div class="row">
		                                	<div class="col-sm-6">
												<div class="input-group">
													<span class="input-group-addon"></span>
													<div class="form-group label-floating">
			                                          	<label class="control-label">Birth Date</label>
                                                        <asp:TextBox name="name" ID="birthdate" class="form-control" TextMode="Date" runat="server"/>
			                                        </div>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group label-floating">
													<label class="control-label">Blood Group</label>
													
	                                        		<select id="blood_group" class="form-control" runat="server" >
														<option disabled="" selected=""></option>
	                                                	<option value="A+"> A+ </option>
	                                                	<option value="A-"> A- </option>
	                                                	<option value="B+"> B+ </option>
	                                                	<option value="B-"> B- </option>
	                                                	<option value="AB+"> AB+ </option>
	                                                	<option value="AB-"> AB- </option>
	                                                	<option value="O+"> O+ </option>
	                                                	<option value="O-"> O- </option>
		                                        	</select>
		                                    	</div>

											</div>
										</div>
										<div class="row">
		                                	<div class="col-sm-12">
												<div class="input-group">
													<label style="font-size: large; margin-top: 20px;" >Address</label style="font-size: large;" >
													<div style="border:1px #aaaaaa solid; border-radius:10px;" class="row">
														<div class="col-lg-2 col-md-3">
															<div class="form-group label-floating">
																<label class="control-label">Steet No.</label>
                                                                <asp:TextBox runat="server" ID="street_no" CssClass="form-control"/>
															</div>
														</div>
														<div class="col-lg-3 col-md-9">
															<div class="form-group label-floating">
																<label class="control-label">Street Name</label>
                                                                <asp:TextBox runat="server" id="street_name" name="name" CssClass="form-control"/>
															</div>
														</div>
														<div class="col-lg-4  col-md-6">
															<div class="form-group label-floating">
																<label class="control-label">District</label>
                                                                <asp:TextBox id ="district" runat="server" name="name" CssClass="form-control"/>
															</div>
														</div>
														
														<div class="col-lg-3 col-md-6">
															<div class="form-group label-floating">
																<label class="control-label">Governorates</label>
																<asp:DropDownList id="governorates" class="form-control" runat="server">
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
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
								</div>


							</div>

	                        <div class="wizard-footer">
	                            <div class="pull-right">
                                    <asp:Button CssClass="btn btn-fill btn-primary btn-wd" OnClientClick="false" OnClick="createPatient" ID="Button1" runat="server" Text="Submit" />
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
