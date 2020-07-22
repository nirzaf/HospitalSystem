using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class SearchClinics : System.Web.UI.Page
    {
        Controller c;
        string id =login.id;
        GridView grdvw;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();
            grdvw = new GridView();

            PatientName.InnerHtml = c.GetPatientName(id);
            DropDownList1.DataSource = c.getdepcodes();
            DropDownList1.DataValueField = "code";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select Specialization", "0"));
            Searchform.Visible = true;
            Searchresult.Visible = false;
            grid();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Searchform.Visible = false;
            Searchresult.Visible = true;
            grid();
            if (GridView1.SelectedValue != null)
            {
                //get the values from the selected row (address and name for the appointment page)
               
            }
        }
        private void grid() {
            int spec = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            GridView1.DataSource = c.GetSpecializationClinics(spec, doctorname.Value, address.Value);
            GridView1.DataBind();
            grdvw.DataSource = c.GetAllClinics(spec, doctorname.Value, address.Value);
            grdvw.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //this should be the Appointment.aspx page
         
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int row = GridView1.SelectedIndex;
            if (row >= 0)
            {
                ClinicAppointment.drid = grdvw.Rows[row].Cells[0].Text;
                Response.Redirect("ClinicAppointment.aspx");
            }
        }
    }
}