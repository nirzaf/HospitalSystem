using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class Worker : System.Web.UI.Page
    {
        string id = login.id;
        Controller c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();

            if (id == null || id == "-1")
            {
                Response.Redirect("login.aspx");
            }

            Workername.InnerHtml = c.GetPatientName(id);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}