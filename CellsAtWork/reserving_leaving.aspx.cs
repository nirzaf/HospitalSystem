using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

namespace CellsAtWork
{
    public partial class reserving_leaving : System.Web.UI.Page
    {
        Controller c;
        public static string w_id = "123456789";
        public static string p_id;
        public static string s_date;
        public static string e_date;
        public static int r_num;
        public static int bloodcost;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
        }
        protected void UpdateInfo()
        {

            GridView1.DataSource = c.presenting_Rooms("empty", w_id);
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            GridView2.DataSource = c.presenting_Rooms("reserved", w_id);
            GridView2.DataSourceID = null;
            GridView2.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            r_num = Convert.ToInt32(gr.Cells[0].Text);
            Response.Redirect("reserving_leaving.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView2.SelectedRow;
            r_num = Convert.ToInt32(gr.Cells[0].Text);
            Response.Redirect("reserving_leaving.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            p_id = TextBox1.Text;
            s_date = TextBox2.Text;
            c.Reserve_A_Room(r_num, p_id, s_date, w_id);
            UpdateInfo();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            e_date = TextBox3.Text; 
          
            DataTable dt = c.Get_Sdate(r_num, w_id);
            DateTime d1 = Convert.ToDateTime(e_date);
            DateTime d2 = Convert.ToDateTime(dt.Rows[0][0].ToString());
            int diff = Convert.ToInt32((d1 - d2).TotalDays);
            DataTable b = c.GET_BAmount(r_num, w_id);
            int sum = 0;
            for (int i= 0;i < b.Columns.Count;i++)
            {
                
                DateTime d0= Convert.ToDateTime(b.Rows[i][0].ToString());
                d1 = Convert.ToDateTime(e_date);
                d2 = Convert.ToDateTime(dt.Rows[0][0].ToString());
              int diff1 = Convert.ToInt32((d2 - d0).TotalDays);
                int diff2= Convert.ToInt32((d1 - d0).TotalDays);
                if (diff2 > 0 && diff1 < 0)
                {
                    sum += Convert.ToInt32(b.Rows[i][1]);
                }

            }
            c.Checking_Out(r_num, e_date, w_id,sum,diff);
            UpdateInfo();
        }
    }
}