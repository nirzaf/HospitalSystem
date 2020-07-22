using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class SearchHospitals : System.Web.UI.Page
    {
        Controller c;
        string id = "123456789";
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            PatientName.InnerHtml = c.GetPatientName(id);
             DropDownList1.DataSource = c.getdepcodes();
            DropDownList1.DataValueField = "code";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("All", "0"));
            if (!IsPostBack)
            {
                Searchform.Visible = true;
                Searchresult.Visible = false;
                Phoneresult.Visible = false;
            }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {

            Searchform.Visible = false;
            Searchresult.Visible = true;
            int spec = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            GridView1.DataSource = c.GetHospitals(spec, hospitalname.Value, address.Value);
            GridView1.DataBind();
            if (GridView1.SelectedValue != null)
            {
                //get the values from the selected row (address and name for the appointment page)

            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
          
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           
            
        }
        protected void GridView1_SelectedIndexChanged(object sender, GridViewSelectEventArgs e)
        {
          

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
        {
            Searchresult.Visible = false;
            Phoneresult.Visible = true;
            GridViewRow row = GridView1.Rows[e.NewSelectedIndex];
            //get the values from the selected row (address and name for the appointment page)
            GridView2.DataSource = c.GetHospitalsPhones(row.Cells[1].Text, row.Cells[2].Text);
            GridView2.DataBind();
        }
    }
}