using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class Monthly_Report : System.Web.UI.Page
    {
        Controller c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            if (!IsPostBack)
            {
                int x = DateTime.Now.Year;

                for (int i = 0; i < 10; i++)
                {
                    ListItem Years = new ListItem(x.ToString(), i.ToString());
                    DropDownList1.Items.Insert(i, Years);
                    x--;
                }

               
                DropDownList2.DataSource = c.Get_Surgeries();
                DropDownList2.DataTextField = "Type";
                DropDownList2.DataValueField = "Type";
                DropDownList2.DataBind();
                initChart1();
                DropDownList3.DataSource = c.Get_Hospitals();
                DropDownList3.DataTextField = "Name";
                DropDownList3.DataValueField = "Name";
                DropDownList3.DataBind();
                initChart2();
                DropDownList4.DataSource = c.Get_Hospitals();
                DropDownList4.DataTextField = "Name";
                DropDownList4.DataValueField = "Name";
                DropDownList4.DataBind();
                UpdateInfo();
            }
        }
        void initChart1()
        {

            SqlDataReader rdr = c.Hospital_Surgeries(Convert.ToInt32(DropDownList1.SelectedItem.Text), DropDownList2.SelectedItem.Text);

            if (rdr != null)
            {

                Chart1.Visible = true;
                Label1.Text = "";
                Chart1.DataBindTable(rdr, "Name");
            }
            else
            {
                Label1.Text = "There is No Enough Data ";
                Chart1.Visible = false;
            }
        }
        void initChart2()
        {

            SqlDataReader rdr = c.Get_Surgeries( DropDownList3.SelectedItem.Text);

            if (rdr != null)
            {

                Chart2.Visible = true;
                Label2.Text = "";
                Chart2.DataBindTable(rdr, "Type");
            }
            else
            {
                Label2.Text = "There is No Enough Data ";
                Chart2.Visible = false;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        protected void UpdateInfo()
        {

            GridView1.DataSource = c.Get_Doctor_Hospital(DropDownList4.SelectedItem.Text);
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            initChart1();
            initChart2();
            UpdateInfo();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            initChart1();
            initChart2();
            UpdateInfo();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            initChart1();
            initChart2();
            UpdateInfo();
        }
    }
}