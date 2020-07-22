using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class PatientSignup : System.Web.UI.Page
    {
        Controller controller = new Controller();

        private string user_id = SignUp.user_id;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void createPatient(object sender, EventArgs e)
        {

            controller.CreatePatientAccount(user_id, birthdate.Text,
                street_no + " " + street_name + " " + district + " " + governorates.SelectedValue, blood_group.Value);
            Response.Redirect("Home.aspx");
        }
    }
}