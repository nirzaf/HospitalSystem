using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CellsAtWork
{
    public partial class Patient : System.Web.UI.Page
    {
        Controller c;
        GridView gridview;
        string id = login.id;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = new Controller();

            if (id == null || id == "-1")
            {
                Response.Redirect("login.aspx");
            }

            PatientName.InnerHtml = c.GetPatientName(id);
             gridview = new GridView();
            UpdateCardInfo();
        }
        protected void UpdateCardInfo() {
            string Name = "Name: ";
            string Email = "Email: ";
            string Phone = "Phone: ";
            string Gender = "Gender: ";
            string BirthDate = "BirthDate: ";
            string Address = "Address: ";
            string BloodType = "BloodType: ";
            Patientnm.InnerHtml = Name+c.GetPatientName(id);
            PatientEmail.InnerHtml = Email + c.GetPatientEmail(id);
            PatientGender.InnerHtml = Gender + c.GetPatientGender(id);
            PatientPhone.InnerHtml = Phone + c.GetPatientPhone(id);
            PatientAddress.InnerHtml = Address + c.GetPatientAddress(id);
            PatientBD.InnerHtml = BirthDate + c.GetPatientBirth(id);
            PatientBloodtYPE.InnerHtml = BloodType + c.GetPatientBlood(id);
            GridView1.DataSource = c.GetPatientDiagnosis(id);
            GridView1.DataBind();
            GridView2.DataSource = c.GetPatientAppointments(id);
            GridView2.DataBind();
            gridview.DataSource=c.GetPatientAppointmentsAll(id);
            gridview.DataBind();


        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           

        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int row = GridView2.SelectedIndex;
            if (row >= 0)
            {
                string drid = gridview.Rows[row].Cells[0].Text;
                string pid = gridview.Rows[row].Cells[1].Text;
                string date = gridview.Rows[row].Cells[4].Text;
                c.deleteAppointment(drid, pid, date);
                GridView2.DataSource = c.GetPatientAppointments(id);
                GridView2.DataBind();
            }
        }
    }
    
}