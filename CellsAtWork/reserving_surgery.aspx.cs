using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class reserving_surgery : System.Web.UI.Page
    {   
        Controller c;
        public static string w_id = "123456789";
        public static string p_id;
        public static string dr_id;
        public static string s_date;
        public static string s_type;
        public static int s_cost;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            p_id = TextBox1.Text;
            dr_id = TextBox2.Text;
            s_date = TextBox3.Text;
            s_type = TextBox4.Text;
            s_cost =Convert.ToInt32(TextBox5.Text);
            c.Reserve_Surgery(p_id, w_id, dr_id, s_date, s_type, s_cost);

        }
    }
}