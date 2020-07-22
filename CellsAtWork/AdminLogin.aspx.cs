using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        Controller controller = new Controller();
        public static int admin_id = -1;

        protected void loginAsAdmin(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(userid.Value);
            if (controller.IsAvailableAdmin(id))
            {
                admin_id = id;
                Response.Redirect("AdminViewe.aspx");
            }

        }

        protected void backToMain(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}