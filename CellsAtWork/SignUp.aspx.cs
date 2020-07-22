using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace CellsAtWork
{
    public partial class SignUp : System.Web.UI.Page
    {

        Controller controller = new Controller();
        private bool valid_national_id = false ;
        private bool valid_first_name = false ;
        private bool valid_last_name = false ;
        private bool valid_username = false ;
        private bool valid_password = false ;
        private bool valid_repeat_password = false ;
        private bool valid_email = false ;
        private bool valid_phone_number = false ;
        private bool valid_gender = false ;

        public static string user_id;


        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submitBasic(object sender, EventArgs e)
        {

            ValidateID(null, null);
            ValidateFirstName(null, null);
            ValidateLastName(null, null);
            ValidateUsername(null, null);
            ValidatePassword(null, null);
            ValidateRepeatedPassword(null, null);
            ValidateEmail(null, null);
            ValidatePhoneNumber(null, null);
            ValidateGender(null, null);


            if (   valid_national_id
                   && valid_first_name
                   && valid_last_name
                   && valid_username
                   && valid_password
                   && valid_repeat_password
                   && valid_email
                   && valid_phone_number
                   && valid_gender)
            {
                user_id = national_id.Text;
                string hashedPassword = Encoding.ASCII.GetString( new SHA256CryptoServiceProvider().ComputeHash( Encoding.ASCII.GetBytes(password.Text)));
                string result = controller.CreateAccount( user_id , username.Text , hashedPassword , first_name.Text ,
                last_name.Text, email.Text , phone_number.Text , gender.SelectedValue);

                Response.Redirect("PatientSignup.aspx");
            }

        }


        protected void ValidateID(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^[1-9]\d{13,13}$");
            if (!regex.IsMatch(national_id.Text))
            {
                national_id_error.Visible = true;
                national_id_error.InnerText = "Please enter a valid 14 digit national ID";
            }
            else if (!controller.IsAvailableID(national_id.Text))
            {
                national_id_error.Visible = true;
                national_id_error.InnerText = "This ID is already taken";
            }
            else
            {
                national_id_error.Visible = false;
                valid_national_id = true;
            }
        }

        protected void ValidatePassword(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#$%&? ]).*$");
            if (!regex.IsMatch(password.Text))
            {
                password_error.Visible = true;
                password_error.InnerText =
                    "Password is at least 8 characters containing 1 letter , 1 digit and 1 special character (!#$%&?)";
            }
            else
            {
                password_error.Visible = false;
                valid_password = true;
            }
        }

        protected void ValidateRepeatedPassword(object sender, EventArgs e)
        {
            if (password.Text != repeat_password.Text)
            {
                repeat_password_error.Visible = true;
                repeat_password_error.InnerText = "Password Mismatch";
            }
            else
            {
                repeat_password_error.Visible = false;
                valid_repeat_password = true;
            }

        }

        protected void ValidateUsername(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^.*(?=.*[@]).*$");
            if (regex.IsMatch(username.Text) || username.Text.Length < 8)
            {
                username_error.Visible = true;
                username_error.InnerText = "Username is at least 8 characters and Can Not have @ symbol";
            }
            else if (!controller.IsAvailableUsername(username.Text))
            {
                username_error.Visible = true;
                username_error.InnerText = "Username is already taken";
            }
            else
            {
                username_error.Visible = false;
                valid_username = true;
            }
        }


        protected void ValidateFirstName(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^([A-Za-z])+$");
            if (!regex.IsMatch(first_name.Text))
            {
                first_name_error.Visible = true;
                first_name_error.InnerText = "Please enter a valid English name";
            }
            else
            {
                first_name_error.Visible = false;
                valid_first_name = true;
            }
        }

        protected void ValidateLastName(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^([A-Za-z])+$");
            if (!regex.IsMatch(last_name.Text))
            {
                last_name_error.Visible = true;
                last_name_error.InnerText = "Please enter a valid English name";
            }
            else
            {
                last_name_error.Visible = false;
                valid_last_name = true;
            }
        }

        protected void ValidateEmail(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");
            if (!regex.IsMatch(email.Text) || email.Text.Length > 50 )
            {
                email_error.Visible = true;
                email_error.InnerText = "Please enter a valid Email address";
            }
            else if (!controller.IsAvailableEmail(email.Text))
            {
                email_error.Visible = true;
                email_error.InnerText = "This email is already taken";
            }
            else
            {
                email_error.Visible = false;
                valid_email = true;
            }

        }

        protected void ValidatePhoneNumber(object sender, EventArgs e)
        {
            Regex regex = new Regex(@"^[0]{1}\d{10,10}$");
            if (!regex.IsMatch(phone_number.Text))
            {
                phone_number_error.Visible = true;
                phone_number_error.InnerText = "Please enter a valid mobile phone number";
            }
            else if (!controller.IsAvailablePhoneNumber(phone_number.Text))
            {
                phone_number_error.Visible = true;
                phone_number_error.InnerText = "This phone number is already taken";
            }
            else
            {
                phone_number_error.Visible = false;
                valid_phone_number = true;
            }

        }


        protected void ValidateGender(object sender, EventArgs e)
        {
            if (gender.SelectedValue.Length == 0)
            {
                gender_error.Visible = true;
                gender_error.InnerText = "Please select your gender";
            }
            else
            {
                gender_error.Visible = false;
                valid_gender = true;
            }

        }
    }
}