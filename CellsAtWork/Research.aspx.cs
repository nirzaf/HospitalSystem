using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace CellsAtWork
{
    public partial class Research : System.Web.UI.Page
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
                initChart1();
                initChart2();
                DropDownList3.DataTextField = "Illness";
                DropDownList3.DataValueField = "Illness";
                DropDownList3.DataSource = c.GetDiagnosisTbl();
                DropDownList3.DataBind();
                initpie();
            }
           
        }
        void initChart1()
        {
          
            SqlDataReader rdr = c.DiagnosisReport(Convert.ToInt32(DropDownList1.SelectedItem.Text));
           
            if (rdr != null)
            {
                
                Chart1.Visible = true;
                Label1.Text = "";
                Chart1.DataBindTable(rdr, "illness");
            }
            else
            {
                Label1.Text = "There is No Enough Data ";
             
                Chart1.Visible = false;
            }
        }
        void initChart2()
        {

            SqlDataReader rdr = c.DiagnosisPerCity(Convert.ToInt32(DropDownList1.SelectedItem.Text),DropDownList2.SelectedItem.Text);

            if (rdr != null)
            {
                Chart2.Visible = true;
                Label2.Text = "";
                Chart2.DataBindTable(rdr, "illness");
            }
            else
            {
                Label2.Text = "There is No Enough Data ";
                Chart2.Visible = false;
            }
        }
        void initpie()
        {

            SqlDataReader rdr = c.MaleFemaleReport(DropDownList3.SelectedItem.Text);
            if (rdr != null)
            {
                Chart3.DataSource = rdr;
                Chart3.Visible = true;
                Label3.Text = "";
                Chart3.DataBind();
            }
            else
            {
                Label3.Text = "There is No Enough Data ";

                Chart3.Visible = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            initChart1();
            initChart2();
            initpie();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            initChart1();
            initChart2();
            initpie();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            initChart1();
            initChart2();
            initpie();
        }
    }
}