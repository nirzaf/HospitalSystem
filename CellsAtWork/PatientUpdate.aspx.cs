using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class PatientUpdate : System.Web.UI.Page
    {
        string id = login.id;
        Controller c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            PatientName.InnerHtml = c.GetPatientName(id);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string droptext;
            int dropvalue =Convert.ToInt32( DropDownList3.SelectedItem.Value);
            if (dropvalue == 0)
                droptext = null;
            else
                droptext = DropDownList3.SelectedItem.Text;
            c.UpdatePatientInfo(TextBox1.Text,TextBox2.Text,droptext,id);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            c.UpdatePatientAccount(TextBox10.Text, TextBox11.Text, TextBox12.Text, id);
        }
    }
}