<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CellsAtWork.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="vendor/font-awesome-4.7/css/font-awesome.min.css"/>

    <!-- CSS Files -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/signup.css" rel="stylesheet"/>

</head>
<body>
<div runat="server">
    <!--   Big container   -->
    <div class="container">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="wizard-container">
                <div class="card wizard-card" data-color="blue" id="wizard">
                    <div class="wizard-header">
                        <h3 class="wizard-title">
                            Sign Up
                        </h3>
                    </div>
                    <form runat="server" class="tab-content">
                        <div class="form-group label-floating">
                            <label class="control-label">National ID</label>
                            <asp:TextBox runat="server" ID="national_id" CssClass="form-control" title="Please Enter you 14 digit National ID"
                                   minlength="14" maxlength="14"/>
                            <label id="national_id_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Username</label>
                            <asp:TextBox runat="server" ID="username" CssClass="form-control" maxlength="50" />
                            <label id="username_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">First Name</label>
                            <asp:TextBox runat="server" ID="first_name" CssClass="form-control" maxlength="50" />
                            <label id="first_name_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Last Name</label>
                            <asp:TextBox runat="server" ID="last_name" CssClass="form-control" maxlength="50"/>
                            <label id="last_name_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Password</label>
                            <asp:TextBox runat="server" ID="password" CssClass="form-control" type="password" minlength="8" maxlength="100"/>
                            <label id="password_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Repeat Password</label>
                            <asp:TextBox runat="server" ID="repeat_password" CssClass="form-control" type="password" minlength="8" maxlength="100" />
                            <label id="repeat_password_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Email</label>
                            <asp:TextBox runat="server" ID="email" CssClass="form-control item" type="email" maxlength="50" minlength="5"/>
                            <label id="email_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Phone Number</label>
                            <asp:TextBox runat="server" ID="phone_number" CssClass="form-control" type="tel" minlength="11" maxlength="11"/>                            <label id="phone_number_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="form-group label-floating">
                            <label class="control-label">Gender</label>
                            <asp:DropDownList id="gender" runat="server" CssClass="form-control" >
                                <asp:ListItem Selected="True"></asp:ListItem>
                                <asp:ListItem value="Male">Male</asp:ListItem>
                                <asp:ListItem value="Female">Female</asp:ListItem>
                            </asp:DropDownList>
                            <label id="gender_error" runat="server" style="color: #ff0000"></label>
                        </div>
                        <div class="wizard-footer">
                            <div class="pull-right">
                                <asp:Button CssClass="btn btn-fill btn-primary btn-wd" OnClientClick="false" OnClick="submitBasic" ID="submit_basic_info" runat="server" Text="Next" />
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>

<!--   Core JS Files   -->
<script src="java/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="java/bootstrap.min.js" type="text/javascript"></script>
<script src="java/signup.js"></script>
<script src="vendor/jquery-validate/jquery.validate.min.js"></script>

</html>