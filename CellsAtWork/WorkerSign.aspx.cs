using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class WorkerSign : System.Web.UI.Page
    {
        Controller controller = new Controller();
        private bool valid_hospital = false;

        private string user_id = SignUp.user_id;

        protected void Page_Load(object sender, EventArgs e)
        {

           

        }


        protected void Button1_OnClick(object sender, EventArgs e)
        {
            int H_ID = Convert.ToInt32(hospital_id.Text);
            controller.CreateWorkerAccount(user_id, H_ID);

            Response.Redirect("Home.aspx");
        }

        protected void ValidateHospitalID(object sender, EventArgs e)
        {
            int H_ID = Convert.ToInt32(hospital_id.Text);
            if (controller.IsHospitalExists(H_ID))
            {
                hospital_id_error.Visible = false;
                valid_hospital = true;
            }
            else
            {
                hospital_id_error.Visible = true;
                hospital_id_error.InnerText = "Please Enter a valid Hospital ID";
            }
        }
    }
}