using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class login : System.Web.UI.Page
    {
        Controller c;
        public static string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cred = userid.Value.ToString();
            string pass = Text1.Value.ToString();
            string type = Dropdownlist1.SelectedItem.Value.ToString();
            id = null;
            id = c.CheckLogin(cred,type,pass,id);
            if (id != "")
            {
                if (type == "patient")
                {
                    Response.Redirect("Patient.aspx");
                }
                else if (type == "doctor")
                {
                    Response.Redirect("DoctorPersonal.aspx");

                }
                else if (type == "worker")
                {
                    Response.Redirect("Worker.aspx");

                }
            }
        }
    }
}