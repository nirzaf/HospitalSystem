using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class Adding_Room : System.Web.UI.Page
    {
        Controller c;
        public static int r_num ;
        public static int r_cost ;
        public static string r_floor;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            r_num = Convert.ToInt32(TextBox1.Text);
            r_cost = Convert.ToInt32(TextBox2.Text);
            r_floor = TextBox3.Text;
            c.Add_Room(r_num, r_cost, r_floor,reserving_leaving.w_id);
        }
    }
}