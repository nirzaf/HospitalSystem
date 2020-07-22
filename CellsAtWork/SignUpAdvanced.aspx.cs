using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class SignUpAdvanced : System.Web.UI.Page
    {

        Controller controller = new Controller();
        private bool valid_hospital = false;

        private string user_id = SignUp.user_id;

        protected void Page_Load(object sender, EventArgs e)
        {

            Label19.Text = "";
            Label20.Text = "";
            Label21.Text = "";
            Label22.Text = "";
            Label23.Text = "";
            Label17.Text = "";
            
        }



        protected void Button1_OnClick(object sender, EventArgs e)
        {

            ValidateAddClinic(null, null);
            int H_ID = Convert.ToInt32(hospital_id.Text);
            int dep_id = Convert.ToInt32(department.SelectedValue);

            controller.CreateDoctorAccount(user_id, dep_id, last_degree.Text);

            controller.SetDoctorWorksAtHospital(user_id, H_ID, dep_id);

        }


        protected void ValidateAddClinic(object sender, EventArgs e)
        {
            if (TextBox11.Text == "")
            {
                Label19.Text = "You must enter this field";
                return;
            }

            int valid = Convert.ToInt32(TextBox11.Text);
            if (valid < 0)
            {
                Label20.Visible = true;
                Label20.Text = "invalid field";
                return;
            }

            if (TextBox10.Text == "")
            {
                Label20.Visible = true;
                Label20.Text = "You must enter this field";
                return;
            }

            if (TextBox12.Text == "")
            {
                Label21.Visible = true;
                Label21.Text = "You must enter this field";
                return;
            }

            valid = Convert.ToInt32(TextBox12.Text);
            if (valid < 0)
            {
                Label21.Visible = true;
                Label21.Text = "invalid field";
                return;
            }

            if (DropDownList4.SelectedValue == "48")
            {
                Label22.Visible = true;
                Label22.Text = "You must enter this field";
                return;
            }

            if (DropDownList5.SelectedValue == "48")
            {
                Label23.Visible = true;
                Label23.Text = "You must enter this field";
                return;
            }

            string st1 = DropDownList4.SelectedItem.Text;
            string st2 = DropDownList5.SelectedItem.Text;
            st1 = st1.Substring(0, 2);
            st2 = st2.Substring(0, 2);
            int t1 = Convert.ToInt32(st1);
            int t2 = Convert.ToInt32(st2);

            if ((t1 - t2 <= 10 && t1 - t2 > 0) || (t2 - t1 < 0 && t2 - t1 >= -10))
            {
                Label23.Visible = true;
                Label23.Text = "the hours values are not logical check the again";
                return;
            }

            int x = controller.AddClinic(user_id, Convert.ToInt32(TextBox11.Text), TextBox10.Text, Convert.ToInt32(TextBox12.Text),
                DropDownList4.SelectedItem.Text, DropDownList5.SelectedItem.Text);
            if (x == 0)
            {
                Label17.Visible = true;
                Label17.Text = "there was an error during addition";
                return;
            }
        }


        protected void ValidateHospitalID(object sender, EventArgs e)
        {
            int H_ID = Convert.ToInt32(hospital_id.Text);
            if (controller.IsHospitalExists(H_ID))
            {
                hospital_id_error.Visible = false;
                valid_hospital = true;
                department.DataTextField = "name";
                department.DataValueField = "code";
                department.Items.Clear();
                department.DataSource = controller.GetHospitalDepartments(H_ID);
                department.DataBind();
            }
            else
            {
                department.Items.Clear();
                hospital_id_error.Visible = true;
                hospital_id_error.InnerText = "Please Enter a valid Hospital ID";
            }
        }

    
    }
}